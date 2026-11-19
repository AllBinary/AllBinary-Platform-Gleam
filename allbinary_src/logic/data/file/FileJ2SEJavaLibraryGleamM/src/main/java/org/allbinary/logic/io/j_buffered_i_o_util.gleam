// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BufferedIOUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__copy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_backup_file, l_backup_file_bak] = jargs
        let l_line = jr.cell(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
        let l_tmp_out = jr.new("BufferedWriter", [jr.new("FileWriter", [jr.call_static("AbFileNativeUtil", "get_1", [l_backup_file_bak])])])
        let l_tmp_in = jr.new("BufferedReader", [jr.new("FileReader", [jr.call_static("AbFileNativeUtil", "get_1", [l_backup_file])])])
        jr.while_loop("", fn() { jr.call(l_tmp_in, "ready_0", []) }, fn() {
            jr.set(l_line, jr.call(l_tmp_in, "readLine_0", []))
            jr.call(l_tmp_out, "write_3", [jr.get(l_line), jr.JInt(0), jr.call(jr.get(l_line), "length_0", [])])
            jr.call(l_tmp_out, "newLine_0", [])
            Nil
        })
        jr.call(l_tmp_out, "flush_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BufferedIOUtil",
        "org.allbinary.logic.io.BufferedIOUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("copy_2", ["AbFile", "AbFile"], True, c1_m1__copy), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

