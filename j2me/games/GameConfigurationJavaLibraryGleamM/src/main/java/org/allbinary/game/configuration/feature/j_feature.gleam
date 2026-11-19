// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Feature

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Feature", "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.call(jr.get_static("Feature", "hashtable"), "get_1", [l_name])
}

fn c1_m5__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_game_feature] = jargs
        jr.call(jr.get_static("Feature", "hashtable"), "put_2", [l_name, l_game_feature])
    jr.JNull
}

fn c1_m6__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "getName_0", [])
}

fn c1_m7__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.call_static("Feature", "add_2", [l_name, this])
        jr.call(jr.call_static("ChangedGameFeatureListener", "getInstance_0", []), "add_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Feature",
        "org.allbinary.game.configuration.feature.Feature",
        "Object",
        [],
        False,
        [#("name", jr.JNull)],
        [#("hashtable", jr.JNull)],
        [
            jr.Method("getInstance_1", ["String"], True, c1_m4__getinstance), 
            jr.Method("add_2", ["String", "Feature"], True, c1_m5__add), 
            jr.Method("toString_0", [], False, c1_m6__tostring), 
            jr.Method("getName_0", [], False, c1_m7__getname), 
            jr.Method("jinit_1", ["String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

