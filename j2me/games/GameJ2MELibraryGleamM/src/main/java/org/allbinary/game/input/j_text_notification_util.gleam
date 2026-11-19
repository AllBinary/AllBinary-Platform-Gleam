// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TextNotificationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "TWO", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(2)]))
    jr.set_field(this, "FALSE", jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE"))
    jr.set_field(this, "gameNotificationEventHandler", jr.call_static("GameNotificationEventHandler", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TextNotificationUtil", "instance", jr.new("TextNotificationUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TextNotificationUtil", "instance")
}

fn c1_m3__fireerror(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_message] = jargs
        jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("ErrorSound", "getInstance_0", [])])
        jr.call(this, "fire_1", [l_message])
    jr.JNull
}

fn c1_m4__firenew(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_message] = jargs
        jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("SelectSound", "getInstance_0", [])])
        jr.call(this, "fire_1", [l_message])
    jr.JNull
}

fn c1_m5__firesuccess(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_message] = jargs
        jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("SelectSound", "getInstance_0", [])])
        jr.call(this, "fire_1", [l_message])
    jr.JNull
}

fn c1_m9__fire(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_message] = jargs
        let l_game_notification_event = jr.new("GameNotificationEvent", [this, l_message, jr.get_field(this, "TWO"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "RED"), jr.get_field(this, "FALSE")])
        jr.call(jr.get_field(this, "gameNotificationEventHandler"), "fireEvent_1", [l_game_notification_event])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TextNotificationUtil",
        "org.allbinary.game.input.TextNotificationUtil",
        "Object",
        [],
        False,
        [#("TWO", jr.JNull), #("FALSE", jr.JNull), #("gameNotificationEventHandler", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("fireError_1", ["String"], False, c1_m3__fireerror), 
            jr.Method("fireNew_1", ["String"], False, c1_m4__firenew), 
            jr.Method("fireSuccess_1", ["String"], False, c1_m5__firesuccess), 
            jr.Method("fire_1", ["String"], False, c1_m9__fire), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

