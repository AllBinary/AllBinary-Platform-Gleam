// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoPlayerGameInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoPlayerGameInput", "SINGLETON", jr.new("NoPlayerGameInput", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoPlayerGameInput", "SINGLETON")
}

fn c1_m4__ondowngamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
    jr.JNull
}

fn c1_m5__onupgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("PlayerGameInput", this, [jr.new("BasicArrayListD", []), jr.new("BasicArrayListD", []), jr.JInt(-1)])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoPlayerGameInput",
        "org.allbinary.game.input.NoPlayerGameInput",
        "PlayerGameInput",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("onDownGameKeyEvent_1", ["GameKeyEvent"], False, c1_m4__ondowngamekeyevent), 
            jr.Method("onUpGameKeyEvent_1", ["GameKeyEvent"], False, c1_m5__onupgamekeyevent), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

