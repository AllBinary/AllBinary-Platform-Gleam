// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DistanceUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "mathUtil", jr.call_static("MathUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DistanceUtil", "instance", jr.new("DistanceUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DistanceUtil", "instance")
}

fn c1_m4__getdistance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x1, l_y1, l_x2, l_y2] = jargs
    let l_x1 = jr.as_i(l_x1)
    let l_y1 = jr.as_i(l_y1)
    let l_x2 = jr.as_i(l_x2)
    let l_y2 = jr.as_i(l_y2)
        let l_dx = jr.as_i(jr.sub(l_x1, l_x2))
        let l_dy = jr.as_i(jr.sub(l_y1, l_y2))
    jr.as_i(jr.call(jr.get_field(this, "mathUtil"), "sqrt_1", [jr.add(jr.mul(l_dx, l_dx), jr.mul(l_dy, l_dy))]))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DistanceUtil",
        "org.allbinary.math.DistanceUtil",
        "Object",
        [],
        False,
        [#("mathUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getDistance_4", ["int", "int", "int", "int"], False, c1_m4__getdistance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

