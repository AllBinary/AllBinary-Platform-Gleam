// Generated Code Do Not Modify
// package org.allbinary.input.motion.touch.action
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DiagonalDownLeftTouchInputToGameKeyEventAction

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DiagonalDownLeftTouchInputToGameKeyEventAction", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("DiagonalDownLeftTouchInputToGameKeyEventAction", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("DiagonalDownLeftTouchInputToGameKeyEventAction", "instance", jr.new("DiagonalDownLeftTouchInputToGameKeyEventAction", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("DiagonalDownLeftTouchInputToGameKeyEventAction", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("GameKeyCompleteMotionGestureInputEvent", this, [jr.JStr("Diagonal Down Left Action"), jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "DIAGONAL_DOWN_LEFT"), jr.call(jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []), "getInputMapping_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DiagonalDownLeftTouchInputToGameKeyEventAction",
        "org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction",
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

