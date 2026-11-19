// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OrientationData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ORIENTATION_SENSOR_INPUT", jr.JStr("Orientation Sensor Input"))
    jr.set_field(this, "ORIENTATION_TYPE", jr.JStr("Orientation Type"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OrientationData", "SINGLETON", jr.new("OrientationData", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OrientationData", "SINGLETON")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OrientationData",
        "org.allbinary.input.gyro.OrientationData",
        "Object",
        [],
        False,
        [#("ORIENTATION_SENSOR_INPUT", jr.JNull), #("ORIENTATION_TYPE", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

