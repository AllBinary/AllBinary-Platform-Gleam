// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Line

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__getgradient(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_d(jr.div(jr.call(this, "getDeltaY_0", []), jr.call(this, "getDeltaX_0", [])))
}

fn c1_m7__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "deltaX", jr.as_d(jr.sub(jr.to_d(jr.call(jr.call(this, "getP1_0", []), "getX_0", [])), jr.to_d(jr.call(jr.call(this, "getP2_0", []), "getX_0", [])))))
        jr.set_field(this, "deltaY", jr.as_d(jr.sub(jr.to_d(jr.call(jr.call(this, "getP1_0", []), "getY_0", [])), jr.to_d(jr.call(jr.call(this, "getP2_0", []), "getY_0", [])))))
    jr.JNull
}

fn c1_m8__getdeltax(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_d(jr.get_field(this, "deltaX"))
}

fn c1_m9__getdeltay(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_d(jr.get_field(this, "deltaY"))
}

fn c1_m10__getp1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "p1")
}

fn c1_m11__getp2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "p2")
}

fn c1_m12__setp1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_p1] = jargs
        jr.set_field(this, "p1", l_p1)
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m13__setp2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_p2] = jargs
        jr.set_field(this, "p2", l_p2)
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_p1, l_p2] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "p1", jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"))
        jr.set_field(this, "p2", jr.get_field(this, "p1"))
        jr.call(this, "setP1_1", [l_p1])
        jr.call(this, "setP2_1", [l_p2])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Line",
        "org.allbinary.graphics.Line",
        "Object",
        [],
        False,
        [#("p1", jr.JNull), #("p2", jr.JNull), #("deltaX", jr.JDouble(0.0)), #("deltaY", jr.JDouble(0.0))],
        [],
        [
            jr.Method("getGradient_0", [], False, c1_m6__getgradient), 
            jr.Method("update_0", [], False, c1_m7__update), 
            jr.Method("getDeltaX_0", [], False, c1_m8__getdeltax), 
            jr.Method("getDeltaY_0", [], False, c1_m9__getdeltay), 
            jr.Method("getP1_0", [], False, c1_m10__getp1), 
            jr.Method("getP2_0", [], False, c1_m11__getp2), 
            jr.Method("setP1_1", ["GPoint"], False, c1_m12__setp1), 
            jr.Method("setP2_1", ["GPoint"], False, c1_m13__setp2), 
            jr.Method("jinit_2", ["GPoint", "GPoint"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

