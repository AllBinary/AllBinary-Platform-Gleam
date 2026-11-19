// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.notification
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameNotificationHud

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "METHOD_NAME", jr.JStr("onGameNotificationEvent"))
    jr.set_field(this, "lastGameNotificationEvent", jr.get_static("GameNotification", "NULL_GAME_NOTIFICATION_EVENT"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameNotificationHud", "NULL_GAME_NOTIFICATION", jr.new("GameNotificationHud", [jr.get_field(jr.call_static("BasicHudFactory", "getInstance_0", []), "TOPCENTER"), jr.get_field(jr.call_static("BasicHudFactory", "getInstance_0", []), "HORIZONTAL"), jr.JInt(0), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "RED")]))
    jr.JNull
}

fn c1_m3__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m6__ongamenotificationevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_notification_event] = jargs
        case jr.truth(jr.ne(jr.get_field(this, "lastGameNotificationEvent"), l_game_notification_event)) {
            True -> {
            jr.set_field(this, "lastGameNotificationEvent", l_game_notification_event)
            jr.call(jr.get_inherited(this, "GameNotificationHud", "logUtil"), "putF_3", [jr.call(l_game_notification_event, "getString_0", []), this, jr.get_field(this, "METHOD_NAME")])
            Nil
        }
            False -> Nil
        }
        jr.call(this, "add_4", [jr.call(l_game_notification_event, "getString_0", []), jr.call(l_game_notification_event, "getSeconds_0", []), jr.call(l_game_notification_event, "getBasicColorP_0", []), jr.call(l_game_notification_event, "getPermanent_0", [])])
    jr.JNull
}

fn c1_m7__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string, l_seconds, l_basic_color, l_permanent] = jargs
    jr.JNull
}

fn c1_m8__processtick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m10__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_location, l_direction, l_buffer_zone, l_basic_color] = jargs
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    let l_buffer_zone = jr.as_i(l_buffer_zone)
        jr.super_init("BasicHud", this, [l_location, l_direction, l_buffer_zone, l_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameNotificationHud",
        "org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud",
        "BasicHud",
        ["GameNotificationListenerInterface"],
        False,
        [#("METHOD_NAME", jr.JNull), #("lastGameNotificationEvent", jr.JNull)],
        [#("NULL_GAME_NOTIFICATION", jr.JNull)],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m3__onevent), 
            jr.Method("onGameNotificationEvent_1", ["GameNotificationEvent"], False, c1_m6__ongamenotificationevent), 
            jr.Method("add_4", ["String", "Integer", "BasicColor", "Boolean"], False, c1_m7__add), 
            jr.Method("processTick_0", [], False, c1_m8__processtick), 
            jr.Method("paint_1", ["Graphics"], False, c1_m9__paint), 
            jr.Method("clear_0", [], False, c1_m10__clear), 
            jr.Method("jinit_4", ["int", "int", "int", "BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

