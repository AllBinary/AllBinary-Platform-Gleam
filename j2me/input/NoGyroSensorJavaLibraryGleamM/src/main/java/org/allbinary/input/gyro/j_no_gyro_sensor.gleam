// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoGyroSensor

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
        jr.call(jr.get_inherited(this, "NoGyroSensor", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "NoGyroSensor", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "NoGyroSensor", "commonStrings"), "CONSTRUCTOR")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoGyroSensor",
        "org.allbinary.input.gyro.NoGyroSensor",
        "AllBinaryOrientationSensor",
        ["AllBinarySensorListener"],
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

