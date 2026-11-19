// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArrayAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "imageArray", jr.get_static("NullImage", "NULL_IMAGE_ARRAY"))
    jr.set_field(this, "circularIndexUtil", jr.get_static("CircularIndexUtil", "NULL_CIRCULAR_INDEX_UTIL"))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(this, "getSize_0", []))
}

fn c1_m6__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m7__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "circularIndexUtil"), "previous_0", [])
    jr.JNull
}

fn c1_m8__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_field(this, "circularIndexUtil"), "setIndex_1", [l_index])
    jr.JNull
}

fn c1_m9__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
}

fn c1_m10__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "totalFrames"))
}

fn c1_m11__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m12__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m13__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.aget(jr.get_field(this, "imageArray"), l_index)
}

fn c1_m14__getimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "imageArray")
}

fn c1_m15__setimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array] = jargs
        jr.set_field(this, "imageArray", l_image_array)
        jr.set_field(this, "totalFrames", jr.as_i(jr.alen(l_image_array)))
        jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.get_field(this, "totalFrames")]))
    jr.JNull
}

fn c1_m17__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_graphics, "drawImage_4", [jr.aget(jr.get_field(this, "imageArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])), l_x, l_y, jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "setImageArray_1", [l_image_array])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArrayAnimation",
        "org.allbinary.animation.image.ImageArrayAnimation",
        "IndexedAnimation",
        [],
        False,
        [#("imageArray", jr.JNull), #("totalFrames", jr.JInt(0)), #("circularIndexUtil", jr.JNull), #("anchor", jr.JInt(0))],
        [],
        [
            jr.Method("getAnimationSize_0", [], False, c1_m5__getanimationsize), 
            jr.Method("nextFrame_0", [], False, c1_m6__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m7__previousframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m8__setframe), 
            jr.Method("getFrame_0", [], False, c1_m9__getframe), 
            jr.Method("getSize_0", [], False, c1_m10__getsize), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m11__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m12__getsequence), 
            jr.Method("getImage_1", ["int"], False, c1_m13__getimage), 
            jr.Method("getImageArray_0", [], False, c1_m14__getimagearray), 
            jr.Method("setImageArray_1", ["ImageArr"], False, c1_m15__setimagearray), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m17__paintxy), 
            jr.Method("jinit_2", ["ImageArr", "AnimationBehavior"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

