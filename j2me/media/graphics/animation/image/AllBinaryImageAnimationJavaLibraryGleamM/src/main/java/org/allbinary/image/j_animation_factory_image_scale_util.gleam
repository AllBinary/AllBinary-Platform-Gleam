// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnimationFactoryImageScaleUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "imageScaleUtil", jr.call_static("ImageJ2MEScaleUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AnimationFactoryImageScaleUtil", "instance", jr.new("AnimationFactoryImageScaleUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AnimationFactoryImageScaleUtil", "instance")
}

fn c1_m4__createimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height, l_scale_width, l_scale_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_scale_width = jr.as_i(l_scale_width)
    let l_scale_height = jr.as_i(l_scale_height)
        let l_scaled_image = jr.cell(jr.JNull)
        case jr.truth(case jr.truth(jr.ne(l_scale_width, jr.JInt(0))) { True -> jr.ne(l_scale_height, jr.JInt(0)) False -> jr.JBool(False) }) {
            True -> {
            let l_scale_x = jr.as_f(jr.div(jr.to_f(l_scale_width), jr.to_f(l_width)))
            let l_scale_y = jr.as_f(jr.div(jr.to_f(l_scale_height), jr.to_f(l_height)))
            case jr.truth(case jr.truth(case jr.truth(jr.eq(l_scale_x, jr.JFloat(1.0))) { True -> jr.eq(l_scale_y, jr.JFloat(1.0)) False -> jr.JBool(False) }) { True -> jr.JBool(True) False -> case jr.truth(jr.eq(l_scale_x, jr.JFloat(0.0))) { True -> jr.JBool(True) False -> jr.eq(l_scale_y, jr.JFloat(0.0)) } }) {
                True -> {
                jr.set(l_scaled_image, l_image)
                Nil
            }
                False -> {
                let l_scaled_width = jr.as_i(jr.to_i(jr.mul(l_scale_x, jr.to_f(l_width))))
                let l_scaled_height = jr.as_i(jr.to_i(jr.mul(l_scale_y, jr.to_f(l_height))))
                jr.set(l_scaled_image, jr.call(jr.get_field(this, "imageScaleUtil"), "scale_3", [l_image, l_scaled_width, l_scaled_height]))
                Nil
            }
            }
            Nil
        }
            False -> {
            jr.set(l_scaled_image, l_image)
            Nil
        }
        }
    jr.get(l_scaled_image)
}

fn c1_m5__processadjust(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_base_image_animation_factory] = jargs
        let l_scale_properties = jr.call(l_base_image_animation_factory, "getScalePropertiesP_0", [])
        case jr.truth(case jr.truth(jr.ne(jr.get_field(l_scale_properties, "scaleWidth"), jr.JInt(0))) { True -> jr.ne(jr.get_field(l_scale_properties, "scaleHeight"), jr.JInt(0)) False -> jr.JBool(False) }) {
            True -> {
            let l_animation_factory_initialization_visitor = jr.call(l_base_image_animation_factory, "getAnimationFactoryInitializationVisitorP_0", [])
            let l_scale_x = jr.as_f(jr.div(jr.to_f(jr.get_field(l_scale_properties, "scaleWidth")), jr.to_f(jr.get_field(l_animation_factory_initialization_visitor, "width"))))
            let l_scale_y = jr.as_f(jr.div(jr.to_f(jr.get_field(l_scale_properties, "scaleHeight")), jr.to_f(jr.get_field(l_animation_factory_initialization_visitor, "height"))))
            case jr.truth(case jr.truth(case jr.truth(jr.eq(l_scale_x, jr.JFloat(1.0))) { True -> jr.eq(l_scale_y, jr.JFloat(1.0)) False -> jr.JBool(False) }) { True -> jr.JBool(True) False -> case jr.truth(jr.eq(l_scale_x, jr.JFloat(0.0))) { True -> jr.JBool(True) False -> jr.eq(l_scale_y, jr.JFloat(0.0)) } }) {
                True -> {
                Nil
            }
                False -> {
                jr.set_field(l_animation_factory_initialization_visitor, "dx", jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get_field(l_animation_factory_initialization_visitor, "originalDx")), l_scale_x))))
                jr.set_field(l_animation_factory_initialization_visitor, "dy", jr.as_i(jr.to_i(jr.mul(jr.to_f(jr.get_field(l_animation_factory_initialization_visitor, "originalDy")), l_scale_y))))
                Nil
            }
            }
            Nil
        }
            False -> {
            Nil
        }
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnimationFactoryImageScaleUtil",
        "org.allbinary.image.AnimationFactoryImageScaleUtil",
        "Object",
        [],
        False,
        [#("imageScaleUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createImage_5", ["Image", "int", "int", "int", "int"], False, c1_m4__createimage), 
            jr.Method("processAdjust_1", ["BaseImageAnimationFactory"], False, c1_m5__processadjust), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

