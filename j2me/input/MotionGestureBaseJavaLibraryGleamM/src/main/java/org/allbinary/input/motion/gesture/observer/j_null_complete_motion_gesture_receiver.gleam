// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.observer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullCompleteMotionGestureReceiver

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__onmotiongesturecompleted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Null Gesture Reciever"), this, jr.get_field(l_common_strings, "CONSTRUCTOR")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullCompleteMotionGestureReceiver",
        "org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver",
        "Object",
        ["CompleteMotionGestureListenerInterface"],
        False,
        [#("logUtil", jr.JNull)],
        [],
        [
            jr.Method("onMotionGestureCompleted_1", ["BasicArrayList"], False, c1_m3__onmotiongesturecompleted), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

