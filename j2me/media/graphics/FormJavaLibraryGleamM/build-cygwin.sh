#!/usr/bin/env bash

# Type checks the Gleam files the Gleam converter generated with gleam check (Erlang target). Every converted module
# imports only the runtime module jr (classes, methods and fields are looked up by name at run time), so a project checks
# alone: the runtime (jr.gleam, jr_ffi.erl, jr_java.erl) and this project's modules are copied flat into the src folder of
# one temporary Gleam package (Gleam module names are the file names, j + snake case of the class). Gleam prints many
# warnings (unused values and variables of the converted code); only error: lines fail the build.
# This project's sources are written to <output>/src.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Gleam sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/src" "$object_dir"
cp -R "$source_dir/." "$output_dir/src/"

package="$(mktemp -d /tmp/glXXXXXX)"
trap 'rm -rf "$package"' EXIT
mkdir -p "$package/src"
printf 'name = "jcheck"\nversion = "1.0.0"\ntarget = "erlang"\n' > "$package/gleam.toml"
find "$runtime_dir" -type f \( -name '*.gleam' -o -name '*.erl' \) -exec cp {} "$package/src/" \;
count="$(find "$source_dir" -type f -name '*.gleam' | wc -l)"
find "$source_dir" -type f -name '*.gleam' -exec cp {} "$package/src/" \;
echo "Gleam check of $artifact: $count files"

(cd "$package" && "$compiler" check) > "$object_dir/check.txt" 2>&1
status=$?
tr -d '\r' < "$object_dir/check.txt" > "$object_dir/check-lf.txt"
errors="$(grep -c '^error' "$object_dir/check-lf.txt")"
echo "Gleam errors: $errors (exit $status)"
if [ "$errors" != "0" ] || [ "$status" != "0" ]; then
    grep -A14 '^error' "$object_dir/check-lf.txt" | head -150
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
fi
exit 0
