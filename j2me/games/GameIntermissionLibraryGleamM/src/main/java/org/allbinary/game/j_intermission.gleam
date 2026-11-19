// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Intermission

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "timeElapsedHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.set_field(this, "intermissionEnableListener", jr.call_static("NullIntermissionEnableListener", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__setlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_enable_listener] = jargs
        jr.set_field(this, "intermissionEnableListener", l_enable_listener)
    jr.JNull
}

fn c1_m6__gettimedelayhelper(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "timeElapsedHelper")
}

fn c1_m7__setenabled(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_enabled] = jargs
        jr.set_field(this, "enabled", l_enabled)
        case jr.truth(jr.call(this, "isEnabled_0", [])) {
            True -> {
            jr.call(jr.call(this, "getTimeDelayHelper_0", []), "setStartTimeTNT_0", [])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "intermissionEnableListener"), "notifyIntermission_1", [l_enabled])
    jr.JNull
}

fn c1_m8__isenabled(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "enabled")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Intermission",
        "org.allbinary.game.Intermission",
        "Object",
        ["IntermissionInterface"],
        False,
        [#("enabled", jr.JBool(False)), #("timeElapsedHelper", jr.JNull), #("intermissionEnableListener", jr.JNull)],
        [],
        [
            jr.Method("setListener_1", ["IntermissionEnableListenerInterface"], False, c1_m5__setlistener), 
            jr.Method("getTimeDelayHelper_0", [], False, c1_m6__gettimedelayhelper), 
            jr.Method("setEnabled_1", ["boolean"], False, c1_m7__setenabled), 
            jr.Method("isEnabled_0", [], False, c1_m8__isenabled), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

