// Generated Code Do Not Modify
// package org.allbinary.android.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnalogControllerConfigurationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SCALE_FACTOR", jr.as_i(jr.get_field(jr.call_static("ScaleFactorFactory", "getInstance_0", []), "DEFAULT_SCALE_FACTOR")))
    jr.set_field(this, "SCALE_VALUE", jr.as_i(jr.get_field(jr.call_static("ScaleFactorFactory", "getInstance_0", []), "DEFAULT_SCALE_VALUE")))
    jr.set_field(this, "analogControllerConfigurationEvent", jr.new("AnalogControllerConfigurationEvent", [this]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AnalogControllerConfigurationFactory", "instance", jr.new("AnalogControllerConfigurationFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AnalogControllerConfigurationFactory", "instance")
}

fn c1_m8__isavailable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "available")
}

fn c1_m9__setavailable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_available] = jargs
        jr.set_field(this, "available", l_available)
        jr.call(jr.call_static("AnalogControllerConfigurationEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "analogControllerConfigurationEvent")])
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnalogControllerConfigurationFactory",
        "org.allbinary.android.input.motion.AnalogControllerConfigurationFactory",
        "Object",
        [],
        False,
        [#("SCALE_FACTOR", jr.JInt(0)), #("SCALE_VALUE", jr.JInt(0)), #("available", jr.JBool(False)), #("analogControllerConfigurationEvent", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isAvailable_0", [], False, c1_m8__isavailable), 
            jr.Method("setAvailable_1", ["boolean"], False, c1_m9__setavailable), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

