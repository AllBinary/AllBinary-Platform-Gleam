// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IndexedAnimationToImageArrayUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_sequential_animation_interface] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_size = jr.as_i(jr.call(l_sequential_animation_interface, "getAnimationSize_0", []))
        let l_image_array = jr.new_array("L", 1, [l_size])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_sequential_animation_interface, "setFrame_1", [jr.get(l_index)])
            jr.aset(l_image_array, jr.get(l_index), jr.call(jr.call_static("AnimationFrameToImageUtil", "getInstance_0", []), "getInstanceWH_3", [l_width, l_height, l_sequential_animation_interface]))
            Nil
        })
            Nil
        }
    l_image_array
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IndexedAnimationToImageArrayUtil",
        "org.allbinary.image.IndexedAnimationToImageArrayUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_3", ["int", "int", "IndexedAnimation"], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

