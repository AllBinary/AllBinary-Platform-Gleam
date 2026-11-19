// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.observer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionGestureReceiveInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_configuration = jr.call_static("MotionGestureConfigurationFactory", "getInstance_0", [])
            case jr.truth(jr.not(jr.call(l_configuration, "isExecutingActionsAllowed_0", []))) {
            True -> {
            jr.ret(jr.new("NullCompleteMotionGestureReceiver", []))
            Nil
        }
            False -> {
            jr.ret(jr.new("ResolveCompleteMotionGestureListener", []))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionGestureReceiveInterfaceFactory",
        "org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_0", [], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

