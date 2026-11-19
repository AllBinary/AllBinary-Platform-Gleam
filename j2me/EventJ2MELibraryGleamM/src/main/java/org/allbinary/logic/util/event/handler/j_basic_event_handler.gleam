// Generated Code Do Not Modify
// package org.allbinary.logic.util.event.handler
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "eventStrings", jr.call_static("EventStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
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
            jr.call(this, "addListenerInterface_1", [jr.get(l_event_listener_interface)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m8__removelisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector] = jargs
        let l_event_listener_interface = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(l_vector, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_event_listener_interface, jr.call(l_vector, "get_1", [jr.get(l_index)]))
            jr.call(this, "removeListener_1", [jr.get(l_event_listener_interface)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__addlistenersinglethreaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_m10__addlistenerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_m11__removelistenersinglethreaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "eventListenerInterfaceList"), "remove_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m12__removelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "eventListenerInterfaceList"), "remove_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m13__fireevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        let l_event_listener_interface = jr.cell(jr.JNull)
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])) }, fn() {
            jr.try_catch(fn() {
                jr.set(l_event_listener_interface, jr.call(jr.get_field(this, "eventListenerInterfaceList"), "get_1", [jr.get(l_index)]))
                jr.call(this, "process_2", [l_event_object, jr.get(l_event_listener_interface)])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "eventStrings"), "FIRE_EVENT"), l_e])
                Nil
            } })], fn() { Nil })
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            Nil
        })
    jr.JNull
}

fn c1_m14__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
        jr.call(l_event_listener_interface, "onEvent_1", [l_event_object])
    jr.JNull
}

fn c1_m15__geteventlistenerinterfacelistp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "eventListenerInterfaceList")
}

fn c1_m16__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "eventStrings"), "TOTAL_LISTENERS")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])])
        let l_event_listener_interface = jr.cell(jr.JNull)
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])) }, fn() {
            jr.try_catch(fn() {
                jr.set(l_event_listener_interface, jr.call(jr.get_field(this, "eventListenerInterfaceList"), "get_1", [jr.get(l_index)]))
                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "eventStrings"), "LISTENER_LABEL")])
                jr.call(l_string_buffer, "append_1", [jr.call(jr.get(l_event_listener_interface), "toString_0", [])])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "TOSTRING"), l_e])
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
        "BasicEventHandler",
        "org.allbinary.logic.util.event.handler.BasicEventHandler",
        "Object",
        ["BasicEventHandlerInterface"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("eventStrings", jr.JNull), #("eventListenerInterfaceList", jr.JNull)],
        [],
        [
            jr.Method("removeAllListeners_0", [], False, c1_m6__removealllisteners), 
            jr.Method("addListeners_1", ["BasicArrayList"], False, c1_m7__addlisteners), 
            jr.Method("removeListeners_1", ["BasicArrayList"], False, c1_m8__removelisteners), 
            jr.Method("addListenerSingleThreaded_1", ["EventListenerInterface"], False, c1_m9__addlistenersinglethreaded), 
            jr.Method("addListenerInterface_1", ["EventListenerInterface"], False, c1_m10__addlistenerinterface), 
            jr.Method("removeListenerSingleThreaded_1", ["EventListenerInterface"], False, c1_m11__removelistenersinglethreaded), 
            jr.Method("removeListener_1", ["EventListenerInterface"], False, c1_m12__removelistener), 
            jr.Method("fireEvent_1", ["AllBinaryEventObject"], False, c1_m13__fireevent), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m14__process), 
            jr.Method("getEventListenerInterfaceListP_0", [], False, c1_m15__geteventlistenerinterfacelistp), 
            jr.Method("toString_0", [], False, c1_m16__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

