// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionGestureRecognizer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "j2seMath", jr.call_static("J2SEMath", "getInstance_0", []))
    jr.set_field(this, "origin", jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"))
    jr.set_field(this, "previous", jr.get_field(this, "origin"))
    jr.set_field(this, "intermediate", jr.get_field(this, "origin"))
    jr.set_field(this, "line", jr.new("Line", [jr.get_field(this, "origin"), jr.get_field(this, "origin")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m12__processpressedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current, l_device_id, l_button] = jargs
    let l_device_id = jr.as_i(l_device_id)
    let l_button = jr.as_i(l_button)
        jr.set_field(this, "intermediate", jr.get_field(this, "origin"))
        jr.set_field(this, "previous", jr.get_field(this, "origin"))
        let l_event = jr.call(jr.get_field(this, "motionEventCircularPool"), "getInstance_1", [jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "PRESSED")])
        jr.call(l_event, "setPreviousPoint_1", [jr.get_field(this, "previous")])
        jr.call(l_event, "setCurrentPoint_1", [l_current])
        jr.call(jr.get_field(this, "motionGesturesHandler"), "fireEvent_1", [l_event])
    jr.JBool(True)
}

fn c1_m13__processreleasedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current, l_device_id, l_button] = jargs
    let l_device_id = jr.as_i(l_device_id)
    let l_button = jr.as_i(l_button)
        let l_event = jr.call(jr.get_field(this, "motionEventCircularPool"), "getInstance_1", [jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "RELEASED")])
        jr.call(l_event, "setPreviousPoint_1", [jr.get_field(this, "previous")])
        jr.call(l_event, "setCurrentPoint_1", [l_current])
        jr.call(jr.get_field(this, "motionGesturesHandler"), "fireEvent_1", [l_event])
    jr.JBool(True)
}

