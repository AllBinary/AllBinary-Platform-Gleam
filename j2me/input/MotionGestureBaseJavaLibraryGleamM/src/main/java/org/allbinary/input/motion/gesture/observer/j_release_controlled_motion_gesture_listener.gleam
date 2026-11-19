// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.observer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ReleaseControlledMotionGestureListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "currentMotionGesture", jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "NO_MOTION"))
    jr.set_field(this, "isMouseGestureOccurring", jr.JBool(False))
    jr.set_field(this, "motionGestureCollection", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED"), this])
    jr.JNull
}

fn c1_m9__onupmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m10__ondownmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m11__onleftmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m12__onrightmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m13__ondiagonaldownrightmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m14__ondiagonaldownleftmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m15__ondiagonaluprightmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m16__ondiagonalupleftmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m17__onpressedmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.set_field(this, "isMouseGestureOccurring", jr.JBool(True))
        jr.set_field(this, "currentMotionGesture", jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "NO_MOTION"))
        jr.call(this, "onMotionGestureEvent_1", [l_ev])
    jr.JNull
}

fn c1_m18__onscrolledmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event] = jargs
    jr.JNull
}

fn c1_m19__released(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        jr.try_catch(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "isMouseGestureOccurring"), jr.JBool(False))) {
                True -> {
                jr.ret(jr.JNull)
                Nil
            }
                False -> Nil
            }
            jr.set_field(this, "isMouseGestureOccurring", jr.JBool(False))
            jr.call(jr.get_field(this, "signed"), "onMotionGestureCompleted_1", [jr.get_field(this, "motionGestureCollection")])
            jr.call(jr.get_field(this, "motionGestureCollection"), "clear_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION_LABEL")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.call(l_ev, "getMotionGesture_0", [])])]), "toString_0", []), this, jr.JStr("release"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m20__onmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ev] = jargs
        case jr.truth(jr.eq(jr.get_field(this, "isMouseGestureOccurring"), jr.JBool(False))) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
        let l_motion_gesture_input = jr.call(l_ev, "getMotionGesture_0", [])
        case jr.truth(jr.eq(l_motion_gesture_input, jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "PRESSED"))) {
            True -> {
            jr.call(this, "onPressedMotionGestureEvent_1", [l_ev])
            Nil
        }
            False -> case jr.truth(jr.eq(l_motion_gesture_input, jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "RELEASED"))) {
            True -> {
            jr.call(this, "released_1", [l_ev])
            Nil
        }
            False -> {
            case jr.truth(jr.ne(jr.get_field(this, "currentMotionGesture"), l_motion_gesture_input)) {
                True -> {
                jr.set_field(this, "currentMotionGesture", l_motion_gesture_input)
                jr.call(jr.get_field(this, "motionGestureCollection"), "add_1", [jr.call(l_ev, "getMotionGesture_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_signed] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR")])
        jr.set_field(this, "signed", l_signed)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ReleaseControlledMotionGestureListener",
        "org.allbinary.input.motion.gesture.observer.ReleaseControlledMotionGestureListener",
        "Object",
        ["MotionGestureEventListener"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("currentMotionGesture", jr.JNull), #("isMouseGestureOccurring", jr.JBool(False)), #("motionGestureCollection", jr.JNull), #("signed", jr.JNull)],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m8__onevent), 
            jr.Method("onUpMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m9__onupmotiongestureevent), 
            jr.Method("onDownMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m10__ondownmotiongestureevent), 
            jr.Method("onLeftMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m11__onleftmotiongestureevent), 
            jr.Method("onRightMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m12__onrightmotiongestureevent), 
            jr.Method("onDiagonalDownRightMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m13__ondiagonaldownrightmotiongestureevent), 
            jr.Method("onDiagonalDownLeftMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m14__ondiagonaldownleftmotiongestureevent), 
            jr.Method("onDiagonalUpRightMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m15__ondiagonaluprightmotiongestureevent), 
            jr.Method("onDiagonalUpLeftMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m16__ondiagonalupleftmotiongestureevent), 
            jr.Method("onPressedMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m17__onpressedmotiongestureevent), 
            jr.Method("onScrolledMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m18__onscrolledmotiongestureevent), 
            jr.Method("released_1", ["MotionGestureEvent"], False, c1_m19__released), 
            jr.Method("onMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m20__onmotiongestureevent), 
            jr.Method("jinit_1", ["CompleteMotionGestureListenerInterface"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

