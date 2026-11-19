// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommandFormInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MOTION_GESTURE_SOURCE_ID", jr.as_i(jr.get_field(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "MOTION_GESTURE_SOURCE_ID")))
    jr.set_field(this, "CLICK_DELAY", jr.as_i(jr.JInt(150)))
    jr.set_field(this, "clickTimeHelper", jr.new("TimeDelayHelper", [jr.get_field(this, "CLICK_DELAY")]))
    jr.set_field(this, "DOUBLE_CLICK_DELAY", jr.as_i(jr.JInt(1200)))
    jr.set_field(this, "doubleClickTimeHelper", jr.new("TimeDelayHelper", [jr.get_field(this, "DOUBLE_CLICK_DELAY")]))
    jr.set_field(this, "isSingleKeyProcessing", jr.call(jr.call_static("InputFeatureFactory", "getInstance_0", []), "isSingleKeyProcessing_0", []))
    jr.set_field(this, "hasPressed", jr.JBool(False))
    jr.set_field(this, "PROCESS_COMMAND", jr.JStr("processCommand"))
    jr.set_field(this, "NAME_LABEL", jr.JStr(" ScrollSelectionForm: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m10__processinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
    jr.method(fn() {
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "LEFT"))) { True -> jr.JBool(True) False -> jr.eq(l_key, jr.get_static("Canvas", "RIGHT")) }) { True -> jr.JBool(True) False -> jr.eq(l_key, jr.get_static("Canvas", "UP")) }) { True -> jr.JBool(True) False -> jr.eq(l_key, jr.get_static("Canvas", "DOWN")) }) {
            True -> {
            jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("SelectSound", "getInstance_0", [])])
            jr.call(jr.get_field(this, "form"), "processInputKey_1", [l_key])
            jr.ret(jr.as_i(jr.JInt(1)))
            Nil
        }
            False -> case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "FIRE"))) {
            True -> {
            jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("SelectSound", "getInstance_0", [])])
            jr.ret(jr.as_i(jr.call(this, "processCommand_0", [])))
            Nil
        }
            False -> Nil
        }
        }
            jr.ret(jr.as_i(jr.JInt(0)))
        jr.JNull
    })
}

