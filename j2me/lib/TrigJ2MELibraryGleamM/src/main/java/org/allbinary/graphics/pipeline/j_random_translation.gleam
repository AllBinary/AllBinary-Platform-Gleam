// Generated Code Do Not Modify
// package org.allbinary.graphics.pipeline
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RandomTranslation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector, l_how_much] = jargs
    let l_how_much = jr.as_i(l_how_much)
        let l_my_random_factory = jr.call_static("MyRandomFactory", "getInstance_0", [])
        let l_x = jr.as_i(jr.neg(jr.call(l_my_random_factory, "getNextInt_1", [l_how_much])))
        let l_y = jr.as_i(jr.call(l_my_random_factory, "getNextInt_1", [l_how_much]))
        let l_graphics_pipe = jr.new("BasicGraphicsPipeline", [l_vector])
        jr.call(l_graphics_pipe, "createMatrix_0", [])
        jr.call(l_graphics_pipe, "translate_2", [l_x, l_y])
    jr.call(l_graphics_pipe, "getMatrix_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RandomTranslation",
        "org.allbinary.graphics.pipeline.RandomTranslation",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_2", ["BasicArrayList", "int"], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

