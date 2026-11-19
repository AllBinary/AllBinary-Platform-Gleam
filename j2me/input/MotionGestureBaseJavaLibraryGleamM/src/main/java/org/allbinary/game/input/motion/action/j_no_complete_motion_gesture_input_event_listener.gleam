// Generated Code Do Not Modify
// package org.allbinary.game.input.motion.action
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoCompleteMotionGestureInputEventListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoCompleteMotionGestureInputEventListener", "instance", jr.new("NoCompleteMotionGestureInputEventListener", []))
    jr.JNull
}

fn c1_m3__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m4__oncompletemotiongestureinputevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_complete_motion_gesture_input_event] = jargs
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoCompleteMotionGestureInputEventListener", "instance")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("CompleteMotionGestureInputEventListener", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoCompleteMotionGestureInputEventListener",
        "org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener",
        "CompleteMotionGestureInputEventListener",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m3__onevent), 
            jr.Method("onCompleteMotionGestureInputEvent_1", ["CompleteMotionGestureInputEvent"], False, c1_m4__oncompletemotiongestureinputevent), 
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

