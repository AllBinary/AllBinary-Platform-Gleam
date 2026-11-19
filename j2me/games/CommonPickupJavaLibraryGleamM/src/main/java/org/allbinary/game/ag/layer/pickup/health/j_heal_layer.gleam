// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup.health
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HealLayer

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
    let assert [l_health_interface] = jargs
        case jr.truth(jr.call(l_health_interface, "isAlive_0", [])) {
            True -> {
            jr.call(l_health_interface, "healMax_0", [])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "HealLayer", "logUtil"), "putF_3", [jr.JStr("Heal attempt on dead: Does not currently occur"), this, jr.JStr("visit")])
            Nil
        }
        }
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("AllBinaryLayer", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.JInt(0), jr.JInt(0)]), jr.call_static("ViewPosition", "getInstanceD_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HealLayer",
        "org.allbinary.game.ag.layer.pickup.health.HealLayer",
        "AllBinaryLayer",
        ["HealthVisitorInterface"],
        False,
        [],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m2__paint), 
            jr.Method("visit_1", ["HealthInterface"], False, c1_m3__visit), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

