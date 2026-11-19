// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FillAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        let l_changed = jr.cell(jr.JBool(False))
        case jr.truth(case jr.truth(jr.eq(jr.call_inherited(this, "FillAnimation", "getBasicColorP_0", []), jr.JNull)) { True -> jr.JBool(True) False -> jr.ne(jr.call(jr.call_inherited(this, "FillAnimation", "getBasicColorP_0", []), "intValue_0", []), jr.call(l_basic_color, "intValue_0", [])) }) {
            True -> {
            jr.set(l_changed, jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        jr.call_super("IndexedAnimation", this, "setBasicColorP_1", [l_basic_color])
        case jr.truth(jr.get(l_changed)) {
            True -> {
            jr.call(this, "updateModifiers_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__changebasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        let l_changed = jr.cell(jr.JBool(False))
        case jr.truth(case jr.truth(jr.eq(jr.call_inherited(this, "FillAnimation", "getChangeBasicColor_0", []), jr.JNull)) { True -> jr.JBool(True) False -> jr.ne(jr.call(jr.call_inherited(this, "FillAnimation", "getChangeBasicColor_0", []), "intValue_0", []), jr.call(l_basic_color, "intValue_0", [])) }) {
            True -> {
            jr.set(l_changed, jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        jr.call_super("IndexedAnimation", this, "changeBasicColor_1", [l_basic_color])
        case jr.truth(jr.get(l_changed)) {
            True -> {
            jr.call(this, "updateModifiers_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m7__setalpha(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha] = jargs
    let l_alpha = jr.as_i(l_alpha)
        let l_changed = jr.cell(jr.JBool(False))
        case jr.truth(jr.ne(jr.get_inherited(this, "FillAnimation", "alphaP"), l_alpha)) {
            True -> {
            jr.set(l_changed, jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        jr.call_super("IndexedAnimation", this, "setAlpha_1", [l_alpha])
        case jr.truth(jr.get(l_changed)) {
            True -> {
            jr.call(this, "updateModifiers_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m8__setscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_x, l_scale_y] = jargs
    let l_scale_x = jr.as_f(l_scale_x)
    let l_scale_y = jr.as_f(l_scale_y)
    jr.JNull
}

fn c1_m9__setmaxscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_scale_x, l_max_scale_y] = jargs
    let l_max_scale_x = jr.as_f(l_max_scale_x)
    let l_max_scale_y = jr.as_f(l_max_scale_y)
    jr.JNull
}

fn c1_m10__updatemodifiers(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_g] = jargs
        jr.call(l_g, "drawRGB_8", [jr.get_field(this, "pixelBuffer"), jr.JInt(0), jr.get_field(this, "width"), jr.JInt(0), jr.JInt(0), jr.get_field(this, "width"), jr.get_field(this, "height"), jr.JBool(True)])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pixel_buffer, l_width, l_height, l_animation_behavior] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "width", jr.as_i(jr.JInt(100)))
        jr.set_field(this, "height", jr.as_i(jr.JInt(100)))
        jr.set_field(this, "pixelBuffer", l_pixel_buffer)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FillAnimation",
        "org.allbinary.animation.FillAnimation",
        "IndexedAnimation",
        [],
        False,
        [#("pixelBuffer", jr.JNull), #("width", jr.JInt(0)), #("height", jr.JInt(0))],
        [],
        [
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m5__setbasiccolorp), 
            jr.Method("changeBasicColor_1", ["BasicColor"], False, c1_m6__changebasiccolor), 
            jr.Method("setAlpha_1", ["int"], False, c1_m7__setalpha), 
            jr.Method("setScale_2", ["float", "float"], False, c1_m8__setscale), 
            jr.Method("setMaxScale_2", ["float", "float"], False, c1_m9__setmaxscale), 
            jr.Method("updateModifiers_0", [], False, c1_m10__updatemodifiers), 
            jr.Method("paint_1", ["Graphics"], False, c1_m11__paint), 
            jr.Method("jinit_4", ["intArr", "int", "int", "AnimationBehavior"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

