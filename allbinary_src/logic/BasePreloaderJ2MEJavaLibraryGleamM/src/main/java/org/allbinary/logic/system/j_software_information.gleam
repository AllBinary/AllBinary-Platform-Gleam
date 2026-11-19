// Generated Code Do Not Modify
// package org.allbinary.logic.system
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SoftwareInformation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m6__getversion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "version")
}

fn c1_m7__toshortstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "shortName")
}

fn c1_m8__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__n_a_m_e = jr.JStr("Name: ")
        let l__v_e_r_s_i_o_n = jr.JStr("Version: ")
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [l__n_a_m_e])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [l__v_e_r_s_i_o_n])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getVersion_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_version, l_short_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "version", l_version)
        jr.set_field(this, "shortName", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l_short_name]), "append_1", [jr.call_static("KotlinUtil", "getShortName_0", [])]), "toString_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SoftwareInformation",
        "org.allbinary.logic.system.SoftwareInformation",
        "Object",
        [],
        False,
        [#("name", jr.JNull), #("shortName", jr.JNull), #("version", jr.JNull)],
        [],
        [
            jr.Method("getName_0", [], False, c1_m5__getname), 
            jr.Method("getVersion_0", [], False, c1_m6__getversion), 
            jr.Method("toShortString_0", [], False, c1_m7__toshortstring), 
            jr.Method("toString_0", [], False, c1_m8__tostring), 
            jr.Method("jinit_3", ["String", "String", "String"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