fn c1_m14__processdraggedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current, l_device_id, l_button_mask] = jargs
    let l_device_id = jr.as_i(l_device_id)
    let l_button_mask = jr.as_i(l_button_mask)
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.eq(jr.get_field(this, "previous"), jr.get_field(this, "origin"))) { True -> jr.JBool(True) False -> jr.eq(jr.get_field(this, "intermediate"), jr.get_field(this, "origin")) }) {
            True -> {
            jr.set_field(this, "previous", l_current)
            jr.set_field(this, "intermediate", l_current)
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            jr.call(jr.get_field(this, "line"), "setP1_1", [jr.get_field(this, "previous")])
            jr.call(jr.get_field(this, "line"), "setP2_1", [l_current])
            let l_minimum_motion_gesture = jr.as_i(jr.call(jr.call_static("MotionGestureConfigurationFactory", "getInstance_0", []), "getMinimumMotionGesture_0", []))
            case jr.truth(case jr.truth(jr.lt(jr.call(jr.get_field(this, "j2seMath"), "abs_1", [jr.to_f(jr.call(jr.get_field(this, "line"), "getDeltaX_0", []))]), l_minimum_motion_gesture)) { True -> jr.lt(jr.call(jr.get_field(this, "j2seMath"), "abs_1", [jr.to_f(jr.call(jr.get_field(this, "line"), "getDeltaY_0", []))]), l_minimum_motion_gesture) False -> jr.JBool(False) }) {
            True -> {
            jr.set_field(this, "intermediate", l_current)
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_gradient = jr.as_d(jr.call(jr.get_field(this, "line"), "getGradient_0", []))
            let l_abs_gradient = jr.as_d(jr.to_d(jr.call(jr.get_field(this, "j2seMath"), "abs_1", [jr.to_f(l_gradient)])))
            let l_conf = jr.call_static("MotionGestureConfigurationFactory", "getInstance_0", [])
            let l_touch_motion_gesture_factory = jr.call_static("TouchMotionGestureFactory", "getInstance_0", [])
            let l_new_motion_gesture = jr.cell(jr.get_field(l_touch_motion_gesture_factory, "NO_MOTION"))
            let l_diagonal_tolerance_higher = jr.cell(jr.as_d(jr.JDouble(12.0)))
            let l_diagonal_tolerance_lower = jr.cell(jr.as_d(jr.JDouble(12.0)))
            case jr.truth(jr.call(l_conf, "isDiagonalMotionGestureAllowed_0", [])) {
            True -> {
            jr.set(l_diagonal_tolerance_higher, jr.as_d(jr.to_d(jr.sub(jr.JInt(90), jr.call(l_conf, "getDiagonalTolerance_0", [])))))
            jr.set(l_diagonal_tolerance_lower, jr.as_d(jr.to_d(jr.call(l_conf, "getDiagonalTolerance_0", []))))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.gt(l_abs_gradient, jr.call_static("Math", "tan_1", [jr.call_static("Math", "toRadians_1", [jr.get(l_diagonal_tolerance_higher)])]))) {
            True -> {
            case jr.truth(jr.gt(jr.call(jr.get_field(this, "line"), "getDeltaY_0", []), jr.JDouble(0.0))) {
                True -> {
                jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "UP"))
                Nil
            }
                False -> {
                jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "DOWN"))
                Nil
            }
            }
            Nil
        }
            False -> {
            case jr.truth(jr.lt(l_abs_gradient, jr.call_static("Math", "tan_1", [jr.call_static("Math", "toRadians_1", [jr.get(l_diagonal_tolerance_lower)])]))) {
                True -> {
                case jr.truth(jr.gt(jr.call(jr.get_field(this, "line"), "getDeltaX_0", []), jr.JDouble(0.0))) {
                    True -> {
                    jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "LEFT"))
                    Nil
                }
                    False -> {
                    jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "RIGHT"))
                    Nil
                }
                }
                Nil
            }
                False -> {
                case jr.truth(jr.gt(l_gradient, jr.JDouble(0.0))) {
                    True -> {
                    case jr.truth(jr.gt(jr.call(jr.get_field(this, "line"), "getDeltaX_0", []), jr.JDouble(0.0))) {
                        True -> {
                        jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "DIAGONAL_UP_LEFT"))
                        Nil
                    }
                        False -> {
                        jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "DIAGONAL_DOWN_RIGHT"))
                        Nil
                    }
                    }
                    Nil
                }
                    False -> {
                    case jr.truth(jr.gt(jr.call(jr.get_field(this, "line"), "getDeltaX_0", []), jr.JDouble(0.0))) {
                        True -> {
                        jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "DIAGONAL_DOWN_LEFT"))
                        Nil
                    }
                        False -> {
                        jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "DIAGONAL_UP_RIGHT"))
                        Nil
                    }
                    }
                    Nil
                }
                }
                Nil
            }
            }
            Nil
        }
        }
            jr.set_field(this, "previous", l_current)
            jr.set_field(this, "intermediate", l_current)
            let l_event = jr.call(jr.get_field(this, "motionEventCircularPool"), "getInstance_1", [jr.get(l_new_motion_gesture)])
            jr.call(l_event, "setPreviousPoint_1", [jr.get_field(this, "previous")])
            jr.call(l_event, "setCurrentPoint_1", [l_current])
            jr.call(jr.get_field(this, "motionGesturesHandler"), "fireEvent_1", [l_event])
            jr.ret(jr.JNull)
        jr.JNull
    })
}

fn c1_m15__processmovedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current, l_device_id, l_button] = jargs
    let l_device_id = jr.as_i(l_device_id)
    let l_button = jr.as_i(l_button)
        let l_event = jr.call(jr.get_field(this, "motionEventCircularPool"), "getInstance_1", [jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "NO_MOTION")])
        jr.call(l_event, "setPreviousPoint_1", [jr.get_field(this, "previous")])
        jr.call(l_event, "setCurrentPoint_1", [l_current])
        jr.call(jr.get_field(this, "movedMotionGesturesHandler"), "fireEvent_1", [l_event])
    jr.JBool(True)
}

