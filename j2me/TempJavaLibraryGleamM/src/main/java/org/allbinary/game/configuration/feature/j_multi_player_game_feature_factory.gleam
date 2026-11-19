// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MultiPlayerGameFeatureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MultiPlayerGameFeatureFactory", "instance", jr.new("MultiPlayerGameFeatureFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MultiPlayerGameFeatureFactory", "instance")
}

fn c1_m4__addcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MultiPlayerGameFeatureFactory",
        "org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("addCommands_1", ["Object"], False, c1_m4__addcommands), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

