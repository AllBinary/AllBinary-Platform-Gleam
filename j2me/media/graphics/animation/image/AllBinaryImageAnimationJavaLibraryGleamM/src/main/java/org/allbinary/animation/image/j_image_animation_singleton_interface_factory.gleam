// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageAnimationSingletonInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        jr.super_init("SingletonAnimationInterfaceFactory", this, [jr.new("ImageAnimation", [jr.call(jr.call_static("AnimationFrameToImageUtil", "getInstance_0", []), "getInstanceWH_3", [l_width, l_height, l_animation_interface]), jr.call_static("AnimationBehavior", "getInstance_0", [])])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageAnimationSingletonInterfaceFactory",
        "org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory",
        "SingletonAnimationInterfaceFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_3", ["Animation", "int", "int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

