// Generated Code Do Not Modify
// package org.allbinary.animation.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AdjustedCircleAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_x_adjustment, l_y_adjustment, l_basic_color] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_x_adjustment = jr.as_i(l_x_adjustment)
    let l_y_adjustment = jr.as_i(l_y_adjustment)
        let l_adjusted_circle_animation = jr.new("AdjustedCircleAnimation", [l_width, l_height, l_basic_color])
        jr.call(l_adjusted_circle_animation, "initXY_2", [l_x_adjustment, l_y_adjustment])
    l_adjusted_circle_animation
}

fn c1_m2__createw(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_inner_width, l_basic_color] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_inner_width = jr.as_i(l_inner_width)
        let l_adjusted_circle_animation = jr.new("AdjustedCircleAnimation", [l_width, l_height, l_basic_color])
        jr.call(l_adjusted_circle_animation, "init_1", [l_inner_width])
    l_adjusted_circle_animation
}

fn c1_m6__initxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x_adjustment, l_y_adjustment] = jargs
    let l_x_adjustment = jr.as_i(l_x_adjustment)
    let l_y_adjustment = jr.as_i(l_y_adjustment)
        jr.set_field(this, "xAdjustment", jr.as_i(l_x_adjustment))
        jr.set_field(this, "yAdjustment", jr.as_i(l_y_adjustment))
    jr.JNull
}

fn c1_m7__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_inner_width] = jargs
    let l_inner_width = jr.as_i(l_inner_width)
        case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) {
            True -> {
            let l_width_portion = jr.as_i(jr.div(jr.mul(jr.div(l_inner_width, jr.JInt(3)), jr.JInt(10)), jr.JInt(7)))
            jr.set_field(this, "xAdjustment", jr.as_i(jr.neg(jr.sub(jr.shr(jr.get_inherited(this, "AdjustedCircleAnimation", "width"), jr.JInt(1)), l_width_portion))))
            jr.set_field(this, "yAdjustment", jr.as_i(jr.get_field(this, "xAdjustment")))
            Nil
        }
            False -> {
            jr.set_field(this, "xAdjustment", jr.as_i(jr.neg(jr.sub(jr.shr(jr.get_inherited(this, "AdjustedCircleAnimation", "width"), jr.JInt(1)), l_inner_width))))
            jr.set_field(this, "yAdjustment", jr.as_i(jr.get_field(this, "xAdjustment")))
            Nil
        }
        }
    jr.JNull
}

fn c1_m8__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "AdjustedCircleAnimation", "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.call_inherited(this, "AdjustedCircleAnimation", "getBasicColorP_0", []), jr.call_inherited(this, "AdjustedCircleAnimation", "getColor_0", [])])
        jr.call(l_graphics, "drawArc_6", [jr.add(l_x, jr.get_field(this, "xAdjustment")), jr.add(l_y, jr.get_field(this, "yAdjustment")), jr.get_inherited(this, "AdjustedCircleAnimation", "width"), jr.get_inherited(this, "AdjustedCircleAnimation", "height"), jr.JInt(0), jr.get_inherited(this, "AdjustedCircleAnimation", "TOTAL_ANGLE")])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_basic_color] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        jr.super_init("CircleAnimation", this, [l_width, l_height, l_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AdjustedCircleAnimation",
        "org.allbinary.animation.vector.AdjustedCircleAnimation",
        "CircleAnimation",
        [],
        False,
        [#("xAdjustment", jr.JInt(0)), #("yAdjustment", jr.JInt(0))],
        [],
        [
            jr.Method("createAnimation_5", ["int", "int", "int", "int", "BasicColor"], True, c1_m1__createanimation), 
            jr.Method("createW_4", ["int", "int", "int", "BasicColor"], True, c1_m2__createw), 
            jr.Method("initXY_2", ["int", "int"], False, c1_m6__initxy), 
            jr.Method("init_1", ["int"], False, c1_m7__init), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m8__paintxy), 
            jr.Method("jinit_3", ["int", "int", "BasicColor"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

