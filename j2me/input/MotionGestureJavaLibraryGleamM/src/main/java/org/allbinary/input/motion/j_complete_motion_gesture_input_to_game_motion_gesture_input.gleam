// Generated Code Do Not Modify
// package org.allbinary.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompleteMotionGestureInputToGameMotionGestureInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CompleteMotionGestureInputToGameMotionGestureInput", "instance", jr.new("CompleteMotionGestureInputToGameMotionGestureInput", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CompleteMotionGestureInputToGameMotionGestureInput", "instance")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.try_catch(fn() {
            jr.call_static("PreLogUtil", "put_3", [jr.JStr("Compound Motion Gestures"), this, jr.get_field(l_common_strings, "INIT")])
            let l_motion_gesture_configuration = jr.call_static("MotionGestureConfigurationFactory", "getInstance_0", [])
            let l_touch_motion_gesture_factory = jr.call_static("TouchMotionGestureFactory", "getInstance_0", [])
            let l_list = jr.cell(jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "DIAGONAL_DOWN_LEFT")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("DiagonalDownLeftTouchInputToGameKeyEventAction", "getInstance_0", [])])
            jr.set(l_list, jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "DIAGONAL_DOWN_RIGHT")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("DiagonalDownRightTouchInputToGameKeyEventAction", "getInstance_0", [])])
            jr.set(l_list, jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "DIAGONAL_UP_LEFT")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("DiagonalUpLeftTouchInputToGameKeyEventAction", "getInstance_0", [])])
            jr.set(l_list, jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "DIAGONAL_UP_RIGHT")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("DiagonalUpRightTouchInputToGameKeyEventAction", "getInstance_0", [])])
            jr.set(l_list, jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "LEFT")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("LeftTouchInputToGameKeyEventAction", "getInstance_0", [])])
            jr.set(l_list, jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "RIGHT")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("RightTouchInputToGameKeyEventAction", "getInstance_0", [])])
            jr.set(l_list, jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "DOWN")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("DownTouchInputToGameKeyEventAction", "getInstance_0", [])])
            jr.set(l_list, jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "UP")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("UpTouchInputToGameKeyEventAction", "getInstance_0", [])])
            jr.set(l_list, jr.new("BasicArrayListD", []))
            jr.call(jr.get(l_list), "add_1", [jr.get_field(l_touch_motion_gesture_factory, "RELEASED")])
            jr.call(l_motion_gesture_configuration, "addMotionGestureAction_2", [jr.get(l_list), jr.call_static("ReleaseTouchInputToGameKeyEventAction", "getInstance_0", [])])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "INIT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompleteMotionGestureInputToGameMotionGestureInput",
        "org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("init_0", [], False, c1_m4__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

