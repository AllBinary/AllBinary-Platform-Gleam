// Generated Code Do Not Modify
// package org.allbinary.game.input.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RawKeyEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RawKeyEventHandler", "instance", jr.new("RawKeyEventHandler", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("RawKeyEventHandler", "instance")
}

fn c1_m6__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "eventListenerInterfaceList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_m7__addlisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector] = jargs
        let l_event_listener_interface = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(l_vector, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_event_listener_interface, jr.call(l_vector, "get_1", [jr.get(l_index)]))
            jr.call(this, "addListener_1", [jr.get(l_event_listener_interface)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m8__addlistenersinglethreaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "eventListenerInterfaceList"), "contains_1", [l_event_listener_interface]))) {
            True -> {
            jr.call(jr.get_field(this, "eventListenerInterfaceList"), "add_1", [l_event_listener_interface])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m9__addlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "eventListenerInterfaceList"), "contains_1", [l_event_listener_interface]))) {
            True -> {
            jr.call(jr.get_field(this, "eventListenerInterfaceList"), "add_1", [l_event_listener_interface])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m10__removelistenersinglethreaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "eventListenerInterfaceList"), "remove_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m11__removelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "eventListenerInterfaceList"), "remove_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m12__fireevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        let l_event_listener_interface = jr.cell(jr.JNull)
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])) }, fn() {
            jr.try_catch(fn() {
                jr.set(l_event_listener_interface, jr.call(jr.get_field(this, "eventListenerInterfaceList"), "get_1", [jr.get(l_index)]))
                jr.call(this, "process_4", [l_key_code, l_device_id, l_repeated, jr.get(l_event_listener_interface)])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "FIRE_EVENT"), l_e])
                Nil
            } })], fn() { Nil })
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            Nil
        })
    jr.JNull
}

fn c1_m13__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id, l_repeated, l_event_listener_interface] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(l_event_listener_interface, "onEventRaw_3", [l_key_code, l_device_id, l_repeated])
    jr.JNull
}

fn c1_m14__geteventlistenerinterfacelistp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "eventListenerInterfaceList")
}

fn c1_m17__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_static("RawKeyEventHandler", "TOTAL_LISTENERS")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])])
        let l_event_listener_interface = jr.cell(jr.JNull)
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])) }, fn() {
            jr.try_catch(fn() {
                jr.set(l_event_listener_interface, jr.call(jr.get_field(this, "eventListenerInterfaceList"), "get_1", [jr.get(l_index)]))
                jr.call(l_string_buffer, "append_1", [jr.get_static("RawKeyEventHandler", "LISTENER_LABEL")])
                jr.call(l_string_buffer, "append_1", [jr.call(jr.get(l_event_listener_interface), "toString_0", [])])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "TOSTRING"), l_e])
                Nil
            } })], fn() { Nil })
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            Nil
        })
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "eventListenerInterfaceList", jr.new("BasicArrayListD", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RawKeyEventHandler",
        "org.allbinary.game.input.event.RawKeyEventHandler",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("eventListenerInterfaceList", jr.JNull)],
        [#("instance", jr.JNull), #("TOTAL_LISTENERS", jr.JStr("Total Listeners: ")), #("LISTENER_LABEL", jr.JStr(" Listener: "))],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("removeAllListeners_0", [], False, c1_m6__removealllisteners), 
            jr.Method("addListeners_1", ["BasicArrayList"], False, c1_m7__addlisteners), 
            jr.Method("addListenerSingleThreaded_1", ["RawKeyEventListener"], False, c1_m8__addlistenersinglethreaded), 
            jr.Method("addListener_1", ["RawKeyEventListener"], False, c1_m9__addlistener), 
            jr.Method("removeListenerSingleThreaded_1", ["RawKeyEventListener"], False, c1_m10__removelistenersinglethreaded), 
            jr.Method("removeListener_1", ["RawKeyEventListener"], False, c1_m11__removelistener), 
            jr.Method("fireEvent_3", ["int", "int", "boolean"], False, c1_m12__fireevent), 
            jr.Method("process_4", ["int", "int", "boolean", "RawKeyEventListener"], False, c1_m13__process), 
            jr.Method("getEventListenerInterfaceListP_0", [], False, c1_m14__geteventlistenerinterfacelistp), 
            jr.Method("toString_0", [], False, c1_m17__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

