// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonRecognizer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "rectangleCollisionUtil", jr.call_static("RectangleCollisionUtil", "getInstance_0", []))
    jr.set_field(this, "upGameKeyEventHandler", jr.call_static("UpGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "downGameKeyEventHandler", jr.call_static("DownGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "lastPressedTouchButtonInput", jr.get_field(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "NONE"))
    jr.set_field(this, "currentlyPressedTouchButtonSingleton", jr.call_static("CurrentlyPressedTouchButtonSingleton", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m9__processrelease(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input, l_device_id] = jargs
    let l_device_id = jr.as_i(l_device_id)
        jr.call(jr.get_field(this, "releaseHelper"), "release_2", [l_touch_button_input, l_device_id])
        let l_game_key_event = jr.call(l_touch_button_input, "getGameKeyEvent_0", [])
        jr.call(jr.get_field(this, "upGameKeyEventHandler"), "fireEvent_1", [l_game_key_event])
        jr.call(jr.call(jr.get_field(this, "upGameKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEvent_1", [l_game_key_event])
        jr.call(jr.get_field(this, "currentlyPressedTouchButtonSingleton"), "remove_1", [l_touch_button_input])
    jr.JNull
}

fn c1_m10__releasetouchbuttoninput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    jr.method(fn() {
            let l_touch_button_input = jr.cell(jr.get_field(this, "lastPressedTouchButtonInput"))
            case jr.truth(jr.call(jr.get_field(this, "currentlyPressedTouchButtonSingleton"), "contains_1", [jr.get(l_touch_button_input)])) {
            True -> {
            jr.set_field(this, "lastPressedTouchButtonInput", jr.get_field(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "NONE"))
            jr.call(this, "processRelease_2", [jr.get(l_touch_button_input), l_device_id])
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            let l_list = jr.call(jr.call_static("TouchButtonFactory", "getInstance_0", []), "getList_0", [])
            let l_rectangle = jr.cell(jr.JNull)
            let l_point = jr.cell(jr.JNull)
            let l_touch_button = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(jr.sub(jr.call(l_list, "size_0", []), jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
                jr.set(l_touch_button, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
                jr.set(l_rectangle, jr.call(jr.get(l_touch_button), "getRectangle_0", []))
                jr.set(l_point, jr.call(jr.get(l_rectangle), "getPoint_0", []))
                case jr.truth(jr.call(jr.get_field(this, "rectangleCollisionUtil"), "isInside_6", [jr.call(jr.get(l_point), "getX_0", []), jr.call(jr.get(l_point), "getY_0", []), jr.call(jr.get(l_rectangle), "getMaxX_0", []), jr.call(jr.get(l_rectangle), "getMaxY_0", []), l_x, l_y])) {
                    True -> {
                    jr.set(l_touch_button_input, jr.call(jr.get(l_touch_button), "getTouchButtonInput_0", []))
                    jr.call(this, "processRelease_2", [jr.get(l_touch_button_input), l_device_id])
                    jr.ret(jr.JBool(True))
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        }
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m11__presstouchbuttoninput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    jr.method(fn() {
            let l_list = jr.call(jr.call_static("TouchButtonFactory", "getInstance_0", []), "getList_0", [])
            let l_rectangle = jr.cell(jr.JNull)
            let l_point = jr.cell(jr.JNull)
            let l_touch_button = jr.cell(jr.JNull)
            let l_touch_button_input = jr.cell(jr.JNull)
            let l_game_key_event = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(l_list, "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_touch_button, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.set(l_rectangle, jr.call(jr.get(l_touch_button), "getRectangle_0", []))
            jr.set(l_point, jr.call(jr.get(l_rectangle), "getPoint_0", []))
            case jr.truth(jr.call(jr.get_field(this, "rectangleCollisionUtil"), "isInside_6", [jr.call(jr.get(l_point), "getX_0", []), jr.call(jr.get(l_point), "getY_0", []), jr.call(jr.get(l_rectangle), "getMaxX_0", []), jr.call(jr.get(l_rectangle), "getMaxY_0", []), l_x, l_y])) {
                True -> {
                jr.set(l_touch_button_input, jr.call(jr.get(l_touch_button), "getTouchButtonInput_0", []))
                case jr.truth(jr.not(jr.call(jr.get_field(this, "currentlyPressedTouchButtonSingleton"), "contains_1", [jr.get(l_touch_button_input)]))) {
                    True -> {
                    jr.call(jr.get_field(this, "releaseHelper"), "release_2", [jr.get(l_touch_button_input), l_device_id])
                    jr.set_field(this, "lastPressedTouchButtonInput", jr.get(l_touch_button_input))
                    jr.call(jr.get_field(this, "currentlyPressedTouchButtonSingleton"), "add_1", [jr.get(l_touch_button_input)])
                    jr.set(l_game_key_event, jr.call(jr.get(l_touch_button_input), "getGameKeyEvent_0", []))
                    jr.call(jr.get_field(this, "downGameKeyEventHandler"), "fireEvent_1", [jr.get(l_game_key_event)])
                    jr.call(jr.call(jr.get_field(this, "downGameKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEvent_1", [jr.get(l_game_key_event)])
                    Nil
                }
                    False -> Nil
                }
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        case jr.truth(jr.call(jr.call_static("TouchScreenFactory", "getInstance_0", []), "isMultiTouch_0", [])) {
            True -> {
            jr.set_field(this, "releaseHelper", jr.new("MultitouchReleaseHelper", [this]))
            Nil
        }
            False -> {
            jr.set_field(this, "releaseHelper", jr.new("ReleaseHelper", [this]))
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonRecognizer",
        "org.allbinary.input.motion.button.TouchButtonRecognizer",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("rectangleCollisionUtil", jr.JNull), #("upGameKeyEventHandler", jr.JNull), #("downGameKeyEventHandler", jr.JNull), #("lastPressedTouchButtonInput", jr.JNull), #("currentlyPressedTouchButtonSingleton", jr.JNull), #("releaseHelper", jr.JNull)],
        [],
        [
            jr.Method("processRelease_2", ["TouchButtonInput", "int"], False, c1_m9__processrelease), 
            jr.Method("releaseTouchButtonInput_3", ["int", "int", "int"], False, c1_m10__releasetouchbuttoninput), 
            jr.Method("pressTouchButtonInput_3", ["int", "int", "int"], False, c1_m11__presstouchbuttoninput), 
            jr.Method("jinit_0", [], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

