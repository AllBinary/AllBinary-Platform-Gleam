// Generated Code Do Not Modify
// package org.allbinary.animation.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LineAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.new("LineAnimation", [jr.get_field(this, "basicColor")])
}

fn c1_m4__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "basicColor", l_basic_color)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LineAnimationFactory",
        "org.allbinary.animation.vector.LineAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("basicColor", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m3__getinstance), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m4__setinitialscale), 
            jr.Method("jinit_1", ["BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

