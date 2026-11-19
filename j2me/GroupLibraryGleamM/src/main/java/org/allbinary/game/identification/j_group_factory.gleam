// Generated Code Do Not Modify
// package org.allbinary.game.identification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GroupFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "NULL_GROUP_ARRAY", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GroupFactory", "instance", jr.new("GroupFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GroupFactory", "instance")
}

fn c1_m7__getnextgroup(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_group = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get_field(this, "index"))
        jr.incr(fn() { jr.get_field(this, "index") }, fn(jv) { jr.set_field(this, "index", jv) }, 1, True)
    l_group
}

fn c1_m8__getnextgroupbyname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        let l_group = jr.call(this, "getNextGroup_0", [])
        jr.call(l_group, "setName_1", [l_name])
    l_group
}

fn c1_m9__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_groups, l_name_array] = jargs
    let l_groups = jr.as_s(l_groups)
        let l_string_maker = jr.new("StringMaker", [])
        let l_string_util = jr.call_static("StringUtil", "getInstance_0", [])
        let l__t_e_a_m = jr.JStr("Team ")
        jr.call(jr.get_field(this, "list"), "clear_0", [])
        jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
        let l_size = jr.cell(jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", [])))
        let l_name = jr.cell(jr.JNull)
        jr.while_loop("", fn() { jr.lt(jr.get(l_size), jr.to_i(l_groups)) }, fn() {
            jr.set(l_name, jr.get_field(l_string_util, "EMPTY_STRING"))
            case jr.truth(jr.lt(jr.get(l_size), jr.alen(l_name_array))) {
                True -> {
                jr.set(l_name, jr.aget(l_name_array, jr.get(l_size)))
                Nil
            }
                False -> {
                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                jr.set(l_name, jr.call(jr.call(jr.call(l_string_maker, "append_1", [l__t_e_a_m]), "appendint_1", [jr.get(l_size)]), "toString_0", []))
                Nil
            }
            }
            jr.call(jr.get_field(this, "list"), "add_1", [jr.new("Group", [jr.get(l_name), jr.to_s(jr.add(jr.get(l_size), jr.JInt(3)))])])
            jr.incr(fn() { jr.get(l_size) }, fn(jv) { jr.set(l_size, jv) }, 1, True)
            Nil
        })
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GroupFactory",
        "org.allbinary.game.identification.GroupFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("NULL_GROUP_ARRAY", jr.JNull), #("list", jr.JNull), #("index", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getNextGroup_0", [], False, c1_m7__getnextgroup), 
            jr.Method("getNextGroupByName_1", ["String"], False, c1_m8__getnextgroupbyname), 
            jr.Method("init_2", ["short", "StringArr"], False, c1_m9__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

