// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NumberInSameGroupSequence

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("NumberInSameGroupSequence", [])
}

fn c1_jinit13(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(100)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_ONE", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(101)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_TWO", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(102)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_THREE", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(103)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(104)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(105)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_SIX", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(106)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(107)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(108)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_NINE", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(109)]))
        jr.set_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE", jr.array_of("L", [jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO"), jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_ONE"), jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_THREE"), jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR"), jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE"), jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_SIX"), jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN"), jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT"), jr.get_field(this, "NUMBER_ON_SAME_TEAM_SEQUENCE_NINE")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NumberInSameGroupSequence",
        "org.allbinary.game.ag.ai.NumberInSameGroupSequence",
        "Object",
        [],
        False,
        [#("NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_ONE", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_TWO", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_THREE", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_SIX", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE_NINE", jr.JNull), #("NUMBER_ON_SAME_TEAM_SEQUENCE", jr.JNull)],
        [],
        [
            jr.Method("getInstance_0", [], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit13)],
        c1_jfields,
        c1_jclinit,
    )
}

