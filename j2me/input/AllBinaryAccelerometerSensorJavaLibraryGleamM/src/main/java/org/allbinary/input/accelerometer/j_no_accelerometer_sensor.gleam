// Generated Code Do Not Modify
// package org.allbinary.input.accelerometer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoAccelerometerSensor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getorientation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("Orientation", "NONE")
}

fn c1_m3__onsensorchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AllBinaryOrientationSensor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoAccelerometerSensor",
        "org.allbinary.input.accelerometer.NoAccelerometerSensor",
        "AllBinaryOrientationSensor",
        [],
        False,
        [],
        [],
        [
            jr.Method("getOrientation_0", [], False, c1_m2__getorientation), 
            jr.Method("onSensorChange_0", [], False, c1_m3__onsensorchange), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

