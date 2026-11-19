// Generated Code Do Not Modify
// package org.allbinary.game.health
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HealthBar

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__onhealthchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "animationInterface"), "onHealthChange_1", [jr.div(jr.mul(jr.call(jr.get_field(this, "healthInterface"), "getHealth_0", []), jr.call(jr.get_field(this, "allbinaryLayer"), "getWidth_0", [])), jr.call(jr.get_field(this, "healthInterface"), "getMaxHealth_0", []))])
    jr.JNull
}

fn c1_m6__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.JInt(0), jr.JInt(0)])
    jr.JNull
}

fn c1_m7__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintThreedXYZ_4", [l_graphics, jr.JInt(0), jr.JInt(0), jr.JInt(0)])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_health_interface, l_animation_interface, l_direction] = jargs
    let l_direction = jr.as_i(l_direction)
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "allbinaryLayer", l_layer_interface)
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.set_field(this, "healthInterface", l_health_interface)
        jr.call(jr.get_field(this, "healthInterface"), "addListener_1", [this])
        jr.call(this, "onHealthChange_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HealthBar",
        "org.allbinary.game.health.HealthBar",
        "Paintable",
        ["HealthListenerInterface"],
        False,
        [#("animationInterface", jr.JNull), #("healthInterface", jr.JNull), #("allbinaryLayer", jr.JNull)],
        [],
        [
            jr.Method("onHealthChange_0", [], False, c1_m5__onhealthchange), 
            jr.Method("paint_1", ["Graphics"], False, c1_m6__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m7__paintthreed), 
            jr.Method("jinit_4", ["AllBinaryLayer", "Health", "HealthBarAnimation", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

