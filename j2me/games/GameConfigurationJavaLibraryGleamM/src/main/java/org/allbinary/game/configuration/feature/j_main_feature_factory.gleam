// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MainFeatureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "FULL_SCREEN", jr.new("Feature", [jr.JStr("Full Screen")]))
    jr.set_field(this, "TITLE_BAR", jr.new("Feature", [jr.JStr("Title Bar")]))
    jr.set_field(this, "STATIC", jr.new("Feature", [jr.JStr("Static Dependent Feature")]))
    jr.set_field(this, "LOAD_ONDEMAND", jr.new("Feature", [jr.JStr("Load OnDemand")]))
    jr.set_field(this, "LOAD_ALL", jr.new("Feature", [jr.JStr("Load All")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MainFeatureFactory", "instance", jr.new("MainFeatureFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MainFeatureFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MainFeatureFactory",
        "org.allbinary.game.configuration.feature.MainFeatureFactory",
        "Object",
        [],
        False,
        [#("FULL_SCREEN", jr.JNull), #("TITLE_BAR", jr.JNull), #("STATIC", jr.JNull), #("LOAD_ONDEMAND", jr.JNull), #("LOAD_ALL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

