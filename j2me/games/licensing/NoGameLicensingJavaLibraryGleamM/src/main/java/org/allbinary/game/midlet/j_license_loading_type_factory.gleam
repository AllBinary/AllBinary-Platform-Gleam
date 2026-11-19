// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LicenseLoadingTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "INITIAL_LOADING", jr.new("LicenseLoadingType", [jr.JStr("Initial Loading")]))
    jr.set_field(this, "GAME_START", jr.new("LicenseLoadingType", [jr.JStr("Game Start")]))
    jr.set_field(this, "LOGIN", jr.new("LicenseLoadingType", [jr.JStr("Login")]))
    jr.set_field(this, "OTHER", jr.new("LicenseLoadingType", [jr.JStr("Other/Usually The First Non Demo Level")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LicenseLoadingTypeFactory", "instance", jr.new("LicenseLoadingTypeFactory", []))
    jr.JNull
}

fn c1_m2__getintance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LicenseLoadingTypeFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LicenseLoadingTypeFactory",
        "org.allbinary.game.midlet.LicenseLoadingTypeFactory",
        "Object",
        [],
        False,
        [#("INITIAL_LOADING", jr.JNull), #("GAME_START", jr.JNull), #("LOGIN", jr.JNull), #("OTHER", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getIntance_0", [], True, c1_m2__getintance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

