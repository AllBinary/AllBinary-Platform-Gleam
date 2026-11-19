// Generated Code Do Not Modify
// package org.allbinary.animation.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TitleAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "systemWrapper", jr.call_static("ABSystemWrapper", "getInstance_0", []))
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "CLEAR_COLOR", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "CLEAR_COLOR"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m14__createanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array, l_basic_color_array, l_dx_array, l_dy_array, l_y, l_width] = jargs
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    jr.new("TitleAnimation", [l_animation_interface_array, l_basic_color_array, l_dx_array, l_dy_array, l_y, l_width, jr.new("IndexedAnimationBehavior", [jr.JInt(1), jr.JInt(250)])])
}

fn c1_m16__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_current_time = jr.as_j(jr.call(jr.get_field(this, "systemWrapper"), "currentTimeMillis_0", []))
        let l_total_time_elapsed = jr.as_j(jr.sub(l_current_time, jr.get_field(this, "lastFrameStartTime")))
        let l_indexed_animation_behavior = jr.call_inherited(this, "TitleAnimation", "getAnimationBehavior_0", [])
        case jr.truth(jr.gt(l_total_time_elapsed, jr.get_field(l_indexed_animation_behavior, "frameDelayTime"))) {
            True -> {
            jr.call(this, "previousFrame_0", [])
            jr.set_field(this, "lastFrameStartTime", jr.as_j(l_current_time))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.JInt(0)), "getFrame_0", []), jr.JInt(0))) {
            True -> {
            jr.incr(fn() { jr.get_field(l_indexed_animation_behavior, "loopIndex") }, fn(jv) { jr.set_field(l_indexed_animation_behavior, "loopIndex", jv) }, 1, True)
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m17__iscomplete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_indexed_animation_behavior = jr.call_inherited(this, "TitleAnimation", "getAnimationBehavior_0", [])
            case jr.truth(case jr.truth(case jr.truth(jr.eq(jr.get_field(l_indexed_animation_behavior, "loopTotal"), jr.JInt(-1))) { True -> jr.JBool(True) False -> jr.lt(jr.get_field(l_indexed_animation_behavior, "loopIndex"), jr.get_field(l_indexed_animation_behavior, "loopTotal")) }) { True -> jr.JBool(True) False -> jr.ne(jr.call(this, "getFrame_0", []), jr.JInt(0)) }) {
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

fn c1_m18__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m19__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m20__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.JInt(0)), "getSize_0", []))
}

fn c1_m21__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.JInt(0)), "getFrame_0", []))
}

fn c1_m22__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame] = jargs
    let l_frame = jr.as_i(l_frame)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "sizeP")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "setFrame_1", [l_frame])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m23__setlastframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setFrame_1", [jr.sub(jr.call(this, "getSize_0", []), jr.JInt(1))])
    jr.JNull
}

fn c1_m24__reset(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setLastFrame_0", [])
        let l_indexed_animation_behavior = jr.call_inherited(this, "TitleAnimation", "getAnimationBehavior_0", [])
        jr.call(l_indexed_animation_behavior, "reset_0", [])
    jr.JNull
}

