// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageSegmentAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m9__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "circularIndexUtil"), "previous_0", [])
    jr.JNull
}

fn c1_m10__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_field(this, "circularIndexUtil"), "setIndex_1", [l_index])
    jr.JNull
}

fn c1_m11__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
}

fn c1_m12__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getSize_0", []))
}

fn c1_m13__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence_array] = jargs
        jr.set_field(this, "sequenceArray", l_sequence_array)
    jr.JNull
}

fn c1_m14__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "sequenceArray")
}

fn c1_m15__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_m16__getstartx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "startX"))
}

fn c1_m17__setstartx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_start_x] = jargs
    let l_start_x = jr.as_i(l_start_x)
        jr.set_field(this, "startX", jr.as_i(l_start_x))
    jr.JNull
}

fn c1_m18__getstarty(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "startY"))
}

fn c1_m19__setstarty(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_start_y] = jargs
    let l_start_y = jr.as_i(l_start_y)
        jr.set_field(this, "startY", jr.as_i(l_start_y))
    jr.JNull
}

fn c1_m20__getdrawwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "drawWidth"))
}

fn c1_m21__setdrawwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_draw_width] = jargs
    let l_draw_width = jr.as_i(l_draw_width)
        jr.set_field(this, "drawWidth", jr.as_i(l_draw_width))
    jr.JNull
}

fn c1_m22__getdrawheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "drawHeight"))
}

fn c1_m23__setdrawheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_draw_height] = jargs
    let l_draw_height = jr.as_i(l_draw_height)
        jr.set_field(this, "drawHeight", jr.as_i(l_draw_height))
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_sequence_array, l_animation_behavior] = jargs
        jr.super_init("ImageAnimation", this, [l_image, l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "startX", jr.as_i(jr.JInt(0)))
        jr.set_field(this, "startY", jr.as_i(jr.JInt(0)))
        jr.set_field(this, "drawWidth", jr.as_i(jr.call(jr.call_inherited(this, "ImageSegmentAnimation", "getImage_0", []), "getWidth_0", [])))
        jr.set_field(this, "drawHeight", jr.as_i(jr.call(jr.call_inherited(this, "ImageSegmentAnimation", "getImage_0", []), "getHeight_0", [])))
        jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.get_field(this, "drawHeight")]))
        jr.set_field(this, "sequenceArray", l_sequence_array)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageSegmentAnimation",
        "org.allbinary.animation.image.ImageSegmentAnimation",
        "ImageAnimation",
        [],
        False,
        [#("startX", jr.JInt(0)), #("startY", jr.JInt(0)), #("drawWidth", jr.JInt(0)), #("drawHeight", jr.JInt(0)), #("circularIndexUtil", jr.JNull), #("sequenceArray", jr.JNull)],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m8__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m9__previousframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m10__setframe), 
            jr.Method("getFrame_0", [], False, c1_m11__getframe), 
            jr.Method("getSize_0", [], False, c1_m12__getsize), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m13__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m14__getsequence), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m15__paintxy), 
            jr.Method("getStartX_0", [], False, c1_m16__getstartx), 
            jr.Method("setStartX_1", ["int"], False, c1_m17__setstartx), 
            jr.Method("getStartY_0", [], False, c1_m18__getstarty), 
            jr.Method("setStartY_1", ["int"], False, c1_m19__setstarty), 
            jr.Method("getDrawWidth_0", [], False, c1_m20__getdrawwidth), 
            jr.Method("setDrawWidth_1", ["int"], False, c1_m21__setdrawwidth), 
            jr.Method("getDrawHeight_0", [], False, c1_m22__getdrawheight), 
            jr.Method("setDrawHeight_1", ["int"], False, c1_m23__setdrawheight), 
            jr.Method("jinit_3", ["Image", "intArr", "AnimationBehavior"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

