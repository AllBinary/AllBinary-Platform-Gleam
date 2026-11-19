// Generated Code Do Not Modify
// package org.allbinary.game.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameLevelDisplayChangeEventListenersFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameLevelDisplayChangeEventListenersFactory", "instance", jr.new("GameLevelDisplayChangeEventListenersFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameLevelDisplayChangeEventListenersFactory", "instance")
}

fn c1_m4__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display_change_event_listener] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_display_change_event_listener])
        jr.call(jr.call_static("DisplayChangeEventHandler", "getInstance_0", []), "addListenerInterface_1", [l_display_change_event_listener])
    jr.JNull
}

fn c1_m5__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_display_change_event_handler = jr.call_static("DisplayChangeEventHandler", "getInstance_0", [])
        let l_display_change_event_listener = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_display_change_event_listener, jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_index)))
            jr.call(l_display_change_event_handler, "removeListener_1", [jr.get(l_display_change_event_listener)])
            Nil
        })
            Nil
        }
        jr.call(jr.get_field(this, "list"), "clear_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameLevelDisplayChangeEventListenersFactory",
        "org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory",
        "Object",
        [],
        False,
        [#("list", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("add_1", ["DisplayChangeEventListener"], False, c1_m4__add), 
            jr.Method("clear_0", [], False, c1_m5__clear), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

