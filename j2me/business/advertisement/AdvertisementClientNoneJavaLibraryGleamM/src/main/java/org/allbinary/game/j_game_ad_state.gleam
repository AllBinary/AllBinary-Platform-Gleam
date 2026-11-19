// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameAdState

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__onvirtualkeyboardevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_virtual_keyboard_event] = jargs
    jr.JNull
}

fn c1_m3__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_super("GameAdStateBase", this, "onEvent_1", [l_event_object])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ad_configuration] = jargs
        jr.super_init("GameAdStateBase", this, [l_ad_configuration])
        c1_jfields(this)
        jr.call(jr.call_static("VirtualKeyboardEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameAdState",
        "org.allbinary.game.GameAdState",
        "GameAdStateBase",
        ["VirtualKeyboardEventListenerInterface"],
        False,
        [],
        [],
        [
            jr.Method("onVirtualKeyboardEvent_1", ["VirtualKeyboardEvent"], False, c1_m2__onvirtualkeyboardevent), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m3__onevent), 
            jr.Method("jinit_1", ["AdConfiguration"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

