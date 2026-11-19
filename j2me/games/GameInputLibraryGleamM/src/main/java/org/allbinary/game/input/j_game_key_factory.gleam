// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.new("GameKey", [jr.sub(jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX"), jr.JInt(1)), jr.JStr("None")]))
    jr.set_field(this, "UP", jr.new("GameKey", [jr.get_static("Canvas", "UP"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "UP")]))
    jr.set_field(this, "DOWN", jr.new("GameKey", [jr.get_static("Canvas", "DOWN"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "DOWN")]))
    jr.set_field(this, "LEFT", jr.new("GameKey", [jr.get_static("Canvas", "LEFT"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "LEFT")]))
    jr.set_field(this, "RIGHT", jr.new("GameKey", [jr.get_static("Canvas", "RIGHT"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "RIGHT")]))
    jr.set_field(this, "KEY_POUND", jr.new("GameKey", [jr.get_static("Canvas", "KEY_POUND"), jr.JStr("POUND")]))
    jr.set_field(this, "KEY_STAR", jr.new("GameKey", [jr.get_static("Canvas", "KEY_STAR"), jr.JStr("STAR")]))
    jr.set_field(this, "KEY_NUM0", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM0"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "ZERO")]))
    jr.set_field(this, "KEY_NUM1", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM1"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "ONE")]))
    jr.set_field(this, "KEY_NUM2", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM2"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "TWO")]))
    jr.set_field(this, "KEY_NUM3", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM3"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "THREE")]))
    jr.set_field(this, "KEY_NUM4", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM4"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "FOUR")]))
    jr.set_field(this, "KEY_NUM5", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM5"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "FIVE")]))
    jr.set_field(this, "KEY_NUM6", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM6"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "SIX")]))
    jr.set_field(this, "KEY_NUM7", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM7"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "SEVEN")]))
    jr.set_field(this, "KEY_NUM8", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM8"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "EIGHT")]))
    jr.set_field(this, "KEY_NUM9", jr.new("GameKey", [jr.get_static("Canvas", "KEY_NUM9"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "NINE")]))
    jr.set_field(this, "GAME_A", jr.new("GameKey", [jr.get_static("Canvas", "GAME_A"), jr.JStr("Game A")]))
    jr.set_field(this, "GAME_B", jr.new("GameKey", [jr.get_static("Canvas", "GAME_B"), jr.JStr("Game B")]))
    jr.set_field(this, "GAME_C", jr.new("GameKey", [jr.get_static("Canvas", "GAME_C"), jr.JStr("Game C")]))
    jr.set_field(this, "GAME_D", jr.new("GameKey", [jr.get_static("Canvas", "GAME_D"), jr.JStr("Game D")]))
    jr.set_field(this, "FIRE", jr.new("GameKey", [jr.get_static("Canvas", "FIRE"), jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "FIRE")]))
    jr.set_field(this, "LEVEL_DOWN", jr.new("GameKey", [jr.add(jr.get_static("Canvas", "KEY_NUM9"), jr.JInt(1)), jr.JStr("Cheat Level Up")]))
    jr.set_field(this, "LEVEL_UP", jr.new("GameKey", [jr.add(jr.get_static("Canvas", "KEY_NUM9"), jr.JInt(2)), jr.JStr("Cheat Level Down")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameKeyFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("GameKeyFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("GameKeyFactory", "instance", jr.new("GameKeyFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("GameKeyFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyFactory",
        "org.allbinary.game.input.GameKeyFactory",
        "Object",
        [],
        False,
        [#("NONE", jr.JNull), #("UP", jr.JNull), #("DOWN", jr.JNull), #("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("KEY_POUND", jr.JNull), #("KEY_STAR", jr.JNull), #("KEY_NUM0", jr.JNull), #("KEY_NUM1", jr.JNull), #("KEY_NUM2", jr.JNull), #("KEY_NUM3", jr.JNull), #("KEY_NUM4", jr.JNull), #("KEY_NUM5", jr.JNull), #("KEY_NUM6", jr.JNull), #("KEY_NUM7", jr.JNull), #("KEY_NUM8", jr.JNull), #("KEY_NUM9", jr.JNull), #("GAME_A", jr.JNull), #("GAME_B", jr.JNull), #("GAME_C", jr.JNull), #("GAME_D", jr.JNull), #("FIRE", jr.JNull), #("LEVEL_DOWN", jr.JNull), #("LEVEL_UP", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

