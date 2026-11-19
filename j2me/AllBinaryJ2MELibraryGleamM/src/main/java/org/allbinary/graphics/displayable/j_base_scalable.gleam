// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseScalable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getratio(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ratio] = jargs
    let l_ratio = jr.as_f(l_ratio)
    jr.as_f(jr.JFloat(1.0))
}

fn c1_m2__getleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x_offset] = jargs
    let l_x_offset = jr.as_i(l_x_offset)
    jr.as_i(jr.JInt(-1))
}

fn c1_m3__gettop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_y_offset] = jargs
    let l_y_offset = jr.as_i(l_y_offset)
    jr.as_i(jr.JInt(-1))
}

fn c1_m4__scale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ratio] = jargs
    let l_ratio = jr.as_f(l_ratio)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseScalable",
        "org.allbinary.graphics.displayable.BaseScalable",
        "Object",
        ["ScalableListener"],
        False,
        [],
        [],
        [
            jr.Method("getRatio_1", ["float"], False, c1_m1__getratio), 
            jr.Method("getLeft_1", ["int"], False, c1_m2__getleft), 
            jr.Method("getTop_1", ["int"], False, c1_m3__gettop), 
            jr.Method("scale_1", ["float"], False, c1_m4__scale), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

