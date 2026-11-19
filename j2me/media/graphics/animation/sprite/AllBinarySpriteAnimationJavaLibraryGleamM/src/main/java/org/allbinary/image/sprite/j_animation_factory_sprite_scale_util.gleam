// Generated Code Do Not Modify
// package org.allbinary.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnimationFactorySpriteScaleUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "imageCache", jr.call_static("ImageCacheFactory", "getInstance_0", []))
    jr.set_field(this, "imageScaleUtil", jr.call_static("ImageScaleUtil", "getInstance_0", []))
    jr.set_field(this, "openGLUtil", jr.call_static("OpenGLUtil", "getInstance_0", []))
    jr.set_field(this, "j2seMath", jr.call_static("J2SEMath", "getInstance_0", []))
    jr.set_field(this, "openGLESImageExclusionUtil", jr.call_static("OpenGLESImageExclusionUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AnimationFactorySpriteScaleUtil", "instance", jr.new("AnimationFactorySpriteScaleUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AnimationFactorySpriteScaleUtil", "instance")
}

fn c1_m8__createimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height, l_scale_width, l_scale_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_scale_width = jr.as_i(l_scale_width)
    let l_scale_height = jr.as_i(l_scale_height)
        let l_sprite_factory = jr.call_static("SpriteFactory", "getInstance_0", [])
        let l_sprite = jr.cell(jr.JNull)
        let l_scaled_image = jr.cell(jr.JNull)
        case jr.truth(case jr.truth(jr.ne(l_scale_width, jr.JInt(0))) { True -> jr.ne(l_scale_height, jr.JInt(0)) False -> jr.JBool(False) }) {
            True -> {
            let l_scale_x = jr.cell(jr.as_f(jr.div(jr.to_f(l_scale_width), jr.to_f(l_width))))
            let l_scale_y = jr.cell(jr.as_f(jr.div(jr.to_f(l_scale_height), jr.to_f(l_height))))
            case jr.truth(case jr.truth(case jr.truth(jr.eq(jr.get(l_scale_x), jr.JFloat(1.0))) { True -> jr.eq(jr.get(l_scale_y), jr.JFloat(1.0)) False -> jr.JBool(False) }) { True -> jr.JBool(True) False -> case jr.truth(jr.eq(jr.get(l_scale_x), jr.JFloat(0.0))) { True -> jr.JBool(True) False -> jr.eq(jr.get(l_scale_y), jr.JFloat(0.0)) } }) {
                True -> {
                jr.set(l_scaled_image, jr.call(jr.get_field(this, "openGLUtil"), "addImage_1", [l_image]))
                jr.set(l_sprite, jr.call(l_sprite_factory, "createSprite_3", [jr.get(l_scaled_image), l_width, l_height]))
                Nil
            }
                False -> {
                case jr.truth(jr.call(jr.get_field(this, "openGLESImageExclusionUtil"), "isCustomScaling_1", [l_image])) {
                    True -> {
                    let l_width2 = jr.as_i(jr.call(jr.get_field(this, "j2seMath"), "round_1", [jr.sub(jr.to_f(l_scale_width), jr.JFloat(0.5))]))
                    let l_height2 = jr.as_i(jr.call(jr.get_field(this, "j2seMath"), "round_1", [jr.sub(jr.to_f(l_scale_height), jr.JFloat(0.5))]))
                    let l_multiples_of16_width = jr.as_i(jr.div(l_width2, jr.JInt(16)))
                    let l_by16_width = jr.as_i(jr.mul(l_multiples_of16_width, jr.JInt(16)))
                    jr.set(l_scale_x, jr.as_f(jr.div(jr.to_f(l_by16_width), jr.to_f(l_width))))
                    let l_multiples_of16_height = jr.as_i(jr.div(l_height2, jr.JInt(16)))
                    let l_by16_height = jr.as_i(jr.mul(l_multiples_of16_height, jr.JInt(16)))
                    jr.set(l_scale_y, jr.as_f(jr.div(jr.to_f(l_by16_height), jr.to_f(l_height))))
                    case jr.truth(jr.lt(l_scale_width, l_width)) {
                        True -> {
                        jr.set(l_scale_x, jr.as_f(jr.mul(jr.get(l_scale_x), jr.JFloat(2.35))))
                        Nil
                    }
                        False -> Nil
                    }
                    case jr.truth(jr.lt(l_scale_height, l_height)) {
                        True -> {
                        jr.set(l_scale_y, jr.as_f(jr.mul(jr.get(l_scale_y), jr.JFloat(2.35))))
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                }
                    False -> Nil
                }
                jr.set(l_scaled_image, jr.call(jr.get_field(this, "imageScaleUtil"), "createImage2_7", [jr.get_field(this, "imageCache"), l_image, jr.get(l_scale_x), jr.JFloat(1.0), jr.get(l_scale_y), jr.JFloat(1.0), jr.JBool(True)]))
                jr.set(l_sprite, jr.call(l_sprite_factory, "createSprite_3", [jr.get(l_scaled_image), jr.to_i(jr.mul(jr.to_f(l_width), jr.get(l_scale_x))), jr.to_i(jr.mul(jr.to_f(l_height), jr.get(l_scale_y)))]))
                Nil
            }
            }
            Nil
        }
            False -> {
            jr.set(l_scaled_image, jr.call(jr.get_field(this, "openGLUtil"), "addImage_1", [l_image]))
            jr.set(l_sprite, jr.call(l_sprite_factory, "createSprite_3", [jr.get(l_scaled_image), l_width, l_height]))
            Nil
        }
        }
    jr.get(l_sprite)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnimationFactorySpriteScaleUtil",
        "org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil",
        "Object",
        [],
        False,
        [#("imageCache", jr.JNull), #("imageScaleUtil", jr.JNull), #("openGLUtil", jr.JNull), #("j2seMath", jr.JNull), #("openGLESImageExclusionUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createImage_5", ["Image", "int", "int", "int", "int"], False, c1_m8__createimage), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

