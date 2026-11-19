// Generated Code Do Not Modify
// package org.allbinary.media.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageJ2MEScaleUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageJ2MEScaleUtil", "instance", jr.new("ImageJ2MEScaleUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageJ2MEScaleUtil", "instance")
}

fn c1_m4__scalearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_images, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_scaled_images = jr.new_array("L", 1, [jr.alen(l_images)])
        {
            let l_index = jr.cell(jr.as_i(jr.alen(l_images)))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.aset(l_scaled_images, jr.get(l_index), jr.call(this, "scale_3", [jr.aget(l_images, jr.get(l_index)), l_width, l_height]))
            Nil
        })
            Nil
        }
    l_scaled_images
}

fn c1_m5__scale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_source_width = jr.as_i(jr.call(l_image, "getWidth_0", []))
        let l_source_height = jr.as_i(jr.call(l_image, "getHeight_0", []))
        let l_original_data = jr.new_array("I", 1, [jr.mul(jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []))])
        jr.call(l_image, "getRGB_7", [l_original_data, jr.JInt(0), jr.call(l_image, "getWidth_0", []), jr.JInt(0), jr.JInt(0), jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", [])])
        let l_scaled_data = jr.new_array("I", 1, [jr.mul(l_width, l_height)])
        let l_height_ratio_factor = jr.as_i(jr.div(jr.mul(jr.JInt(8), l_source_height), l_height))
        let l_width_ratio_factor = jr.as_i(jr.div(jr.mul(jr.JInt(8), l_source_width), l_width))
        let l_scaled_index = jr.cell(jr.as_i(jr.sub(jr.alen(l_scaled_data), jr.JInt(1))))
        let l_dx = jr.cell(jr.as_i(jr.JInt(0)))
        let l_dy = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(l_height))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_dy, jr.as_i(jr.shr(jr.mul(jr.get(l_index), l_height_ratio_factor), jr.JInt(3))))
            {
                let l_index2 = jr.cell(jr.as_i(l_width))
                jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
                jr.set(l_dx, jr.as_i(jr.shr(jr.mul(jr.get(l_index2), l_width_ratio_factor), jr.JInt(3))))
                jr.aset(l_scaled_data, jr.incr(fn() { jr.get(l_scaled_index) }, fn(jv) { jr.set(l_scaled_index, jv) }, -1, True), jr.as_i(jr.aget(l_original_data, jr.add(jr.mul(l_source_width, jr.get(l_dy)), jr.get(l_dx)))))
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
        let l_scaled_image = jr.call_static("Image", "createRGBImage_4", [l_scaled_data, l_width, l_height, jr.JBool(True)])
    l_scaled_image
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageJ2MEScaleUtil",
        "org.allbinary.media.image.ImageJ2MEScaleUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("scaleArray_3", ["ImageArr", "int", "int"], False, c1_m4__scalearray), 
            jr.Method("scale_3", ["Image", "int", "int"], False, c1_m5__scale), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

