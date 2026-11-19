// Generated Code Do Not Modify
// package org.allbinary.game.layer.hud.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameNotificationEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "string", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__getstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "string")
}

fn c1_m7__getseconds(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "seconds")
}

fn c1_m8__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_m9__getpermanent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "removeable")
}

fn c1_m10__setstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
        jr.set_field(this, "string", l_string)
    jr.JNull
}

fn c1_m11__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_string, l_seconds, l_basic_color, l_permanent] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
        jr.call(this, "setString_1", [l_string])
        jr.set_field(this, "seconds", l_seconds)
        jr.call(this, "setBasicColorP_1", [l_basic_color])
        jr.set_field(this, "removeable", l_permanent)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameNotificationEvent",
        "org.allbinary.game.layer.hud.event.GameNotificationEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("string", jr.JNull), #("seconds", jr.JNull), #("basicColor", jr.JNull), #("removeable", jr.JNull)],
        [],
        [
            jr.Method("getString_0", [], False, c1_m6__getstring), 
            jr.Method("getSeconds_0", [], False, c1_m7__getseconds), 
            jr.Method("getBasicColorP_0", [], False, c1_m8__getbasiccolorp), 
            jr.Method("getPermanent_0", [], False, c1_m9__getpermanent), 
            jr.Method("setString_1", ["String"], False, c1_m10__setstring), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m11__setbasiccolorp), 
            jr.Method("jinit_5", ["Object", "String", "Integer", "BasicColor", "Boolean"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

