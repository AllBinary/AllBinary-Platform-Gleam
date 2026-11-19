// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Scoreable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Scoreable", "ID", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(3)]))
    jr.JNull
}

fn c1_m4__addpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    let l_points = jr.as_i(l_points)
        jr.compound(fn() { jr.get_field(this, "points") }, fn(jv) { jr.add(jv, l_points) }, fn(jv) { jr.set_field(this, "points", jv) })
    jr.JNull
}

fn c1_m5__removepoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    let l_points = jr.as_i(l_points)
        jr.compound(fn() { jr.get_field(this, "points") }, fn(jv) { jr.sub(jv, l_points) }, fn(jv) { jr.set_field(this, "points", jv) })
    jr.JNull
}

fn c1_m6__setpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    let l_points = jr.as_i(l_points)
        jr.set_field(this, "points", jr.as_i(l_points))
    jr.JNull
}

fn c1_m7__getpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "points"))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    let l_points = jr.as_i(l_points)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "points", jr.as_i(l_points))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Scoreable",
        "org.allbinary.game.score.Scoreable",
        "Object",
        ["ScoreableInterface"],
        False,
        [#("points", jr.JInt(0))],
        [#("ID", jr.JNull)],
        [
            jr.Method("addPoints_1", ["int"], False, c1_m4__addpoints), 
            jr.Method("removePoints_1", ["int"], False, c1_m5__removepoints), 
            jr.Method("setPoints_1", ["int"], False, c1_m6__setpoints), 
            jr.Method("getPoints_0", [], False, c1_m7__getpoints), 
            jr.Method("jinit_1", ["int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

