// Generated Code Do Not Modify
// package org.allbinary.game.input.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class UpKeyEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "playerInputIdFactory", jr.call_static("LocalPlayerInputIdFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("UpKeyEventHandler", "instance", jr.new("UpKeyEventHandler", []))
    jr.set_static("UpKeyEventHandler", "instanceArray", jr.array_of("L", [jr.new("UpKeyEventHandlerBase", []), jr.new("UpKeyEventHandlerBase", []), jr.new("UpKeyEventHandlerBase", []), jr.new("UpKeyEventHandlerBase", []), jr.new("UpKeyEventHandlerBase", []), jr.new("UpKeyEventHandlerBase", [])]))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("UpKeyEventHandler", "instance")
}

fn c1_m5__getinstancefordevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_device_id] = jargs
    let l_device_id = jr.as_i(l_device_id)
        let l_player_input_id = jr.as_i(jr.call(jr.get_field(this, "playerInputIdFactory"), "getPlayerForDevice_1", [l_device_id]))
    jr.aget(jr.get_static("UpKeyEventHandler", "instanceArray"), l_player_input_id)
}

fn c1_m6__getinstanceforplayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
    jr.aget(jr.get_static("UpKeyEventHandler", "instanceArray"), l_player_input_id)
}

fn c1_m8__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("UpKeyEventHandlerBase", this, "removeAllListeners_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_static("UpKeyEventHandler", "instanceArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_static("UpKeyEventHandler", "instanceArray"), jr.get(l_index)), "removeAllListeners_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__removelistenersinglethreaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call_super("UpKeyEventHandlerBase", this, "removeListenerSingleThreaded_1", [l_event_listener_interface])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_static("UpKeyEventHandler", "instanceArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_static("UpKeyEventHandler", "instanceArray"), jr.get(l_index)), "removeListenerSingleThreaded_1", [l_event_listener_interface])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m10__removelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call_super("UpKeyEventHandlerBase", this, "removeListener_1", [l_event_listener_interface])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_static("UpKeyEventHandler", "instanceArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_static("UpKeyEventHandler", "instanceArray"), jr.get(l_index)), "removeListener_1", [l_event_listener_interface])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("UpKeyEventHandlerBase", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "UpKeyEventHandler",
        "org.allbinary.game.input.event.UpKeyEventHandler",
        "UpKeyEventHandlerBase",
        [],
        False,
        [#("playerInputIdFactory", jr.JNull)],
        [#("instance", jr.JNull), #("instanceArray", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getInstanceForDevice_1", ["int"], False, c1_m5__getinstancefordevice), 
            jr.Method("getInstanceForPlayer_1", ["int"], False, c1_m6__getinstanceforplayer), 
            jr.Method("removeAllListeners_0", [], False, c1_m8__removealllisteners), 
            jr.Method("removeListenerSingleThreaded_1", ["EventListenerInterface"], False, c1_m9__removelistenersinglethreaded), 
            jr.Method("removeListener_1", ["EventListenerInterface"], False, c1_m10__removelistener), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

