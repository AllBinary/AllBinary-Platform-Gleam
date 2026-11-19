// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompleteMotionGestureInputEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CompleteMotionGestureInputEventHandler", "SINGLETON", jr.new("CompleteMotionGestureInputEventHandler", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CompleteMotionGestureInputEventHandler", "SINGLETON")
}

fn c1_m5__addlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_complete_motion_gesture_input_event_listener] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "list"), "contains_1", [l_complete_motion_gesture_input_event_listener]))) {
            True -> {
            jr.call(jr.get_field(this, "list"), "add_1", [l_complete_motion_gesture_input_event_listener])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "list"), "clear_0", [])
        jr.call_super("BasicEventHandler", this, "removeAllListeners_0", [])
    jr.JNull
}

fn c1_m7__removelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "list"), "remove_1", [l_event_listener_interface])
        jr.call_super("BasicEventHandler", this, "removeListener_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m8__fireevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.try_catch(fn() {
                let l_complete_motion_gesture_input_event_listener = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_index))
                jr.call(l_complete_motion_gesture_input_event_listener, "onCompleteMotionGestureInputEvent_1", [l_event_object])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.call(jr.get_inherited(this, "CompleteMotionGestureInputEventHandler", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "CompleteMotionGestureInputEventHandler", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "FIRE_EVENT"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
            Nil
        }
        jr.call_super("BasicEventHandler", this, "fireEvent_1", [l_event_object])
    jr.JNull
}

fn c1_m9__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
        let l_complete_motion_gesture_input_event_listener_interface = l_event_listener_interface
        jr.call(l_complete_motion_gesture_input_event_listener_interface, "onCompleteMotionGestureInputEvent_1", [l_event_object])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicEventHandler", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompleteMotionGestureInputEventHandler",
        "org.allbinary.game.input.CompleteMotionGestureInputEventHandler",
        "BasicEventHandler",
        [],
        False,
        [#("list", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("addListener_1", ["CompleteMotionGestureInputEventListener"], False, c1_m5__addlistener), 
            jr.Method("removeAllListeners_0", [], False, c1_m6__removealllisteners), 
            jr.Method("removeListener_1", ["EventListenerInterface"], False, c1_m7__removelistener), 
            jr.Method("fireEvent_1", ["AllBinaryEventObject"], False, c1_m8__fireevent), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m9__process), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

