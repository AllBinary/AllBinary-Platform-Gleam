// Generated Code Do Not Modify
// package org.allbinary.graphics.pipeline
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RandomRotationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "myRandomFactory", jr.call_static("MyRandomFactory", "getInstance_0", []))
    jr.set_field(this, "angleFactory", jr.call_static("AngleFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RandomRotationFactory", "instance", jr.new("RandomRotationFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("RandomRotationFactory", "instance")
}

fn c1_m5__getinstancelist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector, l_how_much] = jargs
    let l_how_much = jr.as_i(l_how_much)
        let l_graphics_pipe = jr.new("BasicGraphicsPipeline", [l_vector])
        jr.call(l_graphics_pipe, "createMatrix_0", [])
        jr.call(l_graphics_pipe, "rotateToAngle_1", [jr.call(jr.get_field(this, "angleFactory"), "getAt_1", [jr.call(this, "getNextRandomAngle_1", [l_how_much])])])
    jr.call(l_graphics_pipe, "getMatrix_0", [])
}

fn c1_m6__getnextrandomangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_how_much] = jargs
    let l_how_much = jr.as_i(l_how_much)
    jr.as_i(jr.call(jr.get_field(this, "myRandomFactory"), "getNextInt_1", [jr.mul(l_how_much, jr.JInt(10))]))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RandomRotationFactory",
        "org.allbinary.graphics.pipeline.RandomRotationFactory",
        "Object",
        [],
        False,
        [#("myRandomFactory", jr.JNull), #("angleFactory", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstanceList_2", ["BasicArrayList", "int"], False, c1_m5__getinstancelist), 
            jr.Method("getNextRandomAngle_1", ["int"], False, c1_m6__getnextrandomangle), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

