// Generated Code Do Not Modify
// package org.allbinary.game.input.motion.action
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SingleKeyPressGameKeyFromMotionGestureEventListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m3__oncompletemotiongestureinputevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_complete_motion_gesture_input_event] = jargs
        jr.try_catch(fn() {
            let l_game_key_complete_motion_gesture_input_event = l_complete_motion_gesture_input_event
            let l_game_key_event = jr.call(l_game_key_complete_motion_gesture_input_event, "getGameKeyEvent_0", [])
            jr.call(jr.call_static("PressGameKeyEventHandler", "getInstance_0", []), "fireEvent_1", [l_game_key_event])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("onCompleteMotionGestureInputEvent"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("CompleteMotionGestureInputEventListener", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SingleKeyPressGameKeyFromMotionGestureEventListener",
        "org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener",
        "CompleteMotionGestureInputEventListener",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m2__onevent), 
            jr.Method("onCompleteMotionGestureInputEvent_1", ["CompleteMotionGestureInputEvent"], False, c1_m3__oncompletemotiongestureinputevent), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

