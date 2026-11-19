// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionJ2MEDefaultGameInputMapping

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("PersistentInputMapping", this, [jr.get_field(jr.call_static("GamePersistanceStrings", "getInstance_0", []), "DEFAULT_INPUT_MAPPING_RECORD_ID")])
        c1_jfields(this)
        let l_input_to_game_key_mapping = jr.call_inherited(this, "MotionJ2MEDefaultGameInputMapping", "getInputMapping_0", [])
        let l_game_key_factory = jr.call_static("GameKeyFactory", "getInstance_0", [])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_game_key_factory, "KEY_NUM2")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_game_key_factory, "KEY_NUM4")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_game_key_factory, "KEY_NUM6")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_game_key_factory, "KEY_NUM8")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_game_key_factory, "GAME_A")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM3"), jr.get_field(l_game_key_factory, "GAME_B")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM7"), jr.get_field(l_game_key_factory, "GAME_C")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM9"), jr.get_field(l_game_key_factory, "GAME_D")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEVEL_DOWN"), jr.get_field(l_game_key_factory, "LEVEL_DOWN")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEVEL_UP"), jr.get_field(l_game_key_factory, "LEVEL_UP")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_game_key_factory, "UP")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_game_key_factory, "DOWN")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_game_key_factory, "LEFT")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_game_key_factory, "RIGHT")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_POUND"), jr.get_field(l_game_key_factory, "KEY_POUND")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_STAR"), jr.get_field(l_game_key_factory, "KEY_STAR")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_game_key_factory, "KEY_NUM1")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM3"), jr.get_field(l_game_key_factory, "KEY_NUM3")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM5"), jr.get_field(l_game_key_factory, "KEY_NUM5")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM7"), jr.get_field(l_game_key_factory, "KEY_NUM7")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM9"), jr.get_field(l_game_key_factory, "KEY_NUM9")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM0"), jr.get_field(l_game_key_factory, "KEY_NUM0")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_game_key_factory, "FIRE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "UP")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "DOWN")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "LEFT")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "RIGHT")])
        let l_basic_touch_input_factory = jr.call_static("BasicTouchInputFactory", "getInstance_0", [])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_basic_touch_input_factory, "UP")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_basic_touch_input_factory, "LEFT")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_basic_touch_input_factory, "RIGHT")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_basic_touch_input_factory, "DOWN")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM0"), jr.get_field(l_basic_touch_input_factory, "SPECIAL_BUTTON_FIVE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM7"), jr.get_field(l_basic_touch_input_factory, "SPECIAL_BUTTON_FOUR")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM9"), jr.get_field(l_basic_touch_input_factory, "SPECIAL_BUTTON_THREE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_basic_touch_input_factory, "SPECIAL_BUTTON_TWO")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM3"), jr.get_field(l_basic_touch_input_factory, "SPECIAL_BUTTON_ONE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM2"), jr.get_field(l_basic_touch_input_factory, "SPECIAL_BUTTON_SIX")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionJ2MEDefaultGameInputMapping",
        "org.allbinary.game.input.MotionJ2MEDefaultGameInputMapping",
        "PersistentInputMapping",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

