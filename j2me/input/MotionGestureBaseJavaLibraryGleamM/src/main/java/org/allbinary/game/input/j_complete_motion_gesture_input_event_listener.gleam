// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompleteMotionGestureInputEventListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
    jr.JNull
}

fn c1_m2__oncompletemotiongestureinputevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_complete_motion_gesture_input_event] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompleteMotionGestureInputEventListener",
        "org.allbinary.game.input.CompleteMotionGestureInputEventListener",
        "Object",
        ["CompleteMotionGestureInputEventListenerInterface"],
        False,
        [],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m1__onevent), 
            jr.Method("onCompleteMotionGestureInputEvent_1", ["CompleteMotionGestureInputEvent"], False, c1_m2__oncompletemotiongestureinputevent), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

