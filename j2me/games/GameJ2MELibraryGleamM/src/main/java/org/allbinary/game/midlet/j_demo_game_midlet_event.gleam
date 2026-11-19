// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoGameMidletEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call_inherited(this, "DemoGameMidletEvent", "setSource_1", [l_any_type])
    jr.JNull
}

fn c1_m4__setdemogamemidletstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_demo_game_midlet_state] = jargs
        jr.set_field(this, "demoGameMidletState", l_demo_game_midlet_state)
    jr.JNull
}

fn c1_m5__getdemogamemidletstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "demoGameMidletState")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_demo_game_midlet_state] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
        jr.set_field(this, "demoGameMidletState", l_demo_game_midlet_state)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoGameMidletEvent",
        "org.allbinary.game.midlet.DemoGameMidletEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("demoGameMidletState", jr.JNull)],
        [],
        [
            jr.Method("init_1", ["Object"], False, c1_m3__init), 
            jr.Method("setDemoGameMidletState_1", ["DemoGameMidletState"], False, c1_m4__setdemogamemidletstate), 
            jr.Method("getDemoGameMidletState_0", [], False, c1_m5__getdemogamemidletstate), 
            jr.Method("jinit_2", ["Object", "DemoGameMidletState"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

