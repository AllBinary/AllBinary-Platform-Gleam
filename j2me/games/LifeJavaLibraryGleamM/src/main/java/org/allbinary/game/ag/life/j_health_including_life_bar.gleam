// Generated Code Do Not Modify
// package org.allbinary.game.ag.life
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HealthIncludingLifeBar

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createhealthincludinglifebar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_life, l_health_interface, l_location, l_direction] = jargs
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    jr.new("HealthIncludingLifeBar", [l_layer_interface, l_life, l_health_interface, jr.new("HealthBarTwodAnimation", [l_layer_interface, l_location]), l_direction])
}

fn c1_m7__onhealthchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "animationInterface"), "onHealthChange_1", [jr.div(jr.mul(jr.add(jr.call(jr.get_field(this, "healthInterface"), "getHealth_0", []), jr.mul(jr.call(jr.get_field(this, "healthInterface"), "getMaxHealth_0", []), jr.to_i(jr.call(jr.get_field(this, "life"), "get_0", [])))), jr.call(jr.get_field(this, "allbinaryLayer"), "getWidth_0", [])), jr.add(jr.call(jr.get_field(this, "healthInterface"), "getMaxHealth_0", []), jr.mul(jr.call(jr.get_field(this, "healthInterface"), "getMaxHealth_0", []), jr.to_i(jr.call(jr.get_field(this, "life"), "getStartLives_0", [])))))])
    jr.JNull
}

fn c1_m8__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.JInt(0), jr.JInt(0)])
    jr.JNull
}

fn c1_m9__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintThreedXYZ_4", [l_graphics, jr.JInt(0), jr.JInt(0), jr.JInt(0)])
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_life, l_health_interface, l_animation_interface, l_direction] = jargs
    let l_direction = jr.as_i(l_direction)
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "allbinaryLayer", l_layer_interface)
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.set_field(this, "life", l_life)
        jr.set_field(this, "healthInterface", l_health_interface)
        jr.call(jr.get_field(this, "healthInterface"), "addListener_1", [this])
        jr.call(this, "onHealthChange_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HealthIncludingLifeBar",
        "org.allbinary.game.ag.life.HealthIncludingLifeBar",
        "Paintable",
        ["HealthListenerInterface"],
        False,
        [#("animationInterface", jr.JNull), #("life", jr.JNull), #("healthInterface", jr.JNull), #("allbinaryLayer", jr.JNull)],
        [],
        [
            jr.Method("createHealthIncludingLifeBar_5", ["AllBinaryLayer", "Life", "Health", "int", "int"], True, c1_m1__createhealthincludinglifebar), 
            jr.Method("onHealthChange_0", [], False, c1_m7__onhealthchange), 
            jr.Method("paint_1", ["Graphics"], False, c1_m8__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m9__paintthreed), 
            jr.Method("jinit_5", ["AllBinaryLayer", "Life", "Health", "HealthBarAnimation", "int"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

