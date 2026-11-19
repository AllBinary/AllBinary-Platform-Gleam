// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MultiplayerBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MultiplayerBehavior", "NULL_MULTIPLAYER_BEHAVIOR", jr.new("MultiplayerBehavior", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.JNull
}

fn c1_m3__starttick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__endtick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__getapproximateelapsed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.JLong(0))
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_username] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MultiplayerBehavior",
        "org.allbinary.game.multiplayer.layer.MultiplayerBehavior",
        "Object",
        [],
        False,
        [],
        [#("NULL_MULTIPLAYER_BEHAVIOR", jr.JNull)],
        [
            jr.Method("startTick_0", [], False, c1_m3__starttick), 
            jr.Method("endTick_0", [], False, c1_m4__endtick), 
            jr.Method("getApproximateElapsed_0", [], False, c1_m5__getapproximateelapsed), 
            jr.Method("jinit_1", ["String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

