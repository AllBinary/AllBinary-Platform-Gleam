// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompleteMotionGestureInputEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "motionGestureInput", jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "NO_MOTION"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.set_field(this, "name", l_name)
    jr.JNull
}

fn c1_m6__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m7__setmotiongestureinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_input] = jargs
        jr.set_field(this, "motionGestureInput", l_motion_gesture_input)
    jr.JNull
}

fn c1_m8__getmotiongestureinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "motionGestureInput")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_motion_gesture_input] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_motion_gesture_input])
        c1_jfields(this)
        jr.call(this, "setName_1", [l_name])
        jr.try_catch(fn() {
            jr.call(this, "setMotionGestureInput_1", [l_motion_gesture_input])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("InputToGameKeyEventAction"), l_e])
            Nil
        } })], fn() { Nil })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompleteMotionGestureInputEvent",
        "org.allbinary.game.input.CompleteMotionGestureInputEvent",
        "AllBinaryEventObject",
        ["CompleteMotionGestureInputInterface"],
        False,
        [#("logUtil", jr.JNull), #("name", jr.JNull), #("motionGestureInput", jr.JNull)],
        [],
        [
            jr.Method("setName_1", ["String"], False, c1_m5__setname), 
            jr.Method("getName_0", [], False, c1_m6__getname), 
            jr.Method("setMotionGestureInput_1", ["MotionGestureInput"], False, c1_m7__setmotiongestureinput), 
            jr.Method("getMotionGestureInput_0", [], False, c1_m8__getmotiongestureinput), 
            jr.Method("jinit_2", ["String", "MotionGestureInput"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

