// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInputMapping

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "gameKey", jr.get_static("GameKey", "NULL_GAME_KEY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key] = jargs
        jr.set_field(this, "gameKey", l_game_key)
    jr.JNull
}

fn c1_m5__getgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameKey")
}

fn c1_m6__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.set_field(this, "name", l_name)
    jr.JNull
}

fn c1_m7__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_game_key] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setName_1", [l_name])
        jr.call(this, "setGameKey_1", [l_game_key])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInputMapping",
        "org.allbinary.game.input.mapping.GameInputMapping",
        "Object",
        [],
        False,
        [#("name", jr.JNull), #("gameKey", jr.JNull)],
        [],
        [
            jr.Method("setGameKey_1", ["GameKey"], False, c1_m4__setgamekey), 
            jr.Method("getGameKey_0", [], False, c1_m5__getgamekey), 
            jr.Method("setName_1", ["String"], False, c1_m6__setname), 
            jr.Method("getName_0", [], False, c1_m7__getname), 
            jr.Method("jinit_2", ["String", "GameKey"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

