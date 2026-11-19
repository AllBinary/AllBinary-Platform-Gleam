// Generated Code Do Not Modify
// package org.allbinary.input.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VirtualKeyboardEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SHOW_EVENT", jr.new("VirtualKeyboardEvent", [jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "TRUE")]))
    jr.set_field(this, "HIDE_EVENT", jr.new("VirtualKeyboardEvent", [jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("VirtualKeyboardEventHandler", "gameKeyEventHandler", jr.new("VirtualKeyboardEventHandler", []))
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("VirtualKeyboardEventHandler", "gameKeyEventHandler")
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
        let l_virtual_keyboard_event_listener_interface = l_event_listener_interface
        jr.call(l_virtual_keyboard_event_listener_interface, "onVirtualKeyboardEvent_1", [l_event_object])
    jr.JNull
}

fn c1_m7__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call_static("Thread", "sleep_1", [jr.JInt(120)])
            jr.call_inherited(this, "VirtualKeyboardEventHandler", "fireEvent_1", [jr.get_field(this, "SHOW_EVENT")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "VirtualKeyboardEventHandler", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "VirtualKeyboardEventHandler", "commonStrings"), "EXCEPTION"), this, jr.JStr("open"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m8__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call_static("Thread", "sleep_1", [jr.JInt(120)])
            jr.call_inherited(this, "VirtualKeyboardEventHandler", "fireEvent_1", [jr.get_field(this, "HIDE_EVENT")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "VirtualKeyboardEventHandler", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "VirtualKeyboardEventHandler", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "VirtualKeyboardEventHandler", "commonStrings"), "CLOSE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicEventHandler", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VirtualKeyboardEventHandler",
        "org.allbinary.input.event.VirtualKeyboardEventHandler",
        "BasicEventHandler",
        [],
        False,
        [#("SHOW_EVENT", jr.JNull), #("HIDE_EVENT", jr.JNull)],
        [#("gameKeyEventHandler", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m6__process), 
            jr.Method("open_0", [], False, c1_m7__open), 
            jr.Method("close_0", [], False, c1_m8__close), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