fn c1_m16__processscrolledmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current, l_device_id, l_button] = jargs
    let l_device_id = jr.as_i(l_device_id)
    let l_button = jr.as_i(l_button)
        let l_touch_motion_gesture_factory = jr.call_static("TouchMotionGestureFactory", "getInstance_0", [])
        let l_new_motion_gesture = jr.cell(jr.get_field(l_touch_motion_gesture_factory, "NO_MOTION"))
        case jr.truth(jr.gt(l_button, jr.JInt(0))) {
            True -> {
            jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "SCROLL_UP"))
            Nil
        }
            False -> case jr.truth(jr.lt(l_button, jr.JInt(0))) {
            True -> {
            jr.set(l_new_motion_gesture, jr.get_field(l_touch_motion_gesture_factory, "SCROLL_DOWN"))
            Nil
        }
            False -> Nil
        }
        }
        let l_event = jr.call(jr.get_field(this, "motionEventCircularPool"), "getInstance_1", [jr.get(l_new_motion_gesture)])
        jr.call(l_event, "setPreviousPoint_1", [jr.get_field(this, "previous")])
        jr.call(l_event, "setCurrentPoint_1", [l_current])
        jr.call(jr.get_field(this, "scrolledMotionGesturesHandler"), "fireEvent_1", [l_event])
    jr.JBool(True)
}

fn c1_m17__getmotiongestureshandler(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "motionGesturesHandler")
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id] = jargs
    let l_id = jr.as_i(l_id)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "motionEventCircularPool", jr.call_static("MotionEventCircularPool", "createPool_1", [l_id]))
        let l_motion_gestures_handler = jr.cell(jr.new("BasicEventHandler", []))
        let l_moved_motion_gestures_handler = jr.cell(jr.get(l_motion_gestures_handler))
        let l_scrolled_motion_gestures_handler = jr.cell(jr.get(l_motion_gestures_handler))
        jr.try_catch(fn() {
            jr.set(l_motion_gestures_handler, jr.call_static("BasicMotionGesturesHandler", "getInstance_0", []))
            jr.set(l_moved_motion_gestures_handler, jr.call_static("MovedMotionGesturesHandler", "getInstance_0", []))
            jr.set(l_scrolled_motion_gestures_handler, jr.call_static("ScrolledMotionGesturesHandler", "getInstance_0", []))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "CONSTRUCTOR"), l_e])
            Nil
        } })], fn() { Nil })
        jr.set_field(this, "motionGesturesHandler", jr.get(l_motion_gestures_handler))
        jr.set_field(this, "movedMotionGesturesHandler", jr.get(l_moved_motion_gestures_handler))
        jr.set_field(this, "scrolledMotionGesturesHandler", jr.get(l_scrolled_motion_gestures_handler))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionGestureRecognizer",
        "org.allbinary.input.motion.gesture.MotionGestureRecognizer",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("j2seMath", jr.JNull), #("origin", jr.JNull), #("previous", jr.JNull), #("intermediate", jr.JNull), #("line", jr.JNull), #("motionGesturesHandler", jr.JNull), #("movedMotionGesturesHandler", jr.JNull), #("scrolledMotionGesturesHandler", jr.JNull), #("motionEventCircularPool", jr.JNull)],
        [],
        [
            jr.Method("processPressedMotionEvent_3", ["GPoint", "int", "int"], False, c1_m12__processpressedmotionevent), 
            jr.Method("processReleasedMotionEvent_3", ["GPoint", "int", "int"], False, c1_m13__processreleasedmotionevent), 
            jr.Method("processDraggedMotionEvent_3", ["GPoint", "int", "int"], False, c1_m14__processdraggedmotionevent), 
            jr.Method("processMovedMotionEvent_3", ["GPoint", "int", "int"], False, c1_m15__processmovedmotionevent), 
            jr.Method("processScrolledMotionEvent_3", ["GPoint", "int", "int"], False, c1_m16__processscrolledmotionevent), 
            jr.Method("getMotionGesturesHandler_0", [], False, c1_m17__getmotiongestureshandler), 
            jr.Method("jinit_1", ["int"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

