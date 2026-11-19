// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.observer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ResolveCompleteMotionGestureListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__onmotiongesturecompleted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l_configuration = jr.call_static("MotionGestureConfigurationFactory", "getInstance_0", [])
        let l_command_actions_list = jr.call(l_configuration, "getAssociateCommandActionsList_0", [])
        let l_size = jr.as_i(jr.call(l_command_actions_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_association = jr.aget(jr.get_field(l_command_actions_list, "objectArray"), jr.get(l_index))
            case jr.truth(jr.eq(jr.call(l_association, "isMotionGestureArrayEquals_1", [l_list]), jr.JBool(True))) {
                True -> {
                let l_complete_motion_gesture_input_event = jr.call(l_association, "getCommandAction_0", [])
                jr.call(jr.call_static("CompleteMotionGestureInputEventHandler", "getInstance_0", []), "fireEvent_1", [l_complete_motion_gesture_input_event])
                jr.brk("")
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("MotionGesture to CompleteMotionGesture Reciever"), this, jr.get_field(l_common_strings, "CONSTRUCTOR")])
        jr.call(jr.call_static("CompleteMotionGestureInputEventHandler", "getInstance_0", []), "addListener_1", [jr.new("GameKeyFromMotionGestureEventListener", [])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ResolveCompleteMotionGestureListener",
        "org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener",
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

