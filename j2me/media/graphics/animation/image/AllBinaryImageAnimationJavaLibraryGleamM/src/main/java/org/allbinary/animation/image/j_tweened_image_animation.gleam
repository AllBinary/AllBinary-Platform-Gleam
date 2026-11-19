// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TweenedImageAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(this, "getSize_0", []))
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
    jr.as_i(jr.get_field(this, "totalFrames"))
}

fn c1_m13__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m14__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m16__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_frame = jr.as_i(jr.call(this, "getFrame_0", []))
        let l_current_x = jr.as_i(jr.mul(jr.get_field(this, "dx"), l_frame))
        let l_current_y = jr.as_i(jr.mul(jr.get_field(this, "dy"), l_frame))
        jr.call(l_graphics, "drawImage_4", [jr.get_field(this, "image"), jr.add(l_x, l_current_x), jr.add(l_y, l_current_y), jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_m17__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DisposalUtil", "getInstance_0", []), "disposeImage_1", [jr.get_field(this, "image")])
    jr.JNull
}

fn c1_m18__finalize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DisposalUtil", "getInstance_0", []), "disposeImage_1", [jr.get_field(this, "image")])
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy, l_total_frames, l_animation_behavior] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    let l_total_frames = jr.as_i(l_total_frames)
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "image", l_image)
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
        jr.set_field(this, "totalFrames", jr.as_i(l_total_frames))
        jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.get_field(this, "totalFrames")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TweenedImageAnimation",
        "org.allbinary.animation.image.TweenedImageAnimation",
        "IndexedAnimation",
        [],
        False,
        [#("image", jr.JNull), #("dx", jr.JInt(0)), #("dy", jr.JInt(0)), #("totalFrames", jr.JInt(0)), #("circularIndexUtil", jr.JNull), #("anchor", jr.JInt(0))],
        [],
        [
            jr.Method("getAnimationSize_0", [], False, c1_m7__getanimationsize), 
            jr.Method("nextFrame_0", [], False, c1_m8__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m9__previousframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m10__setframe), 
            jr.Method("getFrame_0", [], False, c1_m11__getframe), 
            jr.Method("getSize_0", [], False, c1_m12__getsize), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m13__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m14__getsequence), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m16__paintxy), 
            jr.Method("close_0", [], False, c1_m17__close), 
            jr.Method("finalize_0", [], False, c1_m18__finalize), 
            jr.Method("jinit_5", ["Image", "int", "int", "int", "AnimationBehavior"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

