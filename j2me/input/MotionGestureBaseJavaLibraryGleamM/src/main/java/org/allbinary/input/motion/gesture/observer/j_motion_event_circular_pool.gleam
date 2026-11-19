// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.observer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionEventCircularPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MIN", jr.as_i(jr.call(jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "LAST_MOTION"), "getId_0", [])))
    jr.set_field(this, "eventPool", jr.new("AllBinaryEventCircularPool", [jr.sub(jr.sub(jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX"), jr.JInt(1)), jr.get_field(this, "MIN"))]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createpool(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id] = jargs
    let l_id = jr.as_i(l_id)
    jr.new("MotionEventCircularPool", [l_id])
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_input] = jargs
    jr.call(jr.get_field(this, "eventPool"), "getInstance_1", [jr.sub(jr.call(l_motion_gesture_input, "getId_0", []), jr.get_field(this, "MIN"))])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id] = jargs
    let l_id = jr.as_i(l_id)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "eventPool"), "initAllBinaryEventCircularPool_1", [jr.new("MotionEventFactory", [jr.get_field(this, "eventPool"), l_id])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionEventCircularPool",
        "org.allbinary.input.motion.gesture.observer.MotionEventCircularPool",
        "Object",
        [],
        False,
        [#("MIN", jr.JInt(0)), #("eventPool", jr.JNull)],
        [],
        [
            jr.Method("createPool_1", ["int"], True, c1_m1__createpool), 
            jr.Method("getInstance_1", ["MotionGestureInput"], False, c1_m5__getinstance), 
            jr.Method("jinit_1", ["int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

