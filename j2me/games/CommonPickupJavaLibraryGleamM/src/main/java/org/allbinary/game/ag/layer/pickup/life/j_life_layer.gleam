// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup.life
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LifeLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m3__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_life_interface] = jargs
        jr.call(l_life_interface, "add_1", [jr.to_s(jr.JInt(1))])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("AllBinaryLayer", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.JInt(0), jr.JInt(0)]), jr.call_static("ViewPosition", "getInstanceD_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LifeLayer",
        "org.allbinary.game.ag.layer.pickup.life.LifeLayer",
        "AllBinaryLayer",
        ["LifeVisitorInterface"],
        False,
        [],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m2__paint), 
            jr.Method("visit_1", ["Life"], False, c1_m3__visit), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

