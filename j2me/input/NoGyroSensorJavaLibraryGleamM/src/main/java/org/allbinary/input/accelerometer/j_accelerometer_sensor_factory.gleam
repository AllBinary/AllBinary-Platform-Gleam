// Generated Code Do Not Modify
// package org.allbinary.input.accelerometer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AccelerometerSensorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AccelerometerSensorFactory", "allBinaryAccelerometerSensor", jr.get_static("AllBinaryOrientationSensor", "NULL_ALLBINARY_ORIENTATION_SENSOR"))
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_features = jr.call_static("Features", "getInstance_0", [])
        let l_sensor_feature_factory = jr.call_static("SensorFeatureFactory", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_sensor_feature_factory, "ORIENTATION_SENSORS")])) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("No Orientation Sensors")]))
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_sensor_feature_factory, "SIMULATED_ORIENTATION_SENSORS")])) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("No Simulation Sensors")]))
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_sensor_feature_factory, "NO_ORIENTATION")])) {
            True -> {
            jr.set_static("AccelerometerSensorFactory", "allBinaryAccelerometerSensor", jr.new("NoAccelerometerSensor", []))
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Not Such SensorFeature")]))
            Nil
        }
        }
        }
        }
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AccelerometerSensorFactory", "allBinaryAccelerometerSensor")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AccelerometerSensorFactory",
        "org.allbinary.input.accelerometer.AccelerometerSensorFactory",
        "Object",
        [],
        False,
        [],
        [#("allBinaryAccelerometerSensor", jr.JNull)],
        [
            jr.Method("init_0", [], True, c1_m2__init), 
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