fn c1_m25__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "sizeP")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "previousFrame_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m26__paintframexy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_frame, l_x, l_y] = jargs
    let l_frame = jr.as_i(l_frame)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(this, "setFrame_1", [l_frame])
        jr.call(this, "paintXY_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_m28__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_ax, l_ay] = jargs
    let l_ax = jr.as_i(l_ax)
    let l_ay = jr.as_i(l_ay)
        let l_x = jr.cell(jr.as_i(jr.JInt(0)))
        case jr.truth(jr.ne(jr.get_field(this, "widthP"), jr.get_static("Integer", "MIN_VALUE"))) {
            True -> {
            jr.set(l_x, jr.as_i(jr.div(jr.sub(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastWidth_0", []), jr.get_field(this, "widthP")), jr.JInt(2))))
            Nil
        }
            False -> Nil
        }
        let l_delta_x = jr.cell(jr.as_i(jr.JInt(0)))
        let l_delta_y = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "sizeP")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_delta_x, jr.as_i(jr.add(jr.aget(jr.get_field(this, "dxArray"), jr.get(l_index)), jr.get(l_x))))
            jr.set(l_delta_y, jr.as_i(jr.add(jr.aget(jr.get_field(this, "dyArray"), jr.get(l_index)), jr.get_field(this, "y"))))
            case jr.truth(jr.ne(jr.aget(jr.get_field(this, "basicColorArray"), jr.get(l_index)), jr.get_field(this, "CLEAR_COLOR"))) {
                True -> {
                jr.call(jr.get_inherited(this, "TitleAnimation", "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.aget(jr.get_field(this, "basicColorArray"), jr.get(l_index))])
                Nil
            }
                False -> Nil
            }
            jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "paintXY_3", [l_graphics, jr.get(l_delta_x), jr.get(l_delta_y)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit15(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array, l_basic_color_array, l_dx_array, l_dy_array, l_y, l_width, l_animation_behavior] = jargs
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
        jr.super_init("SpecialAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "lastFrameStartTime", jr.as_j(jr.call(jr.get_field(this, "systemWrapper"), "currentTimeMillis_0", [])))
        jr.set_field(this, "animationInterfaceArray", l_animation_interface_array)
        jr.set_field(this, "sizeP", jr.as_i(jr.alen(jr.get_field(this, "animationInterfaceArray"))))
        jr.set_field(this, "basicColorArray", l_basic_color_array)
        jr.set_field(this, "dxArray", l_dx_array)
        jr.set_field(this, "dyArray", l_dy_array)
        jr.set_field(this, "y", jr.as_i(l_y))
        jr.set_field(this, "widthP", jr.as_i(l_width))
        jr.call(this, "reset_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TitleAnimation",
        "org.allbinary.animation.special.TitleAnimation",
        "SpecialAnimation",
        [],
        False,
        [#("systemWrapper", jr.JNull), #("deltaX", jr.JFloat(0.0)), #("deltaY", jr.JFloat(0.0)), #("deltaZ", jr.JFloat(0.0)), #("basicColorArray", jr.JNull), #("dxArray", jr.JNull), #("dyArray", jr.JNull), #("widthP", jr.JInt(0)), #("animationInterfaceArray", jr.JNull), #("sizeP", jr.JInt(0)), #("y", jr.JInt(0)), #("lastFrameStartTime", jr.JLong(0)), #("displayInfoSingleton", jr.JNull), #("CLEAR_COLOR", jr.JNull)],
        [],
        [
            jr.Method("createAnimation_6", ["IndexedAnimationArr", "BasicColorArr", "intArr", "intArr", "int", "int"], True, c1_m14__createanimation), 
            jr.Method("nextFrame_0", [], False, c1_m16__nextframe), 
            jr.Method("isComplete_0", [], False, c1_m17__iscomplete), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m18__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m19__getsequence), 
            jr.Method("getSize_0", [], False, c1_m20__getsize), 
            jr.Method("getFrame_0", [], False, c1_m21__getframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m22__setframe), 
            jr.Method("setLastFrame_0", [], False, c1_m23__setlastframe), 
            jr.Method("reset_0", [], False, c1_m24__reset), 
            jr.Method("previousFrame_0", [], False, c1_m25__previousframe), 
            jr.Method("paintFrameXY_4", ["Graphics", "int", "int", "int"], False, c1_m26__paintframexy), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m28__paintxy), 
            jr.Method("jinit_7", ["IndexedAnimationArr", "BasicColorArr", "intArr", "intArr", "int", "int", "AnimationBehavior"], False, c1_jinit15)],
        c1_jfields,
        c1_jclinit,
    )
}

