// Generated Code Do Not Modify
// package org.allbinary.view
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ViewPosition

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "allbinaryLayer", jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstanced(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("ViewPosition", [jr.JInt(0), jr.JInt(0), jr.JInt(0)])
}

fn c1_m4__getx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "allbinaryLayer"), "getXP_0", []))
}

fn c1_m5__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "allbinaryLayer"), "getYP_0", []))
}

fn c1_m6__getz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "allbinaryLayer"), "getZP_0", []))
}

fn c1_m7__getx2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(this, "getX_0", []), jr.call(jr.get_field(this, "allbinaryLayer"), "getWidth_0", [])))
}

fn c1_m8__gety2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(this, "getY_0", []), jr.call(jr.get_field(this, "allbinaryLayer"), "getHeight_0", [])))
}

fn c1_m9__getz2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.to_i(jr.add(jr.to_j(jr.call(this, "getZ_0", [])), jr.call(jr.get_field(this, "allbinaryLayer"), "getDepth_0", []))))
}

fn c1_m10__setallbinarylayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer] = jargs
        jr.set_field(this, "allbinaryLayer", l_allbinary_layer)
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.super_init("ViewPositionBase", this, [l_x, l_y, l_z])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ViewPosition",
        "org.allbinary.view.ViewPosition",
        "ViewPositionBase",
        [],
        False,
        [#("allbinaryLayer", jr.JNull)],
        [],
        [
            jr.Method("getInstanceD_0", [], True, c1_m1__getinstanced), 
            jr.Method("getX_0", [], False, c1_m4__getx), 
            jr.Method("getY_0", [], False, c1_m5__gety), 
            jr.Method("getZ_0", [], False, c1_m6__getz), 
            jr.Method("getX2_0", [], False, c1_m7__getx2), 
            jr.Method("getY2_0", [], False, c1_m8__gety2), 
            jr.Method("getZ2_0", [], False, c1_m9__getz2), 
            jr.Method("setAllbinaryLayer_1", ["Object"], False, c1_m10__setallbinarylayer), 
            jr.Method("jinit_3", ["int", "int", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

