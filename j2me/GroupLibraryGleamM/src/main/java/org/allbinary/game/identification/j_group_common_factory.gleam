// Generated Code Do Not Modify
// package org.allbinary.game.identification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GroupCommonFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ID", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(10)]))
    jr.set_field(this, "GROUP_NAME_LABEL", jr.JStr("Group Name: "))
    jr.set_field(this, "ID_LABEL", jr.JStr(" Id: "))
    jr.set_field(this, "ADDING_LABEL", jr.JStr("Adding: "))
    jr.set_field(this, "TO_LABEL", jr.JStr(" to: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GroupCommonFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("GroupCommonFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("GroupCommonFactory", "instance", jr.new("GroupCommonFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("GroupCommonFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GroupCommonFactory",
        "org.allbinary.game.identification.GroupCommonFactory",
        "Object",
        [],
        False,
        [#("ID", jr.JNull), #("GROUP_NAME_LABEL", jr.JNull), #("ID_LABEL", jr.JNull), #("ADDING_LABEL", jr.JNull), #("TO_LABEL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

