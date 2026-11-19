// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup.points
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PointsLayerFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("PointsLayer", [jr.get_field(this, "points")])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    let l_points = jr.as_i(l_points)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "points", jr.as_i(l_points))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PointsLayerFactory",
        "org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory",
        "Object",
        ["AllBinaryLayerFactoryInterface"],
        False,
        [#("points", jr.JInt(0))],
        [],
        [
            jr.Method("getInstance_0", [], False, c1_m3__getinstance), 
            jr.Method("jinit_1", ["int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

