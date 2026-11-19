// Generated Code Do Not Modify
// package org.allbinary.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchJ2ME

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "DEVICE_ID", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "motionRecognizer", jr.new("AllMotionRecognizer", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__pointerdragged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "motionRecognizer"), "processDraggedMotionEvent_4", [l_x, l_y, jr.get_field(this, "DEVICE_ID"), jr.JInt(0)])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("pointerDragged"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m6__pointerpressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "motionRecognizer"), "processStartMotionEvent_4", [l_x, l_y, jr.get_field(this, "DEVICE_ID"), jr.JInt(0)])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("pointerPressed"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m7__pointerreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "motionRecognizer"), "processEndMotionEvent_4", [l_x, l_y, jr.get_field(this, "DEVICE_ID"), jr.JInt(0)])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("pointerReleased"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_motion_gestures_handler = jr.call(jr.call(jr.get_field(this, "motionRecognizer"), "getMotionGestureRecognizer_0", []), "getMotionGesturesHandler_0", [])
        jr.call(l_motion_gestures_handler, "addListenerInterface_1", [jr.new("GameMotionGestureListener", [jr.call_static("MotionGestureReceiveInterfaceFactory", "getInstance_0", [])])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchJ2ME",
        "org.allbinary.input.TouchJ2ME",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("DEVICE_ID", jr.JInt(0)), #("motionRecognizer", jr.JNull)],
        [],
        [
            jr.Method("pointerDragged_2", ["int", "int"], False, c1_m5__pointerdragged), 
            jr.Method("pointerPressed_2", ["int", "int"], False, c1_m6__pointerpressed), 
            jr.Method("pointerReleased_2", ["int", "int"], False, c1_m7__pointerreleased), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

