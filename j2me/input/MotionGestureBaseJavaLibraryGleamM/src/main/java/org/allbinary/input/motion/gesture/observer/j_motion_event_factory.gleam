// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.observer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionEventFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_input_factory = jr.call_static("InputFactory", "getInstance_0", [])
            let l_input = jr.call(l_input_factory, "getInstanceById_1", [jr.incr(fn() { jr.get_static("MotionEventFactory", "index") }, fn(jv) { jr.set_static("MotionEventFactory", "index", jv) }, 1, True)])
            case jr.truth(jr.eq(l_input, jr.get_field(l_input_factory, "NO_INPUT"))) {
            True -> {
            jr.ret(jr.new("MotionGestureEvent", [jr.get_field(this, "source"), jr.get_field(this, "id"), jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "NO_MOTION")]))
            Nil
        }
            False -> {
            jr.ret(jr.new("MotionGestureEvent", [jr.get_field(this, "source"), jr.get_field(this, "id"), l_input]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source, l_id] = jargs
    let l_id = jr.as_i(l_id)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "source", l_source)
        jr.set_field(this, "id", jr.as_i(l_id))
        jr.set_static("MotionEventFactory", "index", jr.as_i(jr.call(jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "LAST_MOTION"), "getId_0", [])))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionEventFactory",
        "org.allbinary.input.motion.gesture.observer.MotionEventFactory",
        "Object",
        ["AllBinaryEventObjectFactoryInterface"],
        False,
        [#("source", jr.JNull), #("id", jr.JInt(0))],
        [#("index", jr.as_i(jr.JInt(0)))],
        [
            jr.Method("getInstance_0", [], False, c1_m5__getinstance), 
            jr.Method("jinit_2", ["Object", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

