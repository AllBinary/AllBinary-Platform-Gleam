// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArraySpecialAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(270)]))
    jr.set_field(this, "loopCount", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "loopCountTotal", jr.as_i(jr.JInt(1)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getloopcount(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "loopCount"))
}

fn c1_m5__setlastframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "ImageArraySpecialAnimation", "circularIndexUtil"), "setIndex_1", [jr.sub(jr.call(jr.get_inherited(this, "ImageArraySpecialAnimation", "circularIndexUtil"), "getSize_0", []), jr.JInt(1))])
    jr.JNull
}

fn c1_m6__reset(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_inherited(this, "ImageArraySpecialAnimation", "setFrame_1", [jr.sub(jr.call_inherited(this, "ImageArraySpecialAnimation", "getSize_0", []), jr.JInt(1))])
        jr.set_field(this, "loopCount", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_m7__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.gt(jr.call_inherited(this, "ImageArraySpecialAnimation", "getFrame_0", []), jr.JInt(0))) {
            True -> {
            case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTime_1", [jr.get_field(jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []), "startTime")])) {
                True -> {
                jr.call_inherited(this, "ImageArraySpecialAnimation", "previousFrame_0", [])
                case jr.truth(jr.eq(jr.call_inherited(this, "ImageArraySpecialAnimation", "getFrame_0", []), jr.JInt(0))) {
                    True -> {
                    jr.incr(fn() { jr.get_field(this, "loopCount") }, fn(jv) { jr.set_field(this, "loopCount", jv) }, 1, True)
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m9__iscomplete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.lt(jr.get_field(this, "loopCount"), jr.get_field(this, "loopCountTotal"))) { True -> jr.JBool(True) False -> jr.ne(jr.call_inherited(this, "ImageArraySpecialAnimation", "getFrame_0", []), jr.JInt(0)) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m10__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.cell(jr.as_i(l_x))
    let l_y = jr.cell(jr.as_i(l_y))
        jr.set(l_x, jr.as_i(jr.sub(jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "getLastHalfWidth_0", []), jr.shr(jr.call(jr.call_inherited(this, "ImageArraySpecialAnimation", "getImage_1", [jr.call(jr.get_inherited(this, "ImageArraySpecialAnimation", "circularIndexUtil"), "getIndex_0", [])]), "getWidth_0", []), jr.JInt(1)))))
        jr.set(l_y, jr.as_i(jr.JInt(5)))
        jr.call_super("ImageArrayAnimation", this, "paintXY_3", [l_graphics, jr.get(l_x), jr.get(l_y)])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_animation_behavior] = jargs
        jr.super_init("ImageArrayAnimation", this, [l_image_array, l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "reset_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArraySpecialAnimation",
        "org.allbinary.animation.image.ImageArraySpecialAnimation",
        "ImageArrayAnimation",
        ["SpecialAnimationInterface"],
        False,
        [#("timeDelayHelper", jr.JNull), #("loopCount", jr.JInt(0)), #("loopCountTotal", jr.JInt(0))],
        [],
        [
            jr.Method("getLoopCount_0", [], False, c1_m4__getloopcount), 
            jr.Method("setLastFrame_0", [], False, c1_m5__setlastframe), 
            jr.Method("reset_0", [], False, c1_m6__reset), 
            jr.Method("nextFrame_0", [], False, c1_m7__nextframe), 
            jr.Method("isComplete_0", [], False, c1_m9__iscomplete), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m10__paintxy), 
            jr.Method("jinit_2", ["ImageArr", "AnimationBehavior"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

