// Generated Code Do Not Modify
// package org.allbinary.input.motion.gyro.action
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LeftOrientationInputToGameKeyEventAction

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LeftOrientationInputToGameKeyEventAction", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("LeftOrientationInputToGameKeyEventAction", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("LeftOrientationInputToGameKeyEventAction", "instance", jr.new("LeftOrientationInputToGameKeyEventAction", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("LeftOrientationInputToGameKeyEventAction", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("GameKeyCompleteMotionGestureInputEvent", this, [jr.JStr("Left Action"), jr.get_field(jr.call_static("OrientationMotionGestureFactory", "getInstance_0", []), "LEFT"), jr.call(jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []), "getInputMapping_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LeftOrientationInputToGameKeyEventAction",
        "org.allbinary.input.motion.gyro.action.LeftOrientationInputToGameKeyEventAction",
        "GameKeyCompleteMotionGestureInputEvent",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

