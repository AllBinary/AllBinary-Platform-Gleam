// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputFeatureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "REMOVE_DUPLICATE_KEY_PRESSES", jr.new("InputFeature", [jr.JStr("Remove Duplicate Key Presses")]))
    jr.set_field(this, "INPUT_MAPPING", jr.new("InputFeature", [jr.JStr("Input Mapping")]))
    jr.set_field(this, "MULTI_KEY_PRESS", jr.new("InputFeature", [jr.JStr("Multi Key Press")]))
    jr.set_field(this, "SINGLE_KEY_REPEAT_PRESS", jr.new("InputFeature", [jr.JStr("Single Key Repeat Press")]))
    jr.set_field(this, "SINGLE_KEY_PRESS", jr.new("InputFeature", [jr.JStr("Single Key Press")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InputFeatureFactory", "instance", jr.new("InputFeatureFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("InputFeatureFactory", "instance")
}

fn c1_m9__issinglekeyprocessing(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            case jr.truth(case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(this, "SINGLE_KEY_REPEAT_PRESS")])) { True -> jr.JBool(True) False -> jr.call(l_features, "isFeature_1", [jr.get_field(this, "SINGLE_KEY_PRESS")]) }) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputFeatureFactory",
        "org.allbinary.game.configuration.feature.InputFeatureFactory",
        "Object",
        [],
        False,
        [#("REMOVE_DUPLICATE_KEY_PRESSES", jr.JNull), #("INPUT_MAPPING", jr.JNull), #("MULTI_KEY_PRESS", jr.JNull), #("SINGLE_KEY_REPEAT_PRESS", jr.JNull), #("SINGLE_KEY_PRESS", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isSingleKeyProcessing_0", [], False, c1_m9__issinglekeyprocessing), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

