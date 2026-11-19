// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FormInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "gameKeyEventFactory", jr.call_static("GameKeyEventFactory", "getInstance_0", []))
    jr.set_field(this, "downKeyEventHandler", jr.call_static("DownKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "upGameKeyEventHandler", jr.call_static("UpGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "inputFactory", jr.call_static("InputFactory", "getInstance_0", []))
    jr.set_field(this, "platformKeyFactory", jr.call_static("PlatformKeyFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m10__keypressedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.try_catch(fn() {
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "inputFactory"), "KEY_CODE_LABEL")]), "appendint_1", [l_key_code]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")]), "append_1", [jr.get_field(jr.get_field(this, "inputFactory"), "DEVICE_ID_LABEL")]), "appendint_1", [l_device_id]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "FormInputProcessor", "gameInputStrings"), "KEY_PRESSED")])
            let l_input = jr.call(jr.get_field(this, "inputFactory"), "getInstanceById_1", [l_key_code])
            let l_game_key_event = jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [jr.get_field(this, "allBinaryGameCanvas"), l_input])
            jr.call(jr.get_field(this, "downKeyEventHandler"), "fireEventForGameKeyEvent_1", [l_game_key_event])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "FormInputProcessor", "gameInputStrings"), "ADD_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m11__keyreleasedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas, l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.try_catch(fn() {
            let l_input = jr.call(jr.get_field(this, "inputFactory"), "getInstanceById_1", [l_key_code])
            case jr.truth(jr.call(jr.get_field(this, "platformKeyFactory"), "isEnter_1", [l_input])) {
                True -> {
                jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "inputFactory"), "KEY_CODE_LABEL")]), "appendint_1", [l_key_code]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")]), "append_1", [jr.get_field(jr.get_field(this, "inputFactory"), "DEVICE_ID_LABEL")]), "appendint_1", [l_device_id]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "FormInputProcessor", "gameInputStrings"), "KEY_RELEASED")])
                let l_game_key = jr.get_field(jr.call_static("GameKeyFactory", "getInstance_0", []), "KEY_NUM0")
                let l_game_key_event_source_interface = l_canvas
                let l_game_key_event = jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [l_game_key_event_source_interface, l_game_key])
                jr.call(jr.get_field(this, "upGameKeyEventHandler"), "fireEvent_1", [l_game_key_event])
                jr.call(jr.call(jr.get_field(this, "upGameKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEvent_1", [l_game_key_event])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "FormInputProcessor", "gameInputStrings"), "ADD_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.super_init("InputProcessor", this, [])
    c1_jfields(this)
        jr.set_field(this, "allBinaryGameCanvas", l_all_binary_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FormInputProcessor",
        "org.allbinary.game.displayable.canvas.FormInputProcessor",
        "InputProcessor",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("gameKeyEventFactory", jr.JNull), #("downKeyEventHandler", jr.JNull), #("upGameKeyEventHandler", jr.JNull), #("inputFactory", jr.JNull), #("platformKeyFactory", jr.JNull), #("allBinaryGameCanvas", jr.JNull)],
        [],
        [
            jr.Method("keyPressedByDevice_2", ["int", "int"], False, c1_m10__keypressedbydevice), 
            jr.Method("keyReleasedByDevice_3", ["Canvas", "int", "int"], False, c1_m11__keyreleasedbydevice), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

