// Generated Code Do Not Modify
// package org.allbinary.media.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageCopyUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "imageCreationUtil", jr.call_static("ImageCreationUtil", "getInstance_0", []))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.set_field(this, "gameFeatureFactory", jr.call_static("GameFeatureFactory", "getInstance_0", []))
    jr.set_field(this, "features", jr.call_static("Features", "getInstance_0", []))
    jr.set_field(this, "NO_COPY", jr.JStr("J2ME does not need to copy images after initial loading"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageCopyUtil", "instance", jr.new("ImageCopyUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageCopyUtil", "instance")
}

fn c1_m11__createimageforrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original_image] = jargs
    jr.call(this, "createImage_1", [l_original_image])
}

fn c1_m12__createimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original_image] = jargs
    jr.method(fn() {
            case jr.truth(jr.not(jr.call(jr.get_field(this, "features"), "isFeature_1", [jr.get_field(jr.get_field(this, "gameFeatureFactory"), "POST_IMAGE_LOADING_MODIFICATION")]))) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(this, "NO_COPY"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR"), jr.new("Exception", [])])
            jr.ret(l_original_image)
            Nil
        }
            False -> Nil
        }
            let l_image = jr.call(jr.get_field(this, "imageCreationUtil"), "createImageWH_2", [jr.call(l_original_image, "getWidth_0", []), jr.call(l_original_image, "getHeight_0", [])])
            case jr.truth(jr.call(l_image, "isMutable_0", [])) {
            True -> {
            jr.call(jr.call(l_image, "getGraphics_0", []), "drawImage_4", [l_original_image, jr.JInt(0), jr.JInt(0), jr.get_field(this, "anchor")])
            jr.ret(l_image)
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Not Mutable")]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m13__createimagescale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original_image, l_canvas_scale, l_resize] = jargs
    let l_canvas_scale = jr.as_f(l_canvas_scale)
    jr.method(fn() {
            case jr.truth(jr.not(jr.call(jr.get_field(this, "features"), "isFeature_1", [jr.get_field(jr.get_field(this, "gameFeatureFactory"), "POST_IMAGE_LOADING_MODIFICATION")]))) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(this, "NO_COPY"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR"), jr.new("Exception", [])])
            jr.ret(l_original_image)
            Nil
        }
            False -> Nil
        }
            let l_new_width = jr.cell(jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.call(l_original_image, "getWidth_0", [])), l_canvas_scale))))
            let l_new_height = jr.cell(jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.call(l_original_image, "getHeight_0", [])), l_canvas_scale))))
            case jr.truth(l_resize) {
            True -> {
            case jr.truth(jr.lt(jr.get(l_new_width), jr.get(l_new_height))) {
                True -> {
                jr.set(l_new_width, jr.as_i(jr.get(l_new_height)))
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.lt(jr.get(l_new_height), jr.get(l_new_width))) {
                True -> {
                jr.set(l_new_height, jr.as_i(jr.get(l_new_width)))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
            let l_image = jr.call(jr.get_field(this, "imageCreationUtil"), "createImageWH_2", [jr.get(l_new_width), jr.get(l_new_height)])
            case jr.truth(jr.call(l_image, "isMutable_0", [])) {
            True -> {
            let l_half_width_delta = jr.as_i(jr.div(jr.sub(jr.get(l_new_width), jr.call(l_original_image, "getWidth_0", [])), jr.JInt(2)))
            let l_half_height_delta = jr.as_i(jr.div(jr.sub(jr.get(l_new_height), jr.call(l_original_image, "getHeight_0", [])), jr.JInt(2)))
            let l_graphics = jr.call(l_image, "getGraphics_0", [])
            jr.call(l_graphics, "drawImage_4", [l_original_image, l_half_width_delta, l_half_height_delta, jr.get_field(this, "anchor")])
            jr.ret(l_image)
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Not Mutable")]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageCopyUtil",
        "org.allbinary.media.image.ImageCopyUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("imageCreationUtil", jr.JNull), #("anchor", jr.JInt(0)), #("gameFeatureFactory", jr.JNull), #("features", jr.JNull), #("NO_COPY", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("createImageForRotation_1", ["Image"], False, c1_m11__createimageforrotation), 
            jr.Method("createImage_1", ["Image"], False, c1_m12__createimage), 
            jr.Method("createImageScale_3", ["Image", "float", "boolean"], False, c1_m13__createimagescale), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

