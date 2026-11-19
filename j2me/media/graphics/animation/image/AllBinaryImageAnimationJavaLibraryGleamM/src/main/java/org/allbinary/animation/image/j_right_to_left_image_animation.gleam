// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RightToLeftImageAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "anchor_RightToLeftImageAnimation", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("ImageSegmentAnimation", this, "previousFrame_0", [])
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m5__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("ImageSegmentAnimation", this, "nextFrame_0", [])
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m6__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call_super("ImageSegmentAnimation", this, "setFrame_1", [l_index])
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m7__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "startWidth", jr.as_i(jr.div(jr.mul(jr.call_inherited(this, "RightToLeftImageAnimation", "getDrawWidth_0", []), jr.call_inherited(this, "RightToLeftImageAnimation", "getFrame_0", [])), jr.call_inherited(this, "RightToLeftImageAnimation", "getSize_0", []))))
        jr.set_field(this, "currentWidth", jr.as_i(jr.sub(jr.call_inherited(this, "RightToLeftImageAnimation", "getDrawWidth_0", []), jr.get_field(this, "startWidth"))))
    jr.JNull
}

fn c1_m9__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_graphics, "drawRegion_9", [jr.call_inherited(this, "RightToLeftImageAnimation", "getImage_0", []), jr.get_field(this, "startWidth"), jr.call_inherited(this, "RightToLeftImageAnimation", "getStartY_0", []), jr.get_field(this, "currentWidth"), jr.call_inherited(this, "RightToLeftImageAnimation", "getDrawHeight_0", []), jr.get_static("Sprite", "TRANS_NONE"), jr.add(l_x, jr.get_field(this, "startWidth")), l_y, jr.get_field(this, "anchor_RightToLeftImageAnimation")])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_animation_behavior] = jargs
        jr.super_init("ImageSegmentAnimation", this, [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "setFrame_1", [jr.sub(jr.call_inherited(this, "RightToLeftImageAnimation", "getSize_0", []), jr.JInt(1))])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RightToLeftImageAnimation",
        "org.allbinary.animation.image.RightToLeftImageAnimation",
        "ImageSegmentAnimation",
        [],
        False,
        [#("startWidth", jr.JInt(0)), #("currentWidth", jr.JInt(0)), #("anchor_RightToLeftImageAnimation", jr.JInt(0))],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m4__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m5__previousframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m6__setframe), 
            jr.Method("update_0", [], False, c1_m7__update), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m9__paintxy), 
            jr.Method("jinit_2", ["Image", "AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

