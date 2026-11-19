// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.notification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameNotification

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "stringList", jr.new("BasicArrayListD", []))
    jr.set_field(this, "timeList", jr.new("BasicArrayListD", []))
    jr.set_field(this, "colorList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameNotification", "NULL_GAME_NOTIFICATION_EVENT", jr.new("GameNotificationEvent", [jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new("Integer", [jr.JInt(0)]), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "RED"), jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE")]))
    jr.JNull
}

fn c1_m5__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string, l_seconds, l_basic_color] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "stringList"), "contains_1", [l_string]))) {
            True -> {
            jr.call(jr.get_field(this, "stringList"), "add_1", [l_string])
            jr.call(jr.get_field(this, "timeList"), "add_1", [l_seconds])
            jr.call(jr.get_field(this, "colorList"), "add_1", [l_basic_color])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "stringList"), "clear_0", [])
        jr.call(jr.get_field(this, "timeList"), "clear_0", [])
        jr.call(jr.get_field(this, "colorList"), "clear_0", [])
    jr.JNull
}

fn c1_m7__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "stringList"), "size_0", []))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameNotification",
        "org.allbinary.game.ag.layer.hud.basic.notification.GameNotification",
        "Object",
        [],
        False,
        [#("stringList", jr.JNull), #("timeList", jr.JNull), #("colorList", jr.JNull)],
        [#("NULL_GAME_NOTIFICATION_EVENT", jr.JNull)],
        [
            jr.Method("add_3", ["String", "Integer", "BasicColor"], False, c1_m5__add), 
            jr.Method("clear_0", [], False, c1_m6__clear), 
            jr.Method("getSize_0", [], False, c1_m7__getsize), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

