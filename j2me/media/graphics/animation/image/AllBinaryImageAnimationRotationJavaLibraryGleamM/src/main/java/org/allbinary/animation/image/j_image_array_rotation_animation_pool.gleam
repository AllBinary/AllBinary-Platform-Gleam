// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArrayRotationAnimationPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageArrayRotationAnimationPool", "IMAGE_ROTATION_ANIMATION_POOL", jr.new("ImageArrayRotationAnimationPool", [jr.new("ImageArrayRotationAnimationCacheableInterfaceFactory", [])]))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageArrayRotationAnimationPool", "IMAGE_ROTATION_ANIMATION_POOL")
}

fn c1_m4__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
        let l_cacheable_interface = jr.call_super("BasicArrayListResetablePool", this, "remove_1", [l_key])
        let l_all_binary_image_rotation_animation_info = l_key
        let l_image_array_rotation_animation_cacheable = l_cacheable_interface
        jr.call(l_image_array_rotation_animation_cacheable, "setImageArray_1", [jr.call(l_all_binary_image_rotation_animation_info, "getImageArray_0", [])])
    l_cacheable_interface
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interface_factory_interface] = jargs
        jr.super_init("BasicArrayListResetablePool", this, [l_cacheable_interface_factory_interface])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArrayRotationAnimationPool",
        "org.allbinary.animation.image.ImageArrayRotationAnimationPool",
        "BasicArrayListResetablePool",
        [],
        False,
        [],
        [#("IMAGE_ROTATION_ANIMATION_POOL", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("remove_1", ["Object"], False, c1_m4__remove), 
            jr.Method("jinit_1", ["CacheableInterfaceFactoryInterface"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

