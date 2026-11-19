// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKey

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameKey", "NULL_GAME_KEY", jr.new("GameKey", [jr.JInt(-1), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")]))
    jr.JNull
}

fn c1_m3__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("GameKey ")]), "append_1", [jr.call_super("Input", this, "toString_0", [])]), "toString_0", [])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key, l_name] = jargs
    let l_key = jr.as_i(l_key)
        jr.super_init("Input", this, [l_key, l_name])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKey",
        "org.allbinary.game.input.GameKey",
        "Input",
        [],
        False,
        [],
        [#("NULL_GAME_KEY", jr.JNull)],
        [
            jr.Method("toString_0", [], False, c1_m3__tostring), 
            jr.Method("jinit_2", ["int", "String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

