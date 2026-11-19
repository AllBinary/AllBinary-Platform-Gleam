// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArrayBaseRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "imageModifierUtil", jr.call_static("ImageModifierUtil", "getInstanceOrCreate_0", []))
    jr.set_field(this, "imageArray", jr.get_static("NullImage", "NULL_IMAGE_ARRAY"))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "ImageArrayBaseRotationAnimation", "getSize_0", []))
}

fn c1_m8__setalpha(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha] = jargs
    let l_alpha = jr.as_i(l_alpha)
        case jr.truth(jr.ne(jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "alphaP"), l_alpha)) {
            True -> {
            jr.call_super("RotationAnimation", this, "setAlpha_1", [l_alpha])
            jr.call(jr.get_field(this, "imageModifierUtil"), "reset_0", [])
            let l_index = jr.as_i(jr.call(jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "circularIndexUtil"), "getIndex_0", []))
            jr.call(jr.get_field(this, "imageModifierUtil"), "setAlpha_4", [jr.aget(jr.get_field(this, "originalImageArray"), l_index), jr.aget(jr.get_field(this, "imageArray"), l_index), l_index, jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "alphaP")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m9__nextrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("RotationAnimation", this, "nextRotation_0", [])
        let l_index = jr.as_i(jr.call(jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "circularIndexUtil"), "getIndex_0", []))
        jr.call(jr.get_field(this, "imageModifierUtil"), "setAlpha_4", [jr.aget(jr.get_field(this, "originalImageArray"), l_index), jr.aget(jr.get_field(this, "imageArray"), l_index), l_index, jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "alphaP")])
        jr.set_field(this, "currentImage", jr.aget(jr.get_field(this, "imageArray"), l_index))
    jr.JNull
}

fn c1_m10__previousrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("RotationAnimation", this, "previousRotation_0", [])
        let l_index = jr.as_i(jr.call(jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "circularIndexUtil"), "getIndex_0", []))
        jr.call(jr.get_field(this, "imageModifierUtil"), "setAlpha_4", [jr.aget(jr.get_field(this, "originalImageArray"), l_index), jr.aget(jr.get_field(this, "imageArray"), l_index), l_index, jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "alphaP")])
        jr.set_field(this, "currentImage", jr.aget(jr.get_field(this, "imageArray"), l_index))
    jr.JNull
}

fn c1_m11__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index2] = jargs
    let l_index2 = jr.as_i(l_index2)
        jr.call_super("RotationAnimation", this, "setFrame_1", [l_index2])
        let l_index = jr.as_i(jr.call(jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "circularIndexUtil"), "getIndex_0", []))
        jr.call(jr.get_field(this, "imageModifierUtil"), "setAlpha_4", [jr.aget(jr.get_field(this, "originalImageArray"), l_index), jr.aget(jr.get_field(this, "imageArray"), l_index), l_index, jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "alphaP")])
        jr.set_field(this, "currentImage", jr.aget(jr.get_field(this, "imageArray"), l_index))
    jr.JNull
}

fn c1_m12__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m13__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m14__setimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array] = jargs
        jr.set_field(this, "imageArray", l_image_array)
        jr.set_field(this, "totalFrames", jr.as_i(jr.alen(l_image_array)))
        jr.set_inherited(this, "ImageArrayBaseRotationAnimation", "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.get_field(this, "totalFrames")]))
    jr.JNull
}

fn c1_m16__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_graphics, "drawImage_4", [jr.get_field(this, "currentImage"), l_x, l_y, jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_m17__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_disposal_util = jr.call_static("DisposalUtil", "getInstance_0", [])
        let l_size2 = jr.as_i(jr.alen(jr.get_field(this, "imageArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_disposal_util, "disposeImage_1", [jr.aget(jr.get_field(this, "imageArray"), jr.get(l_index))])
            Nil
        })
            Nil
        }
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "originalImageArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_disposal_util, "disposeImage_1", [jr.aget(jr.get_field(this, "originalImageArray"), jr.get(l_index))])
            Nil
        })
            Nil
        }
        jr.call(l_disposal_util, "disposeImage_1", [jr.get_field(this, "currentImage")])
    jr.JNull
}

fn c1_m18__finalize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_disposal_util = jr.call_static("DisposalUtil", "getInstance_0", [])
        let l_size2 = jr.as_i(jr.alen(jr.get_field(this, "imageArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_disposal_util, "disposeImage_1", [jr.aget(jr.get_field(this, "imageArray"), jr.get(l_index))])
            Nil
        })
            Nil
        }
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "originalImageArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_disposal_util, "disposeImage_1", [jr.aget(jr.get_field(this, "originalImageArray"), jr.get(l_index))])
            Nil
        })
            Nil
        }
        jr.call(l_disposal_util, "disposeImage_1", [jr.get_field(this, "currentImage")])
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original_image_array, l_angle_info, l_animation_behavior] = jargs
        jr.super_init("RotationAnimation", this, [l_angle_info, jr.call_static("CircularIndexUtil", "createInstance_1", [jr.div(jr.JInt(360), jr.to_i(jr.call(jr.call(l_angle_info, "getAngleIncrementInfo_0", []), "getAngleIncrement_0", [])))]), l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "originalImageArray", l_original_image_array)
        jr.call(this, "setImageArray_1", [jr.call(jr.get_field(this, "imageModifierUtil"), "getImageArray_1", [l_original_image_array])])
        jr.set_field(this, "currentImage", jr.aget(jr.get_field(this, "imageArray"), jr.call(jr.get_inherited(this, "ImageArrayBaseRotationAnimation", "circularIndexUtil"), "getIndex_0", [])))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArrayBaseRotationAnimation",
        "org.allbinary.animation.image.ImageArrayBaseRotationAnimation",
        "RotationAnimation",
        [],
        False,
        [#("imageModifierUtil", jr.JNull), #("originalImageArray", jr.JNull), #("imageArray", jr.JNull), #("currentImage", jr.JNull), #("totalFrames", jr.JInt(0)), #("anchor", jr.JInt(0))],
        [],
        [
            jr.Method("getAnimationSize_0", [], False, c1_m7__getanimationsize), 
            jr.Method("setAlpha_1", ["int"], False, c1_m8__setalpha), 
            jr.Method("nextRotation_0", [], False, c1_m9__nextrotation), 
            jr.Method("previousRotation_0", [], False, c1_m10__previousrotation), 
            jr.Method("setFrame_1", ["int"], False, c1_m11__setframe), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m12__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m13__getsequence), 
            jr.Method("setImageArray_1", ["ImageArr"], False, c1_m14__setimagearray), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m16__paintxy), 
            jr.Method("close_0", [], False, c1_m17__close), 
            jr.Method("finalize_0", [], False, c1_m18__finalize), 
            jr.Method("jinit_3", ["ImageArr", "AngleInfo", "AnimationBehavior"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

