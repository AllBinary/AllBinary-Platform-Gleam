// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TestInputExample

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__up(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m3__down(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__left(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.incr(fn() { jr.get_field(this, "testValue") }, fn(jv) { jr.set_field(this, "testValue", jv) }, 1, True)
    jr.JNull
}

fn c1_m5__right(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.incr(fn() { jr.get_field(this, "testValue") }, fn(jv) { jr.set_field(this, "testValue", jv) }, -1, True)
    jr.JNull
}

fn c1_m6__strafeleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__straferight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m9__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TestInputExample",
        "org.allbinary.game.input.TestInputExample",
        "Object",
        ["TestInputInterface"],
        False,
        [#("testValue", jr.JInt(0))],
        [],
        [
            jr.Method("up_0", [], False, c1_m2__up), 
            jr.Method("down_0", [], False, c1_m3__down), 
            jr.Method("left_0", [], False, c1_m4__left), 
            jr.Method("right_0", [], False, c1_m5__right), 
            jr.Method("strafeLeft_0", [], False, c1_m6__strafeleft), 
            jr.Method("strafeRight_0", [], False, c1_m7__straferight), 
            jr.Method("paint_1", ["Graphics"], False, c1_m8__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m9__paintthreed), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

