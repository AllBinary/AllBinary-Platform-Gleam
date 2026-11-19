// Generated Code Do Not Modify
// package org.allbinary.view
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StaticViewPosition

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "StaticViewPosition", "getRawX_0", []))
}

fn c1_m3__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "StaticViewPosition", "getRawY_0", []))
}

fn c1_m4__getz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "StaticViewPosition", "getRawZ_0", []))
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.super_init("ViewPosition", this, [l_x, l_y, l_z])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StaticViewPosition",
        "org.allbinary.view.StaticViewPosition",
        "ViewPosition",
        [],
        False,
        [],
        [],
        [
            jr.Method("getX_0", [], False, c1_m2__getx), 
            jr.Method("getY_0", [], False, c1_m3__gety), 
            jr.Method("getZ_0", [], False, c1_m4__getz), 
            jr.Method("jinit_3", ["int", "int", "int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

