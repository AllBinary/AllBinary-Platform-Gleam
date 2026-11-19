// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyMappingFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "intKeyToGameKey", jr.new_array("L", 1, [jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameKeyMappingFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("GameKeyMappingFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("GameKeyMappingFactory", "instance", jr.new("GameKeyMappingFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("GameKeyMappingFactory", "instance")
}

fn c1_m5__getgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
    jr.aget(jr.get_field(this, "intKeyToGameKey"), l_key)
}

fn c1_m6__setgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key] = jargs
        jr.aset(jr.get_field(this, "intKeyToGameKey"), jr.call(l_game_key, "getId_0", []), l_game_key)
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_game_key_factory = jr.call_static("GameKeyFactory", "getInstance_0", [])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "NONE")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "UP")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "DOWN")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "LEFT")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "RIGHT")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_POUND")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_STAR")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM0")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM1")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM2")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM3")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM4")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM5")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM6")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM7")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM8")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "KEY_NUM9")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "GAME_A")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "GAME_B")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "GAME_C")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "GAME_D")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "FIRE")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "LEVEL_DOWN")])
        jr.call(this, "setGameKey_1", [jr.get_field(l_game_key_factory, "LEVEL_UP")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyMappingFactory",
        "org.allbinary.game.input.GameKeyMappingFactory",
        "Object",
        [],
        False,
        [#("intKeyToGameKey", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getGameKey_1", ["int"], False, c1_m5__getgamekey), 
            jr.Method("setGameKey_1", ["GameKey"], False, c1_m6__setgamekey), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

