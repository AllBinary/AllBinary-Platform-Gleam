// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IntPermutationVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "stringBuilder", jr.new("StringMaker", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call(jr.get_field(this, "stringBuilder"), "delete_2", [jr.JInt(0), jr.call(jr.get_field(this, "stringBuilder"), "length_0", [])])
        jr.call(this, "print_2", [jr.get_field(this, "data"), jr.get_field(this, "stringBuilder")])
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")
}

fn c1_m5__print(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_data] = jargs
        let l_string_builder = jr.new("StringMaker", [])
        jr.call(this, "print_2", [l_data, l_string_builder])
    jr.JNull
}

fn c1_m6__print(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_data, l_string_builder] = jargs
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_size = jr.as_i(jr.alen(l_data))
        {
            let l_i = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_i), l_size) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_builder, "appendint_1", [jr.aget(l_data, jr.get(l_i))])
            jr.call(l_string_builder, "append_1", [jr.get_field(l_common_seps, "SPACE")])
            Nil
        })
            Nil
        }
        jr.call(jr.get_static("System", "out"), "println_1", [jr.call(l_string_builder, "toString_0", [])])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_data] = jargs
    jr.super_init("Visitor", this, [])
    c1_jfields(this)
        jr.set_field(this, "data", l_data)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IntPermutationVisitor",
        "org.allbinary.logic.math.permutations.IntPermutationVisitor",
        "Visitor",
        [],
        False,
        [#("data", jr.JNull), #("stringBuilder", jr.JNull)],
        [],
        [
            jr.Method("visit_1", ["Object"], False, c1_m4__visit), 
            jr.Method("print_1", ["intArr"], False, c1_m5__print), 
            jr.Method("print_2", ["intArr", "StringMaker"], False, c1_m6__print), 
            jr.Method("jinit_1", ["intArr"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

