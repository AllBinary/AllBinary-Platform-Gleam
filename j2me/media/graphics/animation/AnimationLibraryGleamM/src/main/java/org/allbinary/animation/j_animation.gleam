// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Animation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"))
    jr.set_field(this, "changeBasicColorP", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "NULL_COLOR"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__setalpha(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha] = jargs
    let l_alpha = jr.as_i(l_alpha)
        jr.set_field(this, "alphaP", jr.as_i(l_alpha))
    jr.JNull
}

fn c1_m9__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.call(this, "getBasicColorP_0", []), jr.call(this, "getColor_0", [])])
    jr.JNull
}

fn c1_m11__paintthreedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.JNull
}

fn c1_m12__isthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m13__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_m14__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
        jr.set_field(this, "colorP", jr.as_i(jr.call(jr.get_field(this, "basicColor"), "intValue_0", [])))
    jr.JNull
}

fn c1_m15__setbackgroundbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.JNull
}

fn c1_m16__getchangebasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "changeBasicColorP")
}

fn c1_m17__changebasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "changeBasicColorP", l_basic_color)
        jr.set_field(this, "changeColorP", jr.as_i(jr.call(jr.get_field(this, "changeBasicColorP"), "intValue_0", [])))
    jr.JNull
}

fn c1_m18__getchangecolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "changeColorP"))
}

fn c1_m19__getcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "colorP"))
}

fn c1_m20__setscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_x, l_scale_y] = jargs
    let l_scale_x = jr.as_f(l_scale_x)
    let l_scale_y = jr.as_f(l_scale_y)
    jr.JNull
}

fn c1_m21__setmaxscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_scale_x, l_max_scale_y] = jargs
    let l_max_scale_x = jr.as_f(l_max_scale_x)
    let l_max_scale_y = jr.as_f(l_max_scale_y)
    jr.JNull
}

fn c1_m22__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_m23__setdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx] = jargs
    let l_dx = jr.as_i(l_dx)
    jr.JNull
}

fn c1_m24__getdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m25__setdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dy] = jargs
    let l_dy = jr.as_i(l_dy)
    jr.JNull
}

fn c1_m26__getdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Animation",
        "org.allbinary.animation.Animation",
        "Object",
        ["AnimationInterface", "OpenGLSurfaceChangedInterface"],
        False,
        [#("basicSetColorUtil", jr.JNull), #("basicColor", jr.JNull), #("colorP", jr.JInt(0)), #("changeBasicColorP", jr.JNull), #("changeColorP", jr.JInt(0)), #("alphaP", jr.JInt(0))],
        [],
        [
            jr.Method("setAlpha_1", ["int"], False, c1_m8__setalpha), 
            jr.Method("nextFrame_0", [], False, c1_m9__nextframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m10__paintxy), 
            jr.Method("paintThreedXYZ_4", ["Graphics", "int", "int", "int"], False, c1_m11__paintthreedxyz), 
            jr.Method("isThreed_0", [], False, c1_m12__isthreed), 
            jr.Method("getBasicColorP_0", [], False, c1_m13__getbasiccolorp), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m14__setbasiccolorp), 
            jr.Method("setBackgroundBasicColorP_1", ["BasicColor"], False, c1_m15__setbackgroundbasiccolorp), 
            jr.Method("getChangeBasicColor_0", [], False, c1_m16__getchangebasiccolor), 
            jr.Method("changeBasicColor_1", ["BasicColor"], False, c1_m17__changebasiccolor), 
            jr.Method("getChangeColor_0", [], False, c1_m18__getchangecolor), 
            jr.Method("getColor_0", [], False, c1_m19__getcolor), 
            jr.Method("setScale_2", ["float", "float"], False, c1_m20__setscale), 
            jr.Method("setMaxScale_2", ["float", "float"], False, c1_m21__setmaxscale), 
            jr.Method("set_1", ["GL"], False, c1_m22__set), 
            jr.Method("setDx_1", ["int"], False, c1_m23__setdx), 
            jr.Method("getDx_0", [], False, c1_m24__getdx), 
            jr.Method("setDy_1", ["int"], False, c1_m25__setdy), 
            jr.Method("getDy_0", [], False, c1_m26__getdy), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

