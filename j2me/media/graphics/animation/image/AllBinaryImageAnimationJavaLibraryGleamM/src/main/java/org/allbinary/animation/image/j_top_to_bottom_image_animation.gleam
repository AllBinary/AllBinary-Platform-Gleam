// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TopToBottomImageAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "anchor_TopToBottomImageAnimation", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.aget(jr.call_inherited(this, "TopToBottomImageAnimation", "getSequence_0", []), jr.JInt(0)), jr.JInt(-1))) {
            True -> {
            jr.call_super("ImageSegmentAnimation", this, "previousFrame_0", [])
            Nil
        }
            False -> {
            jr.call_super("ImageSegmentAnimation", this, "nextFrame_0", [])
            Nil
        }
        }
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m4__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.aget(jr.call_inherited(this, "TopToBottomImageAnimation", "getSequence_0", []), jr.JInt(0)), jr.JInt(-1))) {
            True -> {
            jr.call_super("ImageSegmentAnimation", this, "nextFrame_0", [])
            Nil
        }
            False -> {
            jr.call_super("ImageSegmentAnimation", this, "previousFrame_0", [])
            Nil
        }
        }
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m5__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call_super("ImageSegmentAnimation", this, "setFrame_1", [l_index])
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m6__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "currentHeight", jr.as_i(jr.div(jr.mul(jr.call_inherited(this, "TopToBottomImageAnimation", "getDrawHeight_0", []), jr.call_inherited(this, "TopToBottomImageAnimation", "getFrame_0", [])), jr.call_inherited(this, "TopToBottomImageAnimation", "getSize_0", []))))
    jr.JNull
}

fn c1_m8__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_graphics, "drawRegion_9", [jr.call_inherited(this, "TopToBottomImageAnimation", "getImage_0", []), jr.call_inherited(this, "TopToBottomImageAnimation", "getStartX_0", []), jr.call_inherited(this, "TopToBottomImageAnimation", "getStartY_0", []), jr.call_inherited(this, "TopToBottomImageAnimation", "getDrawWidth_0", []), jr.get_field(this, "currentHeight"), jr.get_static("Sprite", "TRANS_NONE"), l_x, l_y, jr.get_field(this, "anchor_TopToBottomImageAnimation")])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_sequence_array, l_animation_behavior] = jargs
        jr.super_init("ImageSegmentAnimation", this, [l_image, l_sequence_array, l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "currentHeight", jr.as_i(jr.JInt(0)))
        case jr.truth(jr.eq(jr.aget(jr.call_inherited(this, "TopToBottomImageAnimation", "getSequence_0", []), jr.JInt(0)), jr.JInt(-1))) {
            True -> {
            jr.call(this, "setFrame_1", [jr.sub(jr.call_inherited(this, "TopToBottomImageAnimation", "getSize_0", []), jr.JInt(1))])
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TopToBottomImageAnimation",
        "org.allbinary.animation.image.TopToBottomImageAnimation",
        "ImageSegmentAnimation",
        [],
        False,
        [#("currentHeight", jr.JInt(0)), #("anchor_TopToBottomImageAnimation", jr.JInt(0))],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m3__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m4__previousframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m5__setframe), 
            jr.Method("update_0", [], False, c1_m6__update), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m8__paintxy), 
            jr.Method("jinit_3", ["Image", "intArr", "AnimationBehavior"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

