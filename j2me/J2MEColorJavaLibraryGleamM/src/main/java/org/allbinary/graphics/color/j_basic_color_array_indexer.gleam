// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicColorArrayIndexer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__next(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m5__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.aget(jr.get_field(this, "basicColorArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
}

fn c1_m6__getbasiccolorarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColorArray")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color_array] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "basicColorArray", l_basic_color_array)
        jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.alen(jr.get_field(this, "basicColorArray"))]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicColorArrayIndexer",
        "org.allbinary.graphics.color.BasicColorArrayIndexer",
        "Object",
        [],
        False,
        [#("basicColorArray", jr.JNull), #("circularIndexUtil", jr.JNull)],
        [],
        [
            jr.Method("next_0", [], False, c1_m4__next), 
            jr.Method("get_0", [], False, c1_m5__get), 
            jr.Method("getBasicColorArray_0", [], False, c1_m6__getbasiccolorarray), 
            jr.Method("jinit_1", ["BasicColorArr"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

