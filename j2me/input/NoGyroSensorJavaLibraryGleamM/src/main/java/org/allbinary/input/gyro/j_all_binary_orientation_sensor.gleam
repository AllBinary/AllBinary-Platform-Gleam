// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryOrientationSensor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "listener", jr.call_static("NoCompleteMotionGestureInputEventListener", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryOrientationSensor", "NULL_ALLBINARY_ORIENTATION_SENSOR", jr.new("AllBinaryOrientationSensor", []))
    jr.JNull
}

fn c1_m3__setlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_complete_motion_gesture_input_event_listener_interface] = jargs
        jr.set_field(this, "listener", l_complete_motion_gesture_input_event_listener_interface)
    jr.JNull
}

fn c1_m5__getorientation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "AllBinaryOrientationSensor", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AllBinarySensor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryOrientationSensor",
        "org.allbinary.input.gyro.AllBinaryOrientationSensor",
        "AllBinarySensor",
        [],
        False,
        [#("listener", jr.JNull)],
        [#("NULL_ALLBINARY_ORIENTATION_SENSOR", jr.JNull)],
        [
            jr.Method("setListener_1", ["CompleteMotionGestureInputEventListenerInterface"], False, c1_m3__setlistener), 
            jr.Method("getOrientation_0", [], False, c1_m5__getorientation), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

