// Generated Code Do Not Modify
// package org.allbinary.globals
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PATH_GLOBALS

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PATH_GLOBALS", "instance", jr.new("PATH_GLOBALS", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PATH_GLOBALS", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_string_buffer = jr.new("StringMaker", [])
        let l_ab_path_data = jr.call_static("AbPathData", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("data")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_ab_path_data, "SEPARATOR")])
        jr.set_field(this, "DATA_PATH", jr.call(l_string_buffer, "toString_0", []))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "DATA_PATH")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "INIT")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_ab_path_data, "SEPARATOR")])
        jr.set_field(this, "INIT_PATH", jr.call(l_string_buffer, "toString_0", []))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "DATA_PATH")])
        jr.call(l_string_buffer, "append_1", [jr.JStr("log")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_ab_path_data, "SEPARATOR")])
        jr.set_field(this, "LOG_PATH", jr.call(l_string_buffer, "toString_0", []))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "DATA_PATH")])
        jr.call(l_string_buffer, "append_1", [jr.JStr("backup")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_ab_path_data, "SEPARATOR")])
        jr.set_field(this, "BACKUP_PATH", jr.call(l_string_buffer, "toString_0", []))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "INIT_PATH")])
        jr.call(l_string_buffer, "append_1", [jr.JStr("views")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_ab_path_data, "SEPARATOR")])
        jr.set_field(this, "VIEWS_PATH", jr.call(l_string_buffer, "toString_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PATH_GLOBALS",
        "org.allbinary.globals.PATH_GLOBALS",
        "Object",
        [],
        False,
        [#("DATA_PATH", jr.JNull), #("INIT_PATH", jr.JNull), #("VIEWS_PATH", jr.JNull), #("LOG_PATH", jr.JNull), #("BACKUP_PATH", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

