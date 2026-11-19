// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScreenListenerHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "screenListenerInterface", jr.new("ScreenEmptyListener", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ScreenListenerHandler", "instance", jr.new("ScreenListenerHandler", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ScreenListenerHandler", "instance")
}

fn c1_m4__setlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_screen_listener_interface] = jargs
        jr.set_field(this, "screenListenerInterface", l_screen_listener_interface)
    jr.JNull
}

fn c1_m5__firewithstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_full_screen] = jargs
        jr.call(jr.get_field(this, "screenListenerInterface"), "onFullScreen_1", [l_is_full_screen])
    jr.JNull
}

fn c1_m6__fire(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "screenListenerInterface"), "onFullScreenDisplay_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScreenListenerHandler",
        "org.allbinary.graphics.ScreenListenerHandler",
        "Object",
        [],
        False,
        [#("screenListenerInterface", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setListener_1", ["ScreenListenerInterface"], False, c1_m4__setlistener), 
            jr.Method("fireWithState_1", ["boolean"], False, c1_m5__firewithstate), 
            jr.Method("fire_0", [], False, c1_m6__fire), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

