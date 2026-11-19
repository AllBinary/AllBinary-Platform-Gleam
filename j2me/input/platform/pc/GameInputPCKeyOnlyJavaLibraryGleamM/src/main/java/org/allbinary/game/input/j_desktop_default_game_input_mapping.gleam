// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DesktopDefaultGameInputMapping

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("PersistentInputMapping", this, [jr.get_field(jr.call_static("GamePersistanceStrings", "getInstance_0", []), "DEFAULT_INPUT_MAPPING_RECORD_ID")])
        c1_jfields(this)
        let l_input_to_game_key_mapping = jr.call_inherited(this, "DesktopDefaultGameInputMapping", "getInputMapping_0", [])
        let l_pc_key_factory = jr.call_static("PCKeyFactory", "getInstance_0", [])
        let l_game_key_factory = jr.call_static("GameKeyFactory", "getInstance_0", [])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "FIRE"), jr.get_field(l_pc_key_factory, "ENTER")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_pc_key_factory, "FOUR")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_pc_key_factory, "_P")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_pc_key_factory, "p")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_pc_key_factory, "DPAD_UP")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_pc_key_factory, "DPAD_DOWN")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_pc_key_factory, "DPAD_LEFT")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_pc_key_factory, "DPAD_RIGHT")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM1"), jr.get_field(l_pc_key_factory, "FIVE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM7"), jr.get_field(l_pc_key_factory, "_Y")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM9"), jr.get_field(l_pc_key_factory, "_I")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_pc_key_factory, "_U")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_pc_key_factory, "_H")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_pc_key_factory, "_J")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_pc_key_factory, "_N")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM5"), jr.get_field(l_pc_key_factory, "_M")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM7"), jr.get_field(l_pc_key_factory, "y")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM9"), jr.get_field(l_pc_key_factory, "i")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_pc_key_factory, "u")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_pc_key_factory, "h")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_pc_key_factory, "j")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_pc_key_factory, "n")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM5"), jr.get_field(l_pc_key_factory, "m")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM7"), jr.get_field(l_pc_key_factory, "_Q")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM9"), jr.get_field(l_pc_key_factory, "_E")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_pc_key_factory, "_W")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_pc_key_factory, "_A")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_pc_key_factory, "_D")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_pc_key_factory, "_S")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM5"), jr.get_field(l_pc_key_factory, "_X")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM7"), jr.get_field(l_pc_key_factory, "q")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM9"), jr.get_field(l_pc_key_factory, "e")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "UP"), jr.get_field(l_pc_key_factory, "w")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEFT"), jr.get_field(l_pc_key_factory, "a")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "RIGHT"), jr.get_field(l_pc_key_factory, "d")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "DOWN"), jr.get_field(l_pc_key_factory, "s")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM5"), jr.get_field(l_pc_key_factory, "x")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM3"), jr.get_field(l_pc_key_factory, "THREE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM0"), jr.get_field(l_pc_key_factory, "ZERO")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM0"), jr.get_field(l_pc_key_factory, "ONE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_NUM0"), jr.get_field(l_pc_key_factory, "SPACE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_POUND"), jr.get_field(l_pc_key_factory, "DEL")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_POUND"), jr.get_field(l_pc_key_factory, "TWO")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_STAR"), jr.get_field(l_pc_key_factory, "ESCAPE")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "KEY_STAR"), jr.get_field(l_pc_key_factory, "STAR")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEVEL_DOWN"), jr.get_field(l_pc_key_factory, "COMMA")])
        jr.call(l_input_to_game_key_mapping, "add_2", [jr.get_field(l_game_key_factory, "LEVEL_UP"), jr.get_field(l_pc_key_factory, "PERIOD")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DesktopDefaultGameInputMapping",
        "org.allbinary.game.input.DesktopDefaultGameInputMapping",
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

