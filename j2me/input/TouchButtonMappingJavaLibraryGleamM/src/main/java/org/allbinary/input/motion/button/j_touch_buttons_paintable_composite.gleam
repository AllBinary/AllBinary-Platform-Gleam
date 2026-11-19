// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonsPaintableComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "timeHelper", jr.new("TimeDelayHelper", [jr.JInt(250)]))
    jr.set_field(this, "released", jr.JBool(True))
    jr.set_field(this, "METHOD_NAME", jr.JStr("onCompleteMotionGestureInputEvent"))
    jr.set_field(this, "RELEASE", jr.JStr("Ignoring: MotionGestureInput Release"))
    jr.set_field(this, "FAST_REPEAT", jr.JStr("Ignoring: MotionGestureInput Repeated To Quickly"))
    jr.set_field(this, "IGNORE", jr.JStr("Ignoring: Until Released"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m13__oncompletemotiongestureinputevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_complete_motion_gesture_input_event] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.JStr("onCompleteMotionGestureInputEvent")])
            let l_touch_motion_gesture_factory = jr.call_static("TouchMotionGestureFactory", "getInstance_0", [])
            let l_game_key_complete_motion_gesture_input_event = l_complete_motion_gesture_input_event
            let l_game_key = jr.call(l_game_key_complete_motion_gesture_input_event, "getGameKey_0", [])
            let l_motion_gesture_input = jr.call(l_complete_motion_gesture_input_event, "getMotionGestureInput_0", [])
            case jr.truth(jr.eq(l_motion_gesture_input, jr.get_field(l_touch_motion_gesture_factory, "RELEASED"))) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(this, "RELEASE"), this, jr.get_field(this, "METHOD_NAME")])
                jr.set_field(this, "released", jr.JBool(True))
                jr.ret(jr.JNull)
                Nil
            }
                False -> Nil
            }
            case jr.truth(case jr.truth(jr.eq(l_motion_gesture_input, jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "NO_MOTION"))) { True -> jr.not(jr.call(jr.get_field(this, "timeHelper"), "isTimeTNT_0", [])) False -> jr.JBool(False) }) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(this, "FAST_REPEAT"), this, jr.get_field(this, "METHOD_NAME")])
                jr.ret(jr.JNull)
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.not(jr.get_field(this, "released"))) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(this, "IGNORE"), this, jr.get_field(this, "METHOD_NAME")])
                jr.ret(jr.JNull)
                Nil
            }
                False -> Nil
            }
            jr.set_field(this, "released", jr.JBool(False))
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("GameKey: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_game_key])]), "append_1", [jr.JStr(" MotionGestureInput: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_motion_gesture_input])]), "toString_0", []), this, jr.get_field(this, "METHOD_NAME")])
            jr.call(jr.get_field(this, "inputMappingInterface"), "processInputMapping_2", [l_game_key, l_motion_gesture_input])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(this, "METHOD_NAME"), l_e])
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m14__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("CompleteMotionGestureInputEventHandler", "getInstance_0", []), "removeListener_1", [this])
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_mapping_interface, l_basic_color] = jargs
    jr.super_init("ProcessPaintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "inputMappingInterface", l_input_mapping_interface)
        jr.call(jr.call_static("CompleteMotionGestureInputEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
        jr.set_field(this, "touchButtonsPaintable", jr.new("TouchButtonsMappingPaintable", [l_basic_color]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonsPaintableComposite",
        "org.allbinary.input.motion.button.TouchButtonsPaintableComposite",
        "ProcessPaintable",
        ["CompleteMotionGestureInputEventListenerInterface"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("inputMappingInterface", jr.JNull), #("touchButtonsPaintable", jr.JNull), #("timeHelper", jr.JNull), #("released", jr.JBool(False)), #("METHOD_NAME", jr.JNull), #("RELEASE", jr.JNull), #("FAST_REPEAT", jr.JNull), #("IGNORE", jr.JNull)],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m8__onevent), 
            jr.Method("onCompleteMotionGestureInputEvent_1", ["CompleteMotionGestureInputEvent"], False, c1_m13__oncompletemotiongestureinputevent), 
            jr.Method("process_0", [], False, c1_m14__process), 
            jr.Method("jinit_2", ["InputMappingInterface", "BasicColor"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

