// Generated Code Do Not Modify
// package org.allbinary.view
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ViewPositionBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ViewPositionBase", "NULL_VIEW_POSITION", jr.new("ViewPositionBase", [jr.JInt(0), jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_m3__getx2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "ViewPositionBase", "getX_0", []))
}

fn c1_m4__gety2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "ViewPositionBase", "getY_0", []))
}

fn c1_m5__getz2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "ViewPositionBase", "getZ_0", []))
}

fn c1_m6__setallbinarylayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.super_init("GPoint", this, [l_x, l_y, l_z])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ViewPositionBase",
        "org.allbinary.view.ViewPositionBase",
        "GPoint",
        [],
        False,
        [],
        [#("NULL_VIEW_POSITION", jr.JNull)],
        [
            jr.Method("getX2_0", [], False, c1_m3__getx2), 
            jr.Method("getY2_0", [], False, c1_m4__gety2), 
            jr.Method("getZ2_0", [], False, c1_m5__getz2), 
            jr.Method("setAllbinaryLayer_1", ["Object"], False, c1_m6__setallbinarylayer), 
            jr.Method("jinit_3", ["int", "int", "int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

