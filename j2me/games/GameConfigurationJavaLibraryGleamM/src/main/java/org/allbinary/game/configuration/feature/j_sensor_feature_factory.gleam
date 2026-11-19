// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SensorFeatureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NO_ORIENTATION", jr.new("SensorFeature", [jr.JStr("No Orientation")]))
    jr.set_field(this, "ORIENTATION_SENSORS", jr.new("SensorFeature", [jr.JStr("Orientation Sensors")]))
    jr.set_field(this, "SIMULATED_ORIENTATION_SENSORS", jr.new("SensorFeature", [jr.JStr("Simulated Orientation Sensors")]))
    jr.set_field(this, "YAW", jr.new("SensorFeature", [jr.JStr("Yaw")]))
    jr.set_field(this, "YAW_MINUS_RIGHT_PLUS_LEFT", jr.new("SensorFeature", [jr.JStr("Yaw -Right +Left")]))
    jr.set_field(this, "YAW_MINUS_LEFT_PLUS_RIGHT", jr.new("SensorFeature", [jr.JStr("Yaw -Left +Right ")]))
    jr.set_field(this, "PITCH", jr.new("SensorFeature", [jr.JStr("Pitch")]))
    jr.set_field(this, "ROLL", jr.new("SensorFeature", [jr.JStr("Roll")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SensorFeatureFactory", "instance", jr.new("SensorFeatureFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SensorFeatureFactory", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SensorFeatureFactory",
        "org.allbinary.game.configuration.feature.SensorFeatureFactory",
        "Object",
        [],
        False,
        [#("NO_ORIENTATION", jr.JNull), #("ORIENTATION_SENSORS", jr.JNull), #("SIMULATED_ORIENTATION_SENSORS", jr.JNull), #("YAW", jr.JNull), #("YAW_MINUS_RIGHT_PLUS_LEFT", jr.JNull), #("YAW_MINUS_LEFT_PLUS_RIGHT", jr.JNull), #("PITCH", jr.JNull), #("ROLL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

