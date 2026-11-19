// Generated Code Do Not Modify
// package org.allbinary.game.input.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyEventUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        let l_game_key_event = l_any_type
    jr.as_i(jr.call(l_game_key_event, "getKey_0", []))
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyEventUtil",
        "org.allbinary.game.input.event.GameKeyEventUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getKey_1", ["Object"], True, c1_m2__getkey), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

