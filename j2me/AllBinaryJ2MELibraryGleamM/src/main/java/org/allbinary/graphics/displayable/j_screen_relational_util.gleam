// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScreenRelationalUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ScreenRelationalUtil", "instance", jr.new("ScreenRelationalUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ScreenRelationalUtil", "instance")
}

fn c1_m3__getscaleimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    jr.as_f(jr.call(this, "getScaleWH_2", [jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", [])]))
}

fn c1_m4__getscalewh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_width, l_a_height] = jargs
    let l_a_width = jr.as_i(l_a_width)
    let l_a_height = jr.as_i(l_a_height)
    jr.as_f(jr.call(this, "getScaleWHA_3", [l_a_width, l_a_height, jr.JInt(20)]))
}

fn c1_m5__getscalewha(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_width, l_a_height, l_add] = jargs
    let l_a_width = jr.as_i(l_a_width)
    let l_a_height = jr.as_i(l_a_height)
    let l_add = jr.as_i(l_add)
        let l_display_info_singleton = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_last = jr.call(l_display_info_singleton, "getLast_0", [])
        let l_width = jr.as_f(jr.to_f(jr.aget(l_last, jr.get_field(l_display_info_singleton, "WIDTH"))))
        let l_height = jr.as_f(jr.to_f(jr.aget(l_last, jr.get_field(l_display_info_singleton, "HEIGHT"))))
        let l_largest_size = jr.cell(jr.as_f(l_width))
        case jr.truth(jr.lt(jr.get(l_largest_size), l_height)) {
            True -> {
            jr.set(l_largest_size, jr.as_f(l_height))
            Nil
        }
            False -> Nil
        }
        let l_scale = jr.as_f(jr.div(jr.get(l_largest_size), jr.to_f(l_a_width)))
    jr.as_f(l_scale)
}

fn c1_m6__getscaledheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_width, l_a_height] = jargs
    let l_a_width = jr.as_i(l_a_width)
    let l_a_height = jr.as_i(l_a_height)
    jr.as_i(jr.to_i(jr.mul(jr.call(this, "getScaleWH_2", [l_a_width, l_a_height]), jr.to_f(l_a_height))))
}

fn c1_m7__getscaledheightadd(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_width, l_a_height, l_add] = jargs
    let l_a_width = jr.as_i(l_a_width)
    let l_a_height = jr.as_i(l_a_height)
    let l_add = jr.as_i(l_add)
    jr.as_i(jr.to_i(jr.mul(jr.call(this, "getScaleWHA_3", [l_a_width, l_a_height, l_add]), jr.to_f(l_a_height))))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScreenRelationalUtil",
        "org.allbinary.graphics.displayable.ScreenRelationalUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getScaleImage_1", ["Image"], False, c1_m3__getscaleimage), 
            jr.Method("getScaleWH_2", ["int", "int"], False, c1_m4__getscalewh), 
            jr.Method("getScaleWHA_3", ["int", "int", "int"], False, c1_m5__getscalewha), 
            jr.Method("getScaledHeight_2", ["int", "int"], False, c1_m6__getscaledheight), 
            jr.Method("getScaledHeightAdd_3", ["int", "int", "int"], False, c1_m7__getscaledheightadd), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

