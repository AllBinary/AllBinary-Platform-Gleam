// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SingleSensorGameUpdateProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.JNull
}

fn c1_m2__sendnotifications(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("SensorGameUpdateProcessor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SingleSensorGameUpdateProcessor",
        "org.allbinary.input.gyro.SingleSensorGameUpdateProcessor",
        "SensorGameUpdateProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("process_1", ["Object"], False, c1_m1__process), 
            jr.Method("sendNotifications_1", ["Object"], False, c1_m2__sendnotifications), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

