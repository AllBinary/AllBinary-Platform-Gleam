// Generated Code Do Not Modify
// package org.allbinary.game.identification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Group

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "string", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getgroupname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m6__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.set_field(this, "name", l_name)
        let l_group_common_factory = jr.call_static("GroupCommonFactory", "getInstance_0", [])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_group_common_factory, "GROUP_NAME_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "name")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_group_common_factory, "ID_LABEL")])
        jr.call(l_string_buffer, "appendshort_1", [jr.get_field(this, "teamId")])
        jr.set_field(this, "string", jr.call(l_string_buffer, "toString_0", []))
    jr.JNull
}

fn c1_m7__getgroupid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "teamId"))
}

fn c1_m8__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "string")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_team_name, l_team_id] = jargs
    let l_team_id = jr.as_s(l_team_id)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "teamId", jr.as_s(l_team_id))
        jr.call(this, "setName_1", [l_team_name])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Group",
        "org.allbinary.game.identification.Group",
        "Object",
        ["GroupInterface"],
        False,
        [#("name", jr.JNull), #("teamId", jr.JShort(0)), #("string", jr.JNull)],
        [],
        [
            jr.Method("getGroupName_0", [], False, c1_m5__getgroupname), 
            jr.Method("setName_1", ["String"], False, c1_m6__setname), 
            jr.Method("getGroupId_0", [], False, c1_m7__getgroupid), 
            jr.Method("toString_0", [], False, c1_m8__tostring), 
            jr.Method("jinit_2", ["String", "short"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

