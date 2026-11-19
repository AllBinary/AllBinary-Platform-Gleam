// Generated Code Do Not Modify
// package org.allbinary.media.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageToRotationImageArrayUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageToRotationImageArrayUtil", "instance", jr.new("ImageToRotationImageArrayUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageToRotationImageArrayUtil", "instance")
}

fn c1_m4__generate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_angle_increment, l_total_angle] = jargs
    let l_angle_increment = jr.as_i(l_angle_increment)
    let l_total_angle = jr.as_i(l_total_angle)
        let l_image_rotation_util = jr.call_static("ImageRotationUtil", "getInstance_0", [])
        let l_total_frames = jr.as_i(jr.div(l_total_angle, l_angle_increment))
        let l_image_array = jr.new_array("L", 1, [l_total_frames])
        jr.aset(l_image_array, jr.JInt(0), l_image)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(1)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_total_frames) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_image_array, jr.get(l_index), jr.call(l_image_rotation_util, "createRotatedImage_2", [l_image, jr.mul(jr.get(l_index), l_angle_increment)]))
            Nil
        })
            Nil
        }
    l_image_array
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageToRotationImageArrayUtil",
        "org.allbinary.media.image.ImageToRotationImageArrayUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("generate_3", ["Image", "int", "int"], False, c1_m4__generate), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

