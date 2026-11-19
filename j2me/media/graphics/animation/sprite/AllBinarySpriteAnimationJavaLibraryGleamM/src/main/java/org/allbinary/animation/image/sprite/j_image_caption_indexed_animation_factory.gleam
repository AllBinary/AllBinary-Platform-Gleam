// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageCaptionIndexedAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animationFactoryImageScaleUtil", jr.call_static("AnimationFactoryImageScaleUtil", "getInstance_0", []))
    jr.set_field(this, "animationFactorySpriteScaleUtil", jr.call_static("AnimationFactorySpriteScaleUtil", "getInstance_0", []))
    jr.set_field(this, "scaleProperties", jr.get_static("ScaleProperties", "instance"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m16__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
        let l_scaled_image = jr.call(jr.get_field(this, "animationFactoryImageScaleUtil"), "createImage_5", [jr.get_field(this, "captionImage"), jr.call(jr.get_field(this, "captionImage"), "getWidth_0", []), jr.call(jr.get_field(this, "captionImage"), "getHeight_0", []), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleHeight")])
        let l_animation_interface = jr.new("ImageAnimation", [l_scaled_image, jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
        let l_sprite = jr.call(jr.get_field(this, "animationFactorySpriteScaleUtil"), "createImage_5", [jr.get_field(this, "spriteMovieImage"), jr.get_field(this, "frameWidth"), jr.get_field(this, "frameHeight"), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleHeight")])
        let l_movie_indexed_animation_interface = jr.new("SpriteIndexedAnimation", [l_sprite, jr.get_field(this, "spriteMovieImage"), jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ZERO_ARRAY"), jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
        let l_player = jr.call(jr.get_field(this, "soundInterface"), "getPlayerP_0", [])
        case jr.truth(jr.eq(l_player, jr.JNull)) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Sound Was not Initialized")]))
            Nil
        }
            False -> Nil
        }
    jr.new("CaptionIndexedAnimation", [l_animation_interface, l_movie_indexed_animation_interface, l_player, jr.get_field(this, "captionDx"), jr.get_field(this, "captionDy"), jr.get_field(this, "dx"), jr.get_field(this, "dy"), jr.get_field(this, "time"), jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
}

fn c1_m17__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
        jr.set_field(this, "scaleProperties", l_scale_properties)
    jr.JNull
}

fn c1_jinit15(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_caption_image, l_sprite_movie_image, l_sound_interface, l_frame_width, l_frame_height, l_caption_dx, l_caption_dy, l_dx, l_dy, l_time, l_animation_behavior_factory] = jargs
    let l_frame_width = jr.as_i(l_frame_width)
    let l_frame_height = jr.as_i(l_frame_height)
    let l_caption_dx = jr.as_i(l_caption_dx)
    let l_caption_dy = jr.as_i(l_caption_dy)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    let l_time = jr.as_i(l_time)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        case jr.truth(jr.eq(l_animation_behavior_factory, jr.call_static("AnimationBehaviorFactory", "getInstance_0", []))) {
            True -> {
            jr.call_static("ForcedLogUtil", "log_2", [jr.JStr("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), this])
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "captionImage", l_caption_image)
        jr.set_field(this, "spriteMovieImage", l_sprite_movie_image)
        jr.set_field(this, "frameWidth", jr.as_i(l_frame_width))
        jr.set_field(this, "frameHeight", jr.as_i(l_frame_height))
        jr.set_field(this, "captionDx", jr.as_i(l_caption_dx))
        jr.set_field(this, "captionDy", jr.as_i(l_caption_dy))
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
        jr.set_field(this, "time", jr.as_i(l_time))
        jr.set_field(this, "soundInterface", l_sound_interface)
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageCaptionIndexedAnimationFactory",
        "org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("animationFactoryImageScaleUtil", jr.JNull), #("animationFactorySpriteScaleUtil", jr.JNull), #("captionImage", jr.JNull), #("spriteMovieImage", jr.JNull), #("frameWidth", jr.JInt(0)), #("frameHeight", jr.JInt(0)), #("captionDx", jr.JInt(0)), #("captionDy", jr.JInt(0)), #("dx", jr.JInt(0)), #("dy", jr.JInt(0)), #("time", jr.JInt(0)), #("soundInterface", jr.JNull), #("scaleProperties", jr.JNull), #("animationBehaviorFactory", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m16__getinstance), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m17__setinitialscale), 
            jr.Method("jinit_11", ["Image", "Image", "Sound", "int", "int", "int", "int", "int", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit15)],
        c1_jfields,
        c1_jclinit,
    )
}

