// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OrientationToGameKeyEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MIN", jr.as_i(jr.JInt(15)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setallbinarygyrosensor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_gyro_sensor] = jargs
        jr.set_field(this, "allBinaryGyroSensor", l_all_binary_gyro_sensor)
    jr.JNull
}

fn c1_m5__getallbinarygyrosensor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "allBinaryGyroSensor")
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__updategamekeyevents(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_orientation, l_yaw, l_pitch, l_roll] = jargs
    let l_yaw = jr.as_i(l_yaw)
    let l_pitch = jr.as_i(l_pitch)
    let l_roll = jr.as_i(l_roll)
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("SensorFeatureFactory", "getInstance_0", []), "NO_ORIENTATION")])) {
            True -> {
            jr.set_field(this, "allBinaryGyroSensor", jr.new("NoGyroSensor", []))
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Not Such Feature")]))
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OrientationToGameKeyEvent",
        "org.allbinary.input.gyro.OrientationToGameKeyEvent",
        "Object",
        [],
        False,
        [#("allBinaryGyroSensor", jr.JNull), #("MIN", jr.JInt(0))],
        [],
        [
            jr.Method("setAllBinaryGyroSensor_1", ["AllBinaryOrientationSensor"], False, c1_m4__setallbinarygyrosensor), 
            jr.Method("getAllBinaryGyroSensor_0", [], False, c1_m5__getallbinarygyrosensor), 
            jr.Method("process_0", [], False, c1_m6__process), 
            jr.Method("updateGameKeyEvents_4", ["Orientation", "int", "int", "int"], False, c1_m7__updategamekeyevents), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

