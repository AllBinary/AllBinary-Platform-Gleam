// Generated Code Do Not Modify
// package org.allbinary.game.physics.acceleration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicAccelerationProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setreverse(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_reverse] = jargs
    let l_reverse = jr.as_i(l_reverse)
        jr.set_field(this, "reverse", jr.as_i(l_reverse))
    jr.JNull
}

fn c1_m5__getreverse(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "reverse"))
}

fn c1_m6__setforward(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_forward] = jargs
    let l_forward = jr.as_i(l_forward)
        jr.set_field(this, "forward", jr.as_i(l_forward))
    jr.JNull
}

fn c1_m7__getforward(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "forward"))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_forward, l_reverse] = jargs
    let l_forward = jr.as_i(l_forward)
    let l_reverse = jr.as_i(l_reverse)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setForward_1", [l_forward])
        jr.call(this, "setReverse_1", [l_reverse])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicAccelerationProperties",
        "org.allbinary.game.physics.acceleration.BasicAccelerationProperties",
        "Object",
        [],
        False,
        [#("forward", jr.JInt(0)), #("reverse", jr.JInt(0))],
        [],
        [
            jr.Method("setReverse_1", ["int"], False, c1_m4__setreverse), 
            jr.Method("getReverse_0", [], False, c1_m5__getreverse), 
            jr.Method("setForward_1", ["int"], False, c1_m6__setforward), 
            jr.Method("getForward_0", [], False, c1_m7__getforward), 
            jr.Method("jinit_2", ["int", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

