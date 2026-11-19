// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformFormInputMappingFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "inputToGameKeyMapping", jr.call_static("InputToGameKeyMapping", "getNullInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlatformFormInputMappingFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("PlatformFormInputMappingFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("PlatformFormInputMappingFactory", "instance", jr.new("PlatformFormInputMappingFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("PlatformFormInputMappingFactory", "instance")
}

fn c1_m5__getorcreate(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "inputToGameKeyMapping"), jr.call_static("InputToGameKeyMapping", "getNullInstance_0", []))) {
                True -> {
                let l_pc_key_factory = jr.call_static("PCKeyFactory", "getInstance_0", [])
                let l_input_to_game_key_mapping = jr.new("InputToGameKeyMapping", [])
                let l_game_key_factory = jr.call_static("GameKeyFactory", "getInstance_0", [])
                let l_basic_touch_input_factory = jr.call_static("BasicTouchInputFactory", "getInstance_0", [])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_pc_key_factory, "DPAD_UP")])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_pc_key_factory, "DPAD_DOWN")])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_pc_key_factory, "DPAD_LEFT")])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_pc_key_factory, "DPAD_RIGHT")])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_pc_key_factory, "ENTER")])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_basic_touch_input_factory, "UP")])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_basic_touch_input_factory, "LEFT")])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_basic_touch_input_factory, "RIGHT")])
                jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_basic_touch_input_factory, "DOWN")])
                jr.set_field(this, "inputToGameKeyMapping", l_input_to_game_key_mapping)
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "GET_INSTANCE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.get_field(this, "inputToGameKeyMapping")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformFormInputMappingFactory",
        "org.allbinary.game.input.PlatformFormInputMappingFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("inputToGameKeyMapping", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getOrCreate_0", [], False, c1_m5__getorcreate), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

