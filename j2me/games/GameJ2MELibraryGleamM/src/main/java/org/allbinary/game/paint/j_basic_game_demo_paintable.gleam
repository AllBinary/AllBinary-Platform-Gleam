// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicGameDemoPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "currentStatePaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__setstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_state] = jargs
    let l_state = jr.as_i(l_state)
        case jr.truth(jr.eq(l_state, jr.JInt(0))) {
            True -> {
            jr.call(this, "setCurrentStatePaintable_1", [jr.call(this, "getMainDemoStatePaintable_0", [])])
            Nil
        }
            False -> case jr.truth(jr.eq(l_state, jr.JInt(1))) {
            True -> {
            jr.call(this, "setCurrentStatePaintable_1", [jr.get_field(this, "helpPaintableInterface")])
            Nil
        }
            False -> {
            jr.call(this, "setCurrentStatePaintable_1", [jr.get_field(this, "ownershipPaintable")])
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_m7__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.call(this, "getCurrentStatePaintable_0", []), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m8__gethelppaintableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "helpPaintableInterface")
}

fn c1_m9__setcurrentstatepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_state_paintable] = jargs
        jr.set_field(this, "currentStatePaintable", l_current_state_paintable)
    jr.JNull
}

fn c1_m10__getcurrentstatepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "currentStatePaintable")
}

fn c1_m11__getmaindemostatepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "mainDemoStatePaintable")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_main_demo_state_paintable, l_ownership_paintable, l_help_paintable_interface] = jargs
    jr.super_init("StatePaintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "mainDemoStatePaintable", l_main_demo_state_paintable)
        jr.call(this, "setCurrentStatePaintable_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
        jr.set_field(this, "ownershipPaintable", l_ownership_paintable)
        jr.set_field(this, "helpPaintableInterface", l_help_paintable_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicGameDemoPaintable",
        "org.allbinary.game.paint.BasicGameDemoPaintable",
        "StatePaintable",
        [],
        False,
        [#("mainDemoStatePaintable", jr.JNull), #("ownershipPaintable", jr.JNull), #("helpPaintableInterface", jr.JNull), #("currentStatePaintable", jr.JNull)],
        [],
        [
            jr.Method("setState_1", ["int"], False, c1_m6__setstate), 
            jr.Method("paint_1", ["Graphics"], False, c1_m7__paint), 
            jr.Method("getHelpPaintableInterface_0", [], False, c1_m8__gethelppaintableinterface), 
            jr.Method("setCurrentStatePaintable_1", ["Paintable"], False, c1_m9__setcurrentstatepaintable), 
            jr.Method("getCurrentStatePaintable_0", [], False, c1_m10__getcurrentstatepaintable), 
            jr.Method("getMainDemoStatePaintable_0", [], False, c1_m11__getmaindemostatepaintable), 
            jr.Method("jinit_3", ["Paintable", "Paintable", "Paintable"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

