// Generated Code Do Not Modify
// package org.allbinary.game.input.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class UpGameKeyEventHandlerBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__addlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_game_input] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "list"), "contains_1", [l_player_game_input]))) {
            True -> {
            jr.call(jr.get_field(this, "list"), "add_1", [l_player_game_input])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m4__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "list"), "clear_0", [])
        jr.call_super("BasicEventHandler", this, "removeAllListeners_0", [])
    jr.JNull
}

fn c1_m5__removelistenersinglethreaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "list"), "remove_1", [l_event_listener_interface])
        jr.call_super("BasicEventHandler", this, "removeListenerSingleThreaded_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m6__removelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "list"), "remove_1", [l_event_listener_interface])
        jr.call_super("BasicEventHandler", this, "removeListener_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m7__fireevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.try_catch(fn() {
                let l_player_game_input = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_index))
                jr.call(l_player_game_input, "onUpGameKeyEvent_1", [l_event_object])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.call(jr.get_inherited(this, "UpGameKeyEventHandlerBase", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "UpGameKeyEventHandlerBase", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "FIRE_EVENT"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
            Nil
        }
        jr.call_super("BasicEventHandler", this, "fireEvent_1", [l_event_object])
    jr.JNull
}

fn c1_m8__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
        let l_up_game_key_event_listener_interface = l_event_listener_interface
        jr.call(l_up_game_key_event_listener_interface, "onUpGameKeyEvent_1", [l_event_object])
    jr.JNull
}

fn c1_m11__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        let l_size = jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
        jr.call(l_string_buffer, "append_1", [jr.call_super("BasicEventHandler", this, "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_static("UpGameKeyEventHandlerBase", "TOTAL_LISTENERS")])
        jr.call(l_string_buffer, "appendint_1", [l_size])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.try_catch(fn() {
                let l_event_listener_interface = jr.call(jr.get_field(this, "list"), "get_1", [jr.get(l_index)])
                jr.call(l_string_buffer, "append_1", [jr.get_static("UpGameKeyEventHandlerBase", "LISTENER_LABEL")])
                jr.call(l_string_buffer, "append_1", [jr.call(l_event_listener_interface, "toString_0", [])])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.call(jr.get_inherited(this, "UpGameKeyEventHandlerBase", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "UpGameKeyEventHandlerBase", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "UpGameKeyEventHandlerBase", "commonStrings"), "TOSTRING"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicEventHandler", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "UpGameKeyEventHandlerBase",
        "org.allbinary.game.input.event.UpGameKeyEventHandlerBase",
        "BasicEventHandler",
        [],
        False,
        [#("list", jr.JNull)],
        [#("TOTAL_LISTENERS", jr.JStr(" Total PlayerGameInput Listeners: ")), #("LISTENER_LABEL", jr.JStr(" PlayerGameInput Listener: "))],
        [
            jr.Method("addListener_1", ["PlayerGameInput"], False, c1_m3__addlistener), 
            jr.Method("removeAllListeners_0", [], False, c1_m4__removealllisteners), 
            jr.Method("removeListenerSingleThreaded_1", ["EventListenerInterface"], False, c1_m5__removelistenersinglethreaded), 
            jr.Method("removeListener_1", ["EventListenerInterface"], False, c1_m6__removelistener), 
            jr.Method("fireEvent_1", ["AllBinaryEventObject"], False, c1_m7__fireevent), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m8__process), 
            jr.Method("toString_0", [], False, c1_m11__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

