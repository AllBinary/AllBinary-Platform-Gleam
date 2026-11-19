// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "gameKeyEventFactory", jr.call_static("GameKeyEventFactory", "getInstance_0", []))
    jr.set_field(this, "TOUCH_BUTTON_SOURCE_ID", jr.as_i(jr.get_field(jr.get_field(this, "gameKeyEventFactory"), "TOUCH_BUTTON_SOURCE_ID")))
    jr.set_field(this, "gameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_to_game_key_mapping] = jargs
        jr.try_catch(fn() {
            let l_game_key = jr.call(l_input_to_game_key_mapping, "getInstance_1", [jr.call_inherited(this, "TouchButtonInput", "getId_0", [])])
            jr.set_field(this, "gameKeyEvent", jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [this, l_game_key]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "UPDATE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m7__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "TOUCH_BUTTON_SOURCE_ID"))
}

fn c1_m8__getgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameKeyEvent")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id, l_name] = jargs
    let l_id = jr.as_i(l_id)
        jr.super_init("Input", this, [l_id, l_name])
        c1_jfields(this)
        let l_input_factory = jr.call_static("InputFactory", "getInstance_0", [])
        jr.call(l_input_factory, "add_2", [jr.call_inherited(this, "TouchButtonInput", "getId_0", []), this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonInput",
        "org.allbinary.input.motion.button.TouchButtonInput",
        "Input",
        ["GameKeyEventSourceInterface"],
        False,
        [#("logUtil", jr.JNull), #("gameKeyEventFactory", jr.JNull), #("TOUCH_BUTTON_SOURCE_ID", jr.JInt(0)), #("gameKeyEvent", jr.JNull)],
        [],
        [
            jr.Method("update_1", ["InputToGameKeyMapping"], False, c1_m6__update), 
            jr.Method("getSourceId_0", [], False, c1_m7__getsourceid), 
            jr.Method("getGameKeyEvent_0", [], False, c1_m8__getgamekeyevent), 
            jr.Method("jinit_2", ["int", "String"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

