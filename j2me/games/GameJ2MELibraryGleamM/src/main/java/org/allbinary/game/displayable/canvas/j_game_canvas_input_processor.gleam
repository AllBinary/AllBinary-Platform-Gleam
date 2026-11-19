// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameCanvasInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "downGameKeyEventHandler", jr.call_static("DownGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "upGameKeyEventHandler", jr.call_static("UpGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "downKeyEventHandler", jr.call_static("DownKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "smallIntegerSingletonFactory", jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []))
    jr.set_field(this, "inputToGameKeyMapping", jr.call(jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []), "getInputMapping_0", []))
    jr.set_field(this, "NONE", jr.get_field(jr.call_static("GameKeyFactory", "getInstance_0", []), "NONE"))
    jr.set_field(this, "gameKeyEventFactory", jr.call_static("GameKeyEventFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m11__keypressedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.try_catch(fn() {
            let l_game_key = jr.call(jr.get_field(this, "inputToGameKeyMapping"), "getInstanceForCanvas_2", [jr.get_field(this, "allBinaryGameCanvas"), l_key_code])
            case jr.truth(jr.ne(l_game_key, jr.get_field(this, "NONE"))) {
                True -> {
                let l_game_key_event = jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [jr.get_field(this, "allBinaryGameCanvas"), l_game_key])
                jr.call(jr.get_field(this, "downGameKeyEventHandler"), "fireEvent_1", [l_game_key_event])
                jr.call(jr.call(jr.get_field(this, "downGameKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEvent_1", [l_game_key_event])
                Nil
            }
                False -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "GameCanvasInputProcessor", "gameInputStrings"), "NO_KEY")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "GameCanvasInputProcessor", "gameInputStrings"), "ADD_KEY_EVENT")])
                Nil
            }
            }
            let l_key_code_as_integer = jr.call(jr.get_field(this, "smallIntegerSingletonFactory"), "getAtNoThrow_1", [l_key_code])
            jr.call(jr.get_field(this, "downKeyEventHandler"), "fireEventI_1", [l_key_code_as_integer])
            jr.call(jr.call(jr.get_field(this, "downKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEventI_1", [l_key_code_as_integer])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.JStr("Key Event Error"), this, jr.get_field(jr.get_inherited(this, "GameCanvasInputProcessor", "gameInputStrings"), "ADD_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m12__keyreleasedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas, l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(this, "removeGameKeyEvent_4", [l_canvas, l_key_code, l_device_id, jr.JBool(False)])
    jr.JNull
}

fn c1_m13__removegamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas, l_key_code, l_device_id, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.try_catch(fn() {
            let l_game_key = jr.call(jr.get_field(this, "inputToGameKeyMapping"), "getInstanceForCanvas_2", [l_canvas, l_key_code])
            case jr.truth(jr.ne(l_game_key, jr.get_field(this, "NONE"))) {
                True -> {
                let l_game_key_event_source_interface = l_canvas
                let l_game_key_event = jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [l_game_key_event_source_interface, l_game_key])
                jr.call(jr.get_field(this, "upGameKeyEventHandler"), "fireEvent_1", [l_game_key_event])
                jr.call(jr.call(jr.get_field(this, "upGameKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEvent_1", [l_game_key_event])
                Nil
            }
                False -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "GameCanvasInputProcessor", "gameInputStrings"), "NO_KEY")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "GameCanvasInputProcessor", "gameInputStrings"), "REMOVE_KEY_EVENT")])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.JStr("Key Event Error"), this, jr.get_field(jr.get_inherited(this, "GameCanvasInputProcessor", "gameInputStrings"), "REMOVE_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
    jr.super_init("InputProcessor", this, [])
    c1_jfields(this)
        jr.set_field(this, "allBinaryGameCanvas", l_all_binary_game_canvas)
        jr.call(jr.get_field(this, "inputToGameKeyMapping"), "init_1", [jr.get_field(this, "allBinaryGameCanvas")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameCanvasInputProcessor",
        "org.allbinary.game.displayable.canvas.GameCanvasInputProcessor",
        "InputProcessor",
        [],
        False,
        [#("logUtil", jr.JNull), #("allBinaryGameCanvas", jr.JNull), #("downGameKeyEventHandler", jr.JNull), #("upGameKeyEventHandler", jr.JNull), #("downKeyEventHandler", jr.JNull), #("smallIntegerSingletonFactory", jr.JNull), #("inputToGameKeyMapping", jr.JNull), #("NONE", jr.JNull), #("gameKeyEventFactory", jr.JNull)],
        [],
        [
            jr.Method("keyPressedByDevice_2", ["int", "int"], False, c1_m11__keypressedbydevice), 
            jr.Method("keyReleasedByDevice_3", ["Canvas", "int", "int"], False, c1_m12__keyreleasedbydevice), 
            jr.Method("removeGameKeyEvent_4", ["Canvas", "int", "int", "boolean"], False, c1_m13__removegamekeyevent), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

