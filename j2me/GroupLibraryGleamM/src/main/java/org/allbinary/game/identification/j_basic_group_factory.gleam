// Generated Code Do Not Modify
// package org.allbinary.game.identification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicGroupFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NAME", jr.JStr("GROUP_NAME"))
    jr.set_field(this, "NO_SUCH_GROUP", jr.JStr("No Such Group: "))
    jr.set_field(this, "GOOD", jr.new("Group", [jr.JStr("Good Guys"), jr.to_s(jr.JInt(0))]))
    jr.set_field(this, "ENEMY", jr.new("Group", [jr.JStr("Bad Guys"), jr.to_s(jr.JInt(1))]))
    jr.set_field(this, "ENEMY_ON_LEVEL", jr.new("Group", [jr.JStr("Bad Guys on Level"), jr.to_s(jr.JInt(2))]))
    jr.set_field(this, "NONE", jr.new("Group", [jr.JStr("Not On A Team"), jr.to_s(jr.JInt(3))]))
    jr.set_field(this, "GOOD_ARRAY", jr.array_of("L", [jr.get_field(this, "GOOD")]))
    jr.set_field(this, "ENEMY_ARRAY", jr.array_of("L", [jr.get_field(this, "ENEMY")]))
    jr.set_field(this, "ENEMY_ON_LEVEL_ARRAY", jr.array_of("L", [jr.get_field(this, "ENEMY"), jr.get_field(this, "ENEMY_ON_LEVEL")]))
    jr.set_field(this, "NONE_ARRAY", jr.array_of("L", [jr.get_field(this, "NONE")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicGroupFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("BasicGroupFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("BasicGroupFactory", "instance", jr.new("BasicGroupFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("BasicGroupFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicGroupFactory",
        "org.allbinary.game.identification.BasicGroupFactory",
        "Object",
        [],
        False,
        [#("NAME", jr.JNull), #("NO_SUCH_GROUP", jr.JNull), #("GOOD", jr.JNull), #("ENEMY", jr.JNull), #("ENEMY_ON_LEVEL", jr.JNull), #("NONE", jr.JNull), #("GOOD_ARRAY", jr.JNull), #("ENEMY_ARRAY", jr.JNull), #("ENEMY_ON_LEVEL_ARRAY", jr.JNull), #("NONE_ARRAY", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

