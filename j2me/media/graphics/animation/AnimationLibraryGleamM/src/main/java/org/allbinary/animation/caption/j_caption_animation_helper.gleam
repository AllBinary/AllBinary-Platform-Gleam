// Generated Code Do Not Modify
// package org.allbinary.animation.caption
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CaptionAnimationHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "timeHelper", jr.new("TimeDelayHelper", [jr.JInt(620)]))
    jr.set_field(this, "textAnimation", jr.new("TextAnimation", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.call_static("AnimationBehavior", "getInstance_0", [])]))
    jr.set_field(this, "animation", jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__isshowing(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "animation"), jr.get_field(this, "captionAnimation"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m7__tick(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "timeHelper"), "isTime_1", [jr.get_field(jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []), "startTime")])) {
            True -> {
            jr.set_field(this, "animation", jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m8__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_message, l_basic_color] = jargs
        jr.call(jr.get_field(this, "textAnimation"), "setBasicColorP_1", [l_basic_color])
        jr.call(jr.get_field(this, "textAnimation"), "setText_1", [l_message])
        jr.set_field(this, "animation", jr.get_field(this, "captionAnimation"))
        jr.call(jr.get_field(this, "timeHelper"), "setStartTimeTNT_0", [])
    jr.JNull
}

fn c1_m9__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "animation"), "paintXY_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_caption_animation, l_caption_dx, l_caption_dy, l_dx, l_dy] = jargs
    let l_caption_dx = jr.as_i(l_caption_dx)
    let l_caption_dy = jr.as_i(l_caption_dy)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.super_init("CaptionAnimationHelperBase", this, [])
    c1_jfields(this)
        jr.set_field(this, "captionAnimation", jr.new("CaptionAnimation", [l_caption_animation, jr.get_field(this, "textAnimation"), l_caption_dx, l_caption_dy, l_dx, l_dy]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CaptionAnimationHelper",
        "org.allbinary.animation.caption.CaptionAnimationHelper",
        "CaptionAnimationHelperBase",
        [],
        False,
        [#("timeHelper", jr.JNull), #("textAnimation", jr.JNull), #("captionAnimation", jr.JNull), #("animation", jr.JNull)],
        [],
        [
            jr.Method("isShowing_0", [], False, c1_m6__isshowing), 
            jr.Method("tick_0", [], False, c1_m7__tick), 
            jr.Method("update_2", ["String", "BasicColor"], False, c1_m8__update), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m9__paintxy), 
            jr.Method("jinit_5", ["Animation", "int", "int", "int", "int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

