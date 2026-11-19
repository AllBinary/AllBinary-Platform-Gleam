// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchFeatureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "TOUCH_ENABLED", jr.new("TouchFeature", [jr.JStr("Touch Enabled")]))
    jr.set_field(this, "SHOW_SCREEN_BUTTONS", jr.new("TouchFeature", [jr.JStr("Show")]))
    jr.set_field(this, "AUTO_HIDE_SHOW_SCREEN_BUTTONS", jr.new("TouchFeature", [jr.JStr("Auto Hide (One Level)")]))
    jr.set_field(this, "HIDE_SCREEN_BUTTONS", jr.new("TouchFeature", [jr.JStr("Hide")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TouchFeatureFactory", "instance", jr.new("TouchFeatureFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TouchFeatureFactory", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchFeatureFactory",
        "org.allbinary.game.configuration.feature.TouchFeatureFactory",
        "Object",
        [],
        False,
        [#("TOUCH_ENABLED", jr.JNull), #("SHOW_SCREEN_BUTTONS", jr.JNull), #("AUTO_HIDE_SHOW_SCREEN_BUTTONS", jr.JNull), #("HIDE_SCREEN_BUTTONS", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

