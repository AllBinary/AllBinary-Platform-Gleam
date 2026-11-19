// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PopupMenuInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "rectangleCollisionUtil", jr.call_static("RectangleCollisionUtil", "getInstance_0", []))
    jr.set_field(this, "CLICK_DELAY", jr.as_i(jr.JInt(120)))
    jr.set_field(this, "clickTimeHelper", jr.new("TimeDelayHelper", [jr.get_field(this, "CLICK_DELAY")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle] = jargs
        jr.set_field(this, "rectangle", l_rectangle)
    jr.JNull
}

fn c1_m7__processinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
    jr.method(fn() {
            case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "KEY_STAR"))) {
            True -> {
            let l_game_canvas = jr.call_inherited(this, "PopupMenuInputProcessor", "getCanvas_0", [])
            jr.call(l_game_canvas, "toggleMenu_0", [])
            jr.ret(jr.as_i(jr.JInt(1)))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.as_i(jr.JInt(0)))
        jr.JNull
    })
}

fn c1_m8__processinputlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_motion_inputs_index = jr.as_i(jr.call(this, "processMotionInputs_0", []))
            let l_list = jr.call_inherited(this, "PopupMenuInputProcessor", "getGameKeyEventList_0", [])
            let l_size = jr.as_i(jr.call(l_list, "size_0", []))
            let l_key = jr.cell(jr.as_i(jr.JInt(0)))
            let l_game_key_event = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_game_key_event, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
                case jr.truth(jr.ne(jr.get(l_game_key_event), jr.JNull)) {
                    True -> {
                    jr.set(l_key, jr.as_i(jr.call(jr.get(l_game_key_event), "getKey_0", [])))
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
            jr.call_inherited(this, "PopupMenuInputProcessor", "clear_0", [])
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
            jr.call(jr.get_inherited(this, "PopupMenuInputProcessor", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "PopupMenuInputProcessor", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.call_static("GameInputStrings", "getInstance_0", []), "PROCESS_INPUT"), l_e])
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m9__processmotioninputs(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_last_index = jr.as_i(jr.sub(jr.call(jr.get_inherited(this, "PopupMenuInputProcessor", "motionGestureEventList"), "size_0", []), jr.JInt(1)))
        case jr.truth(jr.ge(l_last_index, jr.JInt(0))) {
            True -> {
            let l_motion_gesture_event = jr.aget(jr.get_field(jr.get_inherited(this, "PopupMenuInputProcessor", "motionGestureEventList"), "objectArray"), l_last_index)
            jr.call(this, "processMotionInput_1", [l_motion_gesture_event])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_inherited(this, "PopupMenuInputProcessor", "motionGestureEventList"), "clear_0", [])
    jr.as_i(l_last_index)
}

fn c1_m10__processmotioninput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_motion_gesture_event, jr.JNull)) {
            True -> {
            jr.call(jr.get_inherited(this, "PopupMenuInputProcessor", "logUtil"), "putF_3", [jr.JStr("Exception: Bug"), this, jr.get_field(jr.get_inherited(this, "PopupMenuInputProcessor", "gameInputStrings"), "PROCESS_MOTION_INPUT")])
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_touch_motion_gesture_factory = jr.call_static("TouchMotionGestureFactory", "getInstance_0", [])
            let l_motion_gesture_input = jr.call(l_motion_gesture_event, "getMotionGesture_0", [])
            case jr.truth(jr.eq(l_motion_gesture_input, jr.get_field(l_touch_motion_gesture_factory, "RELEASED"))) {
            True -> {
            let l_point = jr.call(l_motion_gesture_event, "getCurrentPoint_0", [])
            let l_rect_point = jr.call(jr.get_field(this, "rectangle"), "getPoint_0", [])
            case jr.truth(jr.call(jr.get_field(this, "rectangleCollisionUtil"), "isInside_6", [jr.call(l_rect_point, "getX_0", []), jr.call(l_rect_point, "getY_0", []), jr.add(jr.call(jr.get_field(this, "rectangle"), "getMaxX_0", []), jr.JInt(20)), jr.call(jr.get_field(this, "rectangle"), "getMaxY_0", []), jr.call(l_point, "getX_0", []), jr.call(l_point, "getY_0", [])])) {
                True -> {
                case jr.truth(jr.call(jr.get_field(this, "clickTimeHelper"), "isTimeTNT_0", [])) {
                    True -> {
                    let l_game_canvas = jr.call_inherited(this, "PopupMenuInputProcessor", "getCanvas_0", [])
                    jr.call(l_game_canvas, "toggleMenu_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
        jr.JNull
    })
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event_list, l_player_input_id, l_game_canvas, l_rectangle] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.super_init("BasicMenuInputProcessor", this, [l_game_key_event_list, l_player_input_id, l_game_canvas])
        c1_jfields(this)
        jr.set_field(this, "rectangle", l_rectangle)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PopupMenuInputProcessor",
        "org.allbinary.game.displayable.canvas.PopupMenuInputProcessor",
        "BasicMenuInputProcessor",
        [],
        False,
        [#("rectangleCollisionUtil", jr.JNull), #("CLICK_DELAY", jr.JInt(0)), #("clickTimeHelper", jr.JNull), #("rectangle", jr.JNull)],
        [],
        [
            jr.Method("init_1", ["Rectangle"], False, c1_m6__init), 
            jr.Method("processInput_1", ["int"], False, c1_m7__processinput), 
            jr.Method("processInputList_0", [], False, c1_m8__processinputlist), 
            jr.Method("processMotionInputs_0", [], False, c1_m9__processmotioninputs), 
            jr.Method("processMotionInput_1", ["MotionGestureEvent"], False, c1_m10__processmotioninput), 
            jr.Method("jinit_4", ["BasicArrayList", "int", "MyCanvas", "Rectangle"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

