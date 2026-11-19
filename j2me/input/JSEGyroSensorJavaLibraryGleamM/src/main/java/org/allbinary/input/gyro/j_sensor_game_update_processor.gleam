// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SensorGameUpdateProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__setinputsensor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_sensor] = jargs
        jr.set_field(this, "inputSensor", l_input_sensor)
    jr.JNull
}

fn c1_m3__getinputsensor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "inputSensor")
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.JNull
}

fn c1_m5__sendnotifications(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.JNull
}

fn c1_m6__isanysensor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "inputSensor"), jr.call_static("NoAllBinarySensor", "getInstance_0", []))) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m7__setnosensors(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("GyroSensorFactory", "getInstance_0", []), "setCompleteMotionGestureInputEventListener_1", [jr.call_static("NoCompleteMotionGestureInputEventListener", "getInstance_0", [])])
        jr.call(jr.call_static("AccelerometerSensorFactory", "getInstance_0", []), "setCompleteMotionGestureInputEventListener_1", [jr.call_static("NoCompleteMotionGestureInputEventListener", "getInstance_0", [])])
        jr.call(this, "setInputSensor_1", [jr.call_static("NoAllBinarySensor", "getInstance_0", [])])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SensorGameUpdateProcessor",
        "org.allbinary.input.gyro.SensorGameUpdateProcessor",
        "Object",
        [],
        False,
        [#("inputSensor", jr.JNull)],
        [],
        [
            jr.Method("setInputSensor_1", ["AllBinarySensor"], False, c1_m2__setinputsensor), 
            jr.Method("getInputSensor_0", [], False, c1_m3__getinputsensor), 
            jr.Method("process_1", ["Object"], False, c1_m4__process), 
            jr.Method("sendNotifications_1", ["Object"], False, c1_m5__sendnotifications), 
            jr.Method("isAnySensor_0", [], False, c1_m6__isanysensor), 
            jr.Method("setNoSensors_0", [], False, c1_m7__setnosensors), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

