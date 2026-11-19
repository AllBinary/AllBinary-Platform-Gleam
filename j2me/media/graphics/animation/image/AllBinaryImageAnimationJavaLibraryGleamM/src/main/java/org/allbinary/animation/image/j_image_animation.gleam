// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(this, "getSize_0", []))
}

fn c1_m4__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m6__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.JNull
}

fn c1_m7__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m8__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(1))
}

fn c1_m9__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m10__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m12__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_graphics, "drawImage_4", [jr.get_field(this, "image"), l_x, l_y, jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_m13__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "image")
}

fn c1_m14__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DisposalUtil", "getInstance_0", []), "disposeImage_1", [jr.get_field(this, "image")])
    jr.JNull
}

fn c1_m15__finalize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DisposalUtil", "getInstance_0", []), "disposeImage_1", [jr.get_field(this, "image")])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "image", l_image)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageAnimation",
        "org.allbinary.animation.image.ImageAnimation",
        "IndexedAnimation",
        [],
        False,
        [#("image", jr.JNull), #("anchor", jr.JInt(0))],
        [],
        [
            jr.Method("getAnimationSize_0", [], False, c1_m3__getanimationsize), 
            jr.Method("nextFrame_0", [], False, c1_m4__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m5__previousframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m6__setframe), 
            jr.Method("getFrame_0", [], False, c1_m7__getframe), 
            jr.Method("getSize_0", [], False, c1_m8__getsize), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m9__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m10__getsequence), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m12__paintxy), 
            jr.Method("getImage_0", [], False, c1_m13__getimage), 
            jr.Method("close_0", [], False, c1_m14__close), 
            jr.Method("finalize_0", [], False, c1_m15__finalize), 
            jr.Method("jinit_2", ["Image", "AnimationBehavior"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

