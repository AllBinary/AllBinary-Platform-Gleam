// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LevelLayersFinder

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "enumerationUtil", jr.call_static("EnumerationUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LevelLayersFinder", "instance", jr.new("LevelLayersFinder", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LevelLayersFinder", "instance")
}

fn c1_m4__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable] = jargs
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        let l_list = jr.new("BasicArrayListD", [])
        let l_enumeration = jr.call(l_hashtable, "keys_0", [])
        let l_layer_hashtable_can_be_null = jr.cell(jr.JNull)
        let l_integer_can_be_null = jr.cell(jr.JNull)
        let l_cached_integer_can_be_null = jr.cell(jr.JNull)
        jr.while_loop("", fn() { jr.call(jr.get_field(this, "enumerationUtil"), "hasMoreElements_1", [l_enumeration]) }, fn() {
            jr.set(l_layer_hashtable_can_be_null, jr.call(l_hashtable, "get_1", [jr.call(jr.get_field(this, "enumerationUtil"), "nextElement_1", [l_enumeration])]))
            jr.set(l_integer_can_be_null, jr.call(jr.get(l_layer_hashtable_can_be_null), "get_1", [jr.get_static("Layer", "ID")]))
            jr.set(l_cached_integer_can_be_null, jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.call(jr.get(l_integer_can_be_null), "intValue_0", [])]))
            case jr.truth(jr.not(jr.call(l_list, "contains_1", [jr.get(l_cached_integer_can_be_null)]))) {
                True -> {
                jr.call(l_list, "add_1", [jr.get(l_cached_integer_can_be_null)])
                Nil
            }
                False -> Nil
            }
            Nil
        })
    l_list
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LevelLayersFinder",
        "org.allbinary.game.layer.LevelLayersFinder",
        "Object",
        [],
        False,
        [#("enumerationUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("get_1", ["ABHashtable"], False, c1_m4__get), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

