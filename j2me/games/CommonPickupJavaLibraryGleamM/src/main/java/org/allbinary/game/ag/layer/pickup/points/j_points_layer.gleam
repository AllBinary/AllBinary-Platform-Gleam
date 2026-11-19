// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup.points
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PointsLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m4__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scoreable_interface] = jargs
        jr.call(l_scoreable_interface, "addPoints_1", [jr.get_field(this, "points")])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    let l_points = jr.as_i(l_points)
        jr.super_init("AllBinaryLayer", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.JInt(0), jr.JInt(0)]), jr.call_static("ViewPosition", "getInstanceD_0", [])])
        c1_jfields(this)
        jr.set_field(this, "points", jr.as_i(l_points))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PointsLayer",
        "org.allbinary.game.ag.layer.pickup.points.PointsLayer",
        "AllBinaryLayer",
        [],
        False,
        [#("points", jr.JInt(0))],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m3__paint), 
            jr.Method("visit_1", ["ScoreableInterface"], False, c1_m4__visit), 
            jr.Method("jinit_1", ["int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

