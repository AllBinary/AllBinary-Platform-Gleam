// Generated Code Do Not Modify
// package org.allbinary.game.health
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HealthBarTwodAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_ax = jr.as_i(jr.call(jr.call(jr.get_inherited(this, "HealthBarTwodAnimation", "allbinaryLayer"), "getViewPosition_0", []), "getX_0", []))
        jr.call(jr.get_inherited(this, "HealthBarTwodAnimation", "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.get_inherited(this, "HealthBarTwodAnimation", "basicColor"), jr.get_inherited(this, "HealthBarTwodAnimation", "colorP")])
        jr.call(l_graphics, "fillRect_4", [l_ax, jr.sub(jr.call_inherited(this, "HealthBarTwodAnimation", "getY_0", []), jr.JInt(1)), jr.get_inherited(this, "HealthBarTwodAnimation", "x2"), jr.get_inherited(this, "HealthBarTwodAnimation", "thickness")])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_location] = jargs
    let l_location = jr.as_i(l_location)
        jr.super_init("HealthBarAnimation", this, [l_layer_interface, l_location])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HealthBarTwodAnimation",
        "org.allbinary.game.health.HealthBarTwodAnimation",
        "HealthBarAnimation",
        [],
        False,
        [],
        [],
        [
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m2__paintxy), 
            jr.Method("jinit_2", ["AllBinaryLayer", "int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

