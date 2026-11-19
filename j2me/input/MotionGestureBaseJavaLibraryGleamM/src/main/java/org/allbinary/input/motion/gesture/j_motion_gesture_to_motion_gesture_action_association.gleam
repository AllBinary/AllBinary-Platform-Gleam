// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionGestureToMotionGestureActionAssociation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getmotiongesture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_m5__setmotiongestures(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        jr.set_field(this, "list", l_list)
    jr.JNull
}

fn c1_m6__getcommandaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "motionGestureAction")
}

fn c1_m7__setmotiongestureaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_action] = jargs
        jr.set_field(this, "motionGestureAction", l_command_action)
    jr.JNull
}

fn c1_m8__ismotiongesturearrayequals(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_list] = jargs
    jr.method(fn() {
            let l_size = jr.as_i(jr.call(l_a_list, "size_0", []))
            case jr.truth(jr.ne(jr.call(jr.get_field(this, "list"), "size_0", []), l_size)) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            {
            let l_i = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_i), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, -1, True) Nil }, fn() {
            case jr.truth(jr.ne(jr.aget(jr.get_field(l_a_list, "objectArray"), jr.get(l_i)), jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_i)))) {
                True -> {
                jr.ret(jr.JBool(False))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list, l_command_action] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "list", l_list)
        jr.set_field(this, "motionGestureAction", l_command_action)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionGestureToMotionGestureActionAssociation",
        "org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation",
        "Object",
        [],
        False,
        [#("list", jr.JNull), #("motionGestureAction", jr.JNull)],
        [],
        [
            jr.Method("getMotionGesture_0", [], False, c1_m4__getmotiongesture), 
            jr.Method("setMotionGestures_1", ["BasicArrayList"], False, c1_m5__setmotiongestures), 
            jr.Method("getCommandAction_0", [], False, c1_m6__getcommandaction), 
            jr.Method("setMotionGestureAction_1", ["CompleteMotionGestureInputEvent"], False, c1_m7__setmotiongestureaction), 
            jr.Method("isMotionGestureArrayEquals_1", ["BasicArrayList"], False, c1_m8__ismotiongesturearrayequals), 
            jr.Method("jinit_2", ["BasicArrayList", "CompleteMotionGestureInputEvent"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

