// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicProbabilityAIDataFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_likelyhood_integer_array = jr.new_array("L", 2, [jr.add(jr.get_static("Canvas", "KEY_NUM9"), jr.JInt(1)), jr.JInt(2)])
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "UP")), jr.JInt(0), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "UP")), jr.JInt(1), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "DOWN")), jr.JInt(0), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "DOWN")), jr.JInt(1), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(14)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "LEFT")), jr.JInt(0), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(14)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "LEFT")), jr.JInt(1), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(18)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "RIGHT")), jr.JInt(0), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(18)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "RIGHT")), jr.JInt(1), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(22)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM7")), jr.JInt(0), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(22)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM7")), jr.JInt(1), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(26)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM9")), jr.JInt(0), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(26)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM9")), jr.JInt(1), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(30)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM1")), jr.JInt(0), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(30)]))
        jr.aset(jr.aget(l_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM1")), jr.JInt(1), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(40)]))
        let l_repeat_likelyhood_integer_array = jr.new_array("L", 1, [jr.add(jr.get_static("Canvas", "KEY_NUM9"), jr.JInt(1))])
        jr.aset(l_repeat_likelyhood_integer_array, jr.get_static("Canvas", "UP"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]))
        jr.aset(l_repeat_likelyhood_integer_array, jr.get_static("Canvas", "DOWN"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]))
        jr.aset(l_repeat_likelyhood_integer_array, jr.get_static("Canvas", "LEFT"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]))
        jr.aset(l_repeat_likelyhood_integer_array, jr.get_static("Canvas", "RIGHT"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]))
        jr.aset(l_repeat_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM7"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]))
        jr.aset(l_repeat_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM9"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]))
        jr.aset(l_repeat_likelyhood_integer_array, jr.get_static("Canvas", "KEY_NUM1"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)]))
        let l_input_probability = jr.new("InputProbability", [l_likelyhood_integer_array, l_repeat_likelyhood_integer_array, jr.JInt(42), jr.get_static("NoTimeDelayHelper", "SINGLETON")])
    jr.call(l_input_probability, "toHashtable_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicProbabilityAIDataFactory",
        "org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_0", [], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

