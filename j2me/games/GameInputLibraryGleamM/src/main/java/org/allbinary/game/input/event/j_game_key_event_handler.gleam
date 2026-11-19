// Generated Code Do Not Modify
// package org.allbinary.game.input.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "pressGameKeyEventHandler", jr.call_static("PressGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "upGameKeyEventHandler", jr.call_static("UpGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "downGameKeyEventHandler", jr.call_static("DownGameKeyEventHandler", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameKeyEventHandler", "instance", jr.new("GameKeyEventHandler", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameKeyEventHandler", "instance")
}

fn c1_m8__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "pressGameKeyEventHandler"), "removeAllListeners_0", [])
        jr.call(jr.get_field(this, "upGameKeyEventHandler"), "removeAllListeners_0", [])
        jr.call(jr.get_field(this, "downGameKeyEventHandler"), "removeAllListeners_0", [])
    jr.JNull
}

fn c1_m9__addlistenerforplayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface, l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_event_listener_interface, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD_LISTENER")])
        jr.call(jr.get_field(this, "pressGameKeyEventHandler"), "addListenerSingleThreaded_1", [l_event_listener_interface])
        jr.call(jr.call(jr.get_field(this, "upGameKeyEventHandler"), "getInstanceForPlayer_1", [l_player_input_id]), "addListenerSingleThreaded_1", [l_event_listener_interface])
        jr.call(jr.call(jr.get_field(this, "downGameKeyEventHandler"), "getInstanceForPlayer_1", [l_player_input_id]), "addListenerSingleThreaded_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m10__addlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_event_listener_interface, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD_LISTENER")])
        jr.call(jr.get_field(this, "pressGameKeyEventHandler"), "addListenerSingleThreaded_1", [l_event_listener_interface])
        jr.call(jr.get_field(this, "upGameKeyEventHandler"), "addListenerSingleThreaded_1", [l_event_listener_interface])
        jr.call(jr.get_field(this, "downGameKeyEventHandler"), "addListenerSingleThreaded_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m11__removelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_event_listener_interface, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "REMOVE_LISTENER")])
        jr.call(jr.get_field(this, "pressGameKeyEventHandler"), "removeListenerSingleThreaded_1", [l_event_listener_interface])
        jr.call(jr.get_field(this, "upGameKeyEventHandler"), "removeListenerSingleThreaded_1", [l_event_listener_interface])
        jr.call(jr.get_field(this, "downGameKeyEventHandler"), "removeListenerSingleThreaded_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyEventHandler",
        "org.allbinary.game.input.event.GameKeyEventHandler",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("pressGameKeyEventHandler", jr.JNull), #("upGameKeyEventHandler", jr.JNull), #("downGameKeyEventHandler", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("removeAllListeners_0", [], False, c1_m8__removealllisteners), 
            jr.Method("addListenerForPlayer_2", ["EventListenerInterface", "int"], False, c1_m9__addlistenerforplayer), 
            jr.Method("addListener_1", ["EventListenerInterface"], False, c1_m10__addlistener), 
            jr.Method("removeListener_1", ["EventListenerInterface"], False, c1_m11__removelistener), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

