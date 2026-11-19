// Generated Code Do Not Modify
// package org.allbinary.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompleteMotionGestureInputToGameMotionGestureInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CompleteMotionGestureInputToGameMotionGestureInput", "instance", jr.new("CompleteMotionGestureInputToGameMotionGestureInput", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CompleteMotionGestureInputToGameMotionGestureInput", "instance")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("PreLogUtil", "put_3", [jr.JStr("No Touch Button = No Compound Motion Gestures"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT")])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompleteMotionGestureInputToGameMotionGestureInput",
        "org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput",
        "Object",
        [],
        False,
        [#("commonStrings", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m4__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

