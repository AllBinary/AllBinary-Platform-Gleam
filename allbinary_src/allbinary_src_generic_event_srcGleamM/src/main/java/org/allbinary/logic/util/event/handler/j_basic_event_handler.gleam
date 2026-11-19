// Generated Code Do Not Modify
// package org.allbinary.logic.util.event.handler
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        let l__l_i_s_t_e_n_e_r = jr.JStr(" Listener: ")
        jr.call(l_string_buffer, "append_1", [jr.JStr("Total Listeners: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])])
        let l_event_listener_interface = jr.cell(jr.JNull)
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])) }, fn() {
            jr.try_catch(fn() {
                jr.set(l_event_listener_interface, jr.aget(jr.get_field(jr.get_field(this, "eventListenerInterfaceList"), "objectArray"), jr.get(l_index)))
                jr.call(l_string_buffer, "append_1", [l__l_i_s_t_e_n_e_r])
                jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get(l_event_listener_interface)])])
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

fn c1_m6__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "eventListenerInterfaceList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_m7__addlistenersinglethreaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_m8__addlistenerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_m9__removelistenersinglethreaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "eventListenerInterfaceList"), "remove_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m10__removelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "eventListenerInterfaceList"), "remove_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m11__fireevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_event_listener_interface = jr.cell(jr.JNull)
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.call(jr.get_field(this, "eventListenerInterfaceList"), "size_0", [])) }, fn() {
            jr.try_catch(fn() {
                jr.set(l_event_listener_interface, jr.aget(jr.get_field(jr.get_field(this, "eventListenerInterfaceList"), "objectArray"), jr.get(l_index)))
                jr.call(this, "process_2", [l_event_object, jr.get(l_event_listener_interface)])
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

fn c1_m12__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
        jr.call(l_event_listener_interface, "onEvent_1", [l_event_object])
    jr.JNull
}

fn c1_m13__geteventlistenerinterfacelistp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "eventListenerInterfaceList")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("logUtil", jr.JNull), #("eventListenerInterfaceList", jr.JNull)],
        [#("PERFORMANCE_MESSAGE", jr.JStr("Use Custom onEvent Methods for needed optimization"))],
        [
            jr.Method("toString_0", [], False, c1_m5__tostring), 
            jr.Method("removeAllListeners_0", [], False, c1_m6__removealllisteners), 
            jr.Method("addListenerSingleThreaded_1", ["EventListenerInterface"], False, c1_m7__addlistenersinglethreaded), 
            jr.Method("addListenerInterface_1", ["EventListenerInterface"], False, c1_m8__addlistenerinterface), 
            jr.Method("removeListenerSingleThreaded_1", ["EventListenerInterface"], False, c1_m9__removelistenersinglethreaded), 
            jr.Method("removeListener_1", ["EventListenerInterface"], False, c1_m10__removelistener), 
            jr.Method("fireEvent_1", ["AllBinaryEventObject"], False, c1_m11__fireevent), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m12__process), 
            jr.Method("getEventListenerInterfaceListP_0", [], False, c1_m13__geteventlistenerinterfacelistp), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

