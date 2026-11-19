// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AccelerometerSensorUpdateProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_sensor_feature_factory = jr.call_static("SensorFeatureFactory", "getInstance_0", [])
        case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(l_sensor_feature_factory, "ORIENTATION_SENSORS")])) {
            True -> {
            jr.call(jr.call_static("AccelerometerSensorFactory", "getInstance_0", []), "setCompleteMotionGestureInputEventListener_1", [jr.new("SingleKeyPressGameKeyFromMotionGestureEventListener", [])])
            Nil
        }
            False -> case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(l_sensor_feature_factory, "SIMULATED_ORIENTATION_SENSORS")])) {
            True -> {
            jr.call(jr.call_static("AccelerometerSensorFactory", "getInstance_0", []), "setCompleteMotionGestureInputEventListener_1", [jr.new("SingleKeyPressGameKeyFromMotionGestureEventListener", [])])
            Nil
        }
            False -> case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(l_sensor_feature_factory, "NO_ORIENTATION")])) {
            True -> {
            jr.call(jr.call_static("AccelerometerSensorFactory", "getInstance_0", []), "setCompleteMotionGestureInputEventListener_1", [jr.call_static("NoCompleteMotionGestureInputEventListener", "getInstance_0", [])])
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Sensor Feature Not Set")]))
            Nil
        }
        }
        }
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Processor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AccelerometerSensorUpdateProcessor",
        "org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor",
        "Processor",
        [],
        False,
        [],
        [],
        [
            jr.Method("process_0", [], False, c1_m1__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

