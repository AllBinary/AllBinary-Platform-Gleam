// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SingleSensorGameUpdateProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "accelerometerSensorUpdateProcessor", jr.new("AccelerometerSensorUpdateProcessor", []))
    jr.set_field(this, "gyroSensorUpdateProcessor", jr.new("GyroSensorUpdateProcessor", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call_inherited(this, "SingleSensorGameUpdateProcessor", "setNoSensors_0", [])
    jr.JNull
}

fn c1_m4__sendnotifications(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("accelerometerSensorUpdateProcessor", jr.JNull), #("gyroSensorUpdateProcessor", jr.JNull)],
        [],
        [
            jr.Method("process_1", ["Object"], False, c1_m3__process), 
            jr.Method("sendNotifications_1", ["Object"], False, c1_m4__sendnotifications), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

