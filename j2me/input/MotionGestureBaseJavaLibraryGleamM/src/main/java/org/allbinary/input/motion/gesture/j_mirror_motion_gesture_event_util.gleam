// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MirrorMotionGestureEventUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MirrorMotionGestureEventUtil", "instance", jr.new("MirrorMotionGestureEventUtil", []))
    jr.JNull
}

fn c1_m4__mirrorverticle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event, l_half_width] = jargs
    let l_half_width = jr.as_i(l_half_width)
        let l_event = jr.call(jr.get_field(this, "motionEventCircularPool"), "getInstance_1", [jr.call(l_motion_gesture_event, "getMotionGesture_0", [])])
        let l_previous_new_x = jr.as_i(jr.call(this, "getNewX_2", [jr.call(jr.call(l_motion_gesture_event, "getPreviousPoint_0", []), "getX_0", []), l_half_width]))
        let l_current_new_x = jr.as_i(jr.call(this, "getNewX_2", [jr.call(jr.call(l_motion_gesture_event, "getCurrentPoint_0", []), "getX_0", []), l_half_width]))
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        let l_mirrored_previous_point = jr.call(l_point_factory, "createXY_2", [l_previous_new_x, jr.call(jr.call(l_motion_gesture_event, "getPreviousPoint_0", []), "getY_0", [])])
        let l_mirrored_current_point = jr.call(l_point_factory, "createXY_2", [l_current_new_x, jr.call(jr.call(l_motion_gesture_event, "getCurrentPoint_0", []), "getY_0", [])])
        jr.call(l_event, "setPreviousPoint_1", [l_mirrored_previous_point])
        jr.call(l_event, "setCurrentPoint_1", [l_mirrored_current_point])
    l_event
}

fn c1_m5__getnewx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_half_width] = jargs
    let l_x = jr.as_i(l_x)
    let l_half_width = jr.as_i(l_half_width)
        let l_new_x = jr.cell(jr.as_i(jr.JInt(0)))
        case jr.truth(jr.gt(l_x, l_half_width)) {
            True -> {
            jr.set(l_new_x, jr.as_i(jr.sub(l_half_width, jr.sub(l_x, l_half_width))))
            Nil
        }
            False -> {
            jr.set(l_new_x, jr.as_i(jr.add(l_half_width, jr.sub(l_half_width, l_x))))
            Nil
        }
        }
    jr.as_i(jr.get(l_new_x))
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MirrorMotionGestureEventUtil", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "motionEventCircularPool", jr.call_static("MotionEventCircularPool", "createPool_1", [jr.get_static("Integer", "MAX_VALUE")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MirrorMotionGestureEventUtil",
        "org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil",
        "Object",
        [],
        False,
        [#("motionEventCircularPool", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("mirrorVerticle_2", ["MotionGestureEvent", "int"], False, c1_m4__mirrorverticle), 
            jr.Method("getNewX_2", ["int", "int"], False, c1_m5__getnewx), 
            jr.Method("getInstance_0", [], True, c1_m6__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

