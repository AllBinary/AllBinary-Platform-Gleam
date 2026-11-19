// Generated Code Do Not Modify
// package org.allbinary.game.identification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompositeGroup

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "list"), "clear_0", [])
    jr.JNull
}

fn c1_m6__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_interface] = jargs
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        let l_group_common_factory = jr.call_static("GroupCommonFactory", "getInstance_0", [])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_group_common_factory, "ADDING_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_group_interface, "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_group_common_factory, "TO_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get_field(this, "groupInterface")])])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(l_common_strings, "ADD")])
        jr.call(jr.get_field(this, "list"), "add_1", [l_group_interface])
    jr.JNull
}

fn c1_m7__isingroup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_interface] = jargs
    jr.method(fn() {
            case jr.truth(jr.call(jr.get_field(this, "list"), "contains_1", [l_group_interface])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m8__getgroup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "groupInterface")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_group_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "groupInterface", l_group_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompositeGroup",
        "org.allbinary.game.identification.CompositeGroup",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("groupInterface", jr.JNull), #("list", jr.JNull)],
        [],
        [
            jr.Method("clear_0", [], False, c1_m5__clear), 
            jr.Method("add_1", ["Group"], False, c1_m6__add), 
            jr.Method("isInGroup_1", ["Group"], False, c1_m7__isingroup), 
            jr.Method("getGroup_0", [], False, c1_m8__getgroup), 
            jr.Method("jinit_1", ["Group"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