fn c1_m12__processcommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_command_current_selection_form = jr.get_field(this, "form")
            let l_command = jr.call(l_command_current_selection_form, "getSelectedCommand_0", [])
            jr.call(jr.get_inherited(this, "CommandFormInputProcessor", "logUtil"), "putF_3", [jr.call(l_command, "toString_0", []), this, jr.get_field(this, "PROCESS_COMMAND")])
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_open_g_l_feature_factory = jr.call_static("OpenGLFeatureFactory", "getInstance_0", [])
            case jr.truth(case jr.truth(case jr.truth(jr.get_static("SWTUtil", "isSWT")) { True -> jr.call(l_features, "isFeature_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL")]) False -> jr.JBool(False) }) { True -> jr.ne(l_command, jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "EXIT_COMMAND")) False -> jr.JBool(False) }) {
            True -> {
            jr.call(jr.new("CommandRunnable", [this, l_command]), "run_0", [])
            Nil
        }
            False -> {
            jr.call(jr.call_static("PrimaryThreadPool", "getInstance_0", []), "runTask_1", [jr.new("CommandRunnable", [this, l_command])])
            Nil
        }
        }
            case jr.truth(jr.eq(l_command, jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "QUIT_COMMAND"))) {
            True -> {
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        }
            False -> {
            jr.ret(jr.as_i(jr.JInt(1)))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m13__processinputlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_motion_inputs_index = jr.as_i(jr.call(this, "processMotionInputs_0", []))
            let l_list = jr.call_inherited(this, "CommandFormInputProcessor", "getGameKeyEventList_0", [])
            let l_size = jr.as_i(jr.call(l_list, "size_0", []))
            let l_key = jr.cell(jr.as_i(jr.JInt(0)))
            let l_game_key_event = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_game_key_event, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
                jr.set(l_key, jr.as_i(jr.call(jr.get(l_game_key_event), "getKey_0", [])))
                case jr.truth(jr.ne(jr.call(jr.get(l_game_key_event), "getSourceId_0", []), jr.get_field(this, "MOTION_GESTURE_SOURCE_ID"))) {
                    True -> {
                    case jr.truth(jr.eq(jr.call(this, "processInput_1", [jr.get(l_key)]), jr.JInt(1))) {
                        True -> {
                        jr.brk("")
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            jr.call_inherited(this, "CommandFormInputProcessor", "clear_0", [])
            case jr.truth(case jr.truth(jr.gt(l_size, jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ge(l_motion_inputs_index, jr.JInt(0)) }) {
                True -> {
                jr.ret(jr.as_i(jr.JInt(1)))
                Nil
            }
                False -> {
                jr.ret(jr.as_i(jr.JInt(-1)))
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "CommandFormInputProcessor", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "CommandFormInputProcessor", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "CommandFormInputProcessor", "gameInputStrings"), "PROCESS_INPUT"), l_e])
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m14__processmotioninputs(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_last_index = jr.as_i(jr.sub(jr.call(jr.get_inherited(this, "CommandFormInputProcessor", "motionGestureEventList"), "size_0", []), jr.JInt(1)))
        case jr.truth(jr.ge(l_last_index, jr.JInt(0))) {
            True -> {
            let l_motion_gesture_event = jr.aget(jr.get_field(jr.get_inherited(this, "CommandFormInputProcessor", "motionGestureEventList"), "objectArray"), l_last_index)
            jr.call(this, "processMotionInput_1", [l_motion_gesture_event])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_inherited(this, "CommandFormInputProcessor", "motionGestureEventList"), "clear_0", [])
    jr.as_i(l_last_index)
}

fn c1_m15__processmotioninput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event] = jargs
        let l_touch_motion_gesture_factory = jr.call_static("TouchMotionGestureFactory", "getInstance_0", [])
        let l_motion_gesture_input = jr.call(l_motion_gesture_event, "getMotionGesture_0", [])
        case jr.truth(jr.eq(l_motion_gesture_input, jr.get_field(l_touch_motion_gesture_factory, "RELEASED"))) {
            True -> {
            let l_point = jr.call(l_motion_gesture_event, "getCurrentPoint_0", [])
            case jr.truth(jr.call(jr.get_field(this, "form"), "isInForm_1", [l_point])) {
                True -> {
                let l_index = jr.as_i(jr.call(jr.get_field(this, "form"), "getSelectedIndexForPoint_1", [l_point]))
                case jr.truth(jr.ne(l_index, jr.JInt(-1))) {
                    True -> {
                    jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("SelectSound", "getInstance_0", [])])
                    case jr.truth(jr.eq(l_index, jr.call(jr.get_field(this, "form"), "getSelectedIndex_0", []))) {
                        True -> {
                        case jr.truth(jr.call(jr.get_field(this, "clickTimeHelper"), "isTimeTNT_0", [])) {
                            True -> {
                            jr.call(this, "processCommand_0", [])
                            Nil
                        }
                            False -> Nil
                        }
                        Nil
                    }
                        False -> {
                        jr.call(jr.get_field(this, "form"), "setSelectedIndex_1", [l_index])
                        Nil
                    }
                    }
                    Nil
                }
                    False -> {
                    Nil
                }
                }
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.get_field(this, "hasPressed")) {
                True -> {
                case jr.truth(jr.not(jr.call(jr.get_field(this, "doubleClickTimeHelper"), "isTimeTNT_0", []))) {
                    True -> {
                    jr.call(jr.get_inherited(this, "CommandFormInputProcessor", "logUtil"), "putF_3", [jr.JStr("Double Press"), this, jr.get_field(jr.get_inherited(this, "CommandFormInputProcessor", "gameInputStrings"), "PROCESS_MOTION_INPUT")])
                    jr.call(this, "processCommand_0", [])
                    Nil
                }
                    False -> Nil
                }
                jr.set_field(jr.get_field(this, "doubleClickTimeHelper"), "delay", jr.as_i(jr.get_field(this, "DOUBLE_CLICK_DELAY")))
                jr.call(jr.get_field(this, "doubleClickTimeHelper"), "setStartTimeTNT_0", [])
                Nil
            }
                False -> Nil
            }
            jr.set_field(this, "hasPressed", jr.JBool(False))
            Nil
        }
            False -> case jr.truth(jr.eq(l_motion_gesture_input, jr.get_field(l_touch_motion_gesture_factory, "PRESSED"))) {
            True -> {
            jr.set_field(jr.get_field(this, "doubleClickTimeHelper"), "delay", jr.as_i(jr.JInt(0)))
            jr.set_field(this, "hasPressed", jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_m17__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call_super("BasicMenuInputProcessor", this, "toString_0", [])]), "append_1", [jr.get_field(this, "NAME_LABEL")]), "append_1", [jr.call(jr.get_field(this, "form"), "toString_0", [])]), "toString_0", [])
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event_list, l_player_input_id, l_game_canvas, l_form] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.super_init("BasicMenuInputProcessor", this, [l_game_key_event_list, l_player_input_id, l_game_canvas])
        c1_jfields(this)
        jr.set_field(this, "form", l_form)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommandFormInputProcessor",
        "org.allbinary.game.displayable.canvas.CommandFormInputProcessor",
        "BasicMenuInputProcessor",
        [],
        False,
        [#("MOTION_GESTURE_SOURCE_ID", jr.JInt(0)), #("CLICK_DELAY", jr.JInt(0)), #("clickTimeHelper", jr.JNull), #("DOUBLE_CLICK_DELAY", jr.JInt(0)), #("doubleClickTimeHelper", jr.JNull), #("isSingleKeyProcessing", jr.JBool(False)), #("form", jr.JNull), #("hasPressed", jr.JBool(False)), #("PROCESS_COMMAND", jr.JNull), #("NAME_LABEL", jr.JNull)],
        [],
        [
            jr.Method("processInput_1", ["int"], False, c1_m10__processinput), 
            jr.Method("processCommand_0", [], False, c1_m12__processcommand), 
            jr.Method("processInputList_0", [], False, c1_m13__processinputlist), 
            jr.Method("processMotionInputs_0", [], False, c1_m14__processmotioninputs), 
            jr.Method("processMotionInput_1", ["MotionGestureEvent"], False, c1_m15__processmotioninput), 
            jr.Method("toString_0", [], False, c1_m17__tostring), 
            jr.Method("jinit_4", ["BasicArrayList", "int", "MyCanvas", "ScrollSelectionForm"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

