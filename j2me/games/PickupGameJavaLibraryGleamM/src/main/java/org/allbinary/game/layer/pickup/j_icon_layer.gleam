// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IconLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("IconLayer", "NULL_ICON_LAYER", jr.new("IconLayer", [jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]), jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_m4__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.get_inherited(this, "IconLayer", "x"), jr.get_inherited(this, "IconLayer", "y")])
    jr.JNull
}

fn c1_m5__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintThreedXYZ_4", [l_graphics, jr.get_inherited(this, "IconLayer", "x"), jr.get_inherited(this, "IconLayer", "y"), jr.get_inherited(this, "IconLayer", "z")])
    jr.JNull
}

fn c1_m6__getanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationInterface")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        jr.super_init("AllBinaryLayer", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), l_width, l_height]), jr.call_static("ViewPosition", "getInstanceD_0", [])])
        c1_jfields(this)
        jr.set_field(this, "animationInterface", l_animation_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IconLayer",
        "org.allbinary.game.layer.pickup.IconLayer",
        "AllBinaryLayer",
        [],
        False,
        [#("animationInterface", jr.JNull)],
        [#("NULL_ICON_LAYER", jr.JNull)],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m4__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m5__paintthreed), 
            jr.Method("getAnimationInterface_0", [], False, c1_m6__getanimationinterface), 
            jr.Method("jinit_3", ["Animation", "int", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

