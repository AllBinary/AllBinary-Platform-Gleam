// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RemoteInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RemoteInfo", "REMOTE_INFO", jr.new("RemoteInfo", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.JInt(-1), jr.JInt(-1), jr.get_static("RemoteInfo", "NEW_PLAYER_ID")]))
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_username, l_actor_session_id, l_player_input_id, l_id] = jargs
    let l_actor_session_id = jr.as_i(l_actor_session_id)
    let l_player_input_id = jr.as_i(l_player_input_id)
    let l_id = jr.as_i(l_id)
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RemoteInfo",
        "org.allbinary.game.multiplayer.layer.RemoteInfo",
        "Object",
        [],
        False,
        [],
        [#("NEW_PLAYER_ID", jr.as_i(jr.JInt(0))), #("REMOTE_INFO", jr.JNull)],
        [
            jr.Method("jinit_4", ["String", "int", "int", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

