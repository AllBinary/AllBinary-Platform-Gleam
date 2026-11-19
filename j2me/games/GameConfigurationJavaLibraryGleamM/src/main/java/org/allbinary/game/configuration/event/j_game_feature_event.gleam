// Generated Code Do Not Modify
// package org.allbinary.game.configuration.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFeatureEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getwhatchanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "whatChanged")
}

fn c1_m4__getgameoption(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_inherited(this, "GameFeatureEvent", "getSource_0", [])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_what_changed] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
        jr.set_field(this, "whatChanged", l_what_changed)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameFeatureEvent",
        "org.allbinary.game.configuration.event.GameFeatureEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("whatChanged", jr.JNull)],
        [],
        [
            jr.Method("getWhatChanged_0", [], False, c1_m3__getwhatchanged), 
            jr.Method("getGameOption_0", [], False, c1_m4__getgameoption), 
            jr.Method("jinit_2", ["Object", "String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

