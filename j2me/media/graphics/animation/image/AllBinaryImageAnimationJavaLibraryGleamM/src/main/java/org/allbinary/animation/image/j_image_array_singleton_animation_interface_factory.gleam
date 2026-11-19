// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArraySingletonAnimationInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array] = jargs
        jr.super_init("SingletonAnimationInterfaceFactory", this, [jr.new("ImageArrayAnimation", [l_image_array, jr.call_static("AnimationBehavior", "getInstance_0", [])])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArraySingletonAnimationInterfaceFactory",
        "org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory",
        "SingletonAnimationInterfaceFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["ImageArr"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

