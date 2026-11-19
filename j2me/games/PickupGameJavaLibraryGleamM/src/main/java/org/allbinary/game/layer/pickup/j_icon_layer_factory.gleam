// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IconLayerFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.new("IconLayer", [l_animation_interface, l_width, l_height])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IconLayerFactory",
        "org.allbinary.game.layer.pickup.IconLayerFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_3", ["Animation", "int", "int"], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

