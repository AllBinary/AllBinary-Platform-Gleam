// Generated Code Do Not Modify
// package org.allbinary.game.layer.hud.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameNotificationEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "enabled", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameNotificationEventHandler", "instance", jr.new("GameNotificationEventHandler", []))
    jr.JNull
}

fn c1_m4__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_event_listener_interface = jr.cell(jr.get_static("NullEventListener", "NULL_EVENT_LISTENER"))
        let l_list = jr.get_inherited(this, "GameNotificationEventHandler", "eventListenerInterfaceList")
        case jr.truth(jr.gt(jr.call(l_list, "size_0", []), jr.JInt(0))) {
            True -> {
            jr.set(l_event_listener_interface, jr.aget(jr.get_field(l_list, "objectArray"), jr.JInt(0)))
            Nil
        }
            False -> Nil
        }
        jr.call_super("BasicEventHandler", this, "removeAllListeners_0", [])
        case jr.truth(jr.ne(jr.get(l_event_listener_interface), jr.get_static("NullEventListener", "NULL_EVENT_LISTENER"))) {
            True -> {
            jr.call_inherited(this, "GameNotificationEventHandler", "addListenerInterface_1", [jr.get(l_event_listener_interface)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameNotificationEventHandler", "instance")
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
    jr.method(fn() {
            case jr.truth(jr.not(jr.get_field(this, "enabled"))) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_game_notification_listener_interface = l_event_listener_interface
            jr.call(l_game_notification_listener_interface, "onGameNotificationEvent_1", [l_event_object])
        jr.JNull
    })
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicEventHandler", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameNotificationEventHandler",
        "org.allbinary.game.layer.hud.event.GameNotificationEventHandler",
        "BasicEventHandler",
        [],
        False,
        [#("enabled", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("removeAllListeners_0", [], False, c1_m4__removealllisteners), 
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m6__process), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

