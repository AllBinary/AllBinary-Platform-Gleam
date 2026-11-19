// Generated Code Do Not Modify
// package org.allbinary.input.motion.touch.action
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ReleaseTouchInputToGameKeyEventAction

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.get_field(jr.call_static("GameKeyFactory", "getInstance_0", []), "NONE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ReleaseTouchInputToGameKeyEventAction", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("ReleaseTouchInputToGameKeyEventAction", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("ReleaseTouchInputToGameKeyEventAction", "instance", jr.new("ReleaseTouchInputToGameKeyEventAction", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("ReleaseTouchInputToGameKeyEventAction", "instance")
}

fn c1_m5__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("GameKeyCompleteMotionGestureInputEvent", this, [jr.JStr("Release Action"), jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "RELEASED"), jr.call(jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []), "getInputMapping_0", [])])
        c1_jfields(this)
        jr.try_catch(fn() {
            jr.call_inherited(this, "ReleaseTouchInputToGameKeyEventAction", "setGameKey_1", [jr.get_field(this, "NONE")])
            jr.call_inherited(this, "ReleaseTouchInputToGameKeyEventAction", "setGameKeyEvent_1", [jr.call(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "getInstanceForInput_2", [this, jr.get_field(this, "NONE")])])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_inherited(this, "ReleaseTouchInputToGameKeyEventAction", "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "CONSTRUCTOR"), l_e])
            Nil
        } })], fn() { Nil })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ReleaseTouchInputToGameKeyEventAction",
        "org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction",
        "GameKeyCompleteMotionGestureInputEvent",
        [],
        False,
        [#("NONE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("update_0", [], False, c1_m5__update), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

