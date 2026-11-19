// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputProbability

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InputProbability", "INPUT_PROBABILITY", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(0)]))
    jr.JNull
}

fn c1_m7__getlikelyhoodintegerarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "likelyhoodIntegerArray")
}

fn c1_m8__getrepeatlikelyhoodintegerarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "repeatLikelyhoodIntegerArray")
}

fn c1_m9__getmax(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "max"))
}

fn c1_m10__gettimedelayhelper(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "timeDelayHelper")
}

fn c1_m11__tohashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_hashtable = jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", [])
        jr.call(l_hashtable, "put_2", [jr.get_static("InputProbability", "INPUT_PROBABILITY"), this])
    l_hashtable
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_likelyhood_integer_array, l_repeat_likelyhood_integer_array, l_max, l_time_delay_helper] = jargs
    let l_max = jr.as_i(l_max)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "likelyhoodIntegerArray", l_likelyhood_integer_array)
        jr.set_field(this, "repeatLikelyhoodIntegerArray", l_repeat_likelyhood_integer_array)
        jr.set_field(this, "max", jr.as_i(l_max))
        jr.set_field(this, "timeDelayHelper", l_time_delay_helper)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputProbability",
        "org.allbinary.game.ag.ai.InputProbability",
        "Object",
        [],
        False,
        [#("likelyhoodIntegerArray", jr.JNull), #("repeatLikelyhoodIntegerArray", jr.JNull), #("max", jr.JInt(0)), #("timeDelayHelper", jr.JNull)],
        [#("INPUT_PROBABILITY", jr.JNull)],
        [
            jr.Method("getLikelyhoodIntegerArray_0", [], False, c1_m7__getlikelyhoodintegerarray), 
            jr.Method("getRepeatLikelyhoodIntegerArray_0", [], False, c1_m8__getrepeatlikelyhoodintegerarray), 
            jr.Method("getMax_0", [], False, c1_m9__getmax), 
            jr.Method("getTimeDelayHelper_0", [], False, c1_m10__gettimedelayhelper), 
            jr.Method("toHashtable_0", [], False, c1_m11__tohashtable), 
            jr.Method("jinit_4", ["IntegerArrArr", "IntegerArr", "int", "TimeDelayHelper"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

