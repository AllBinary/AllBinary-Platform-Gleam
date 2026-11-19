// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.life
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LivesHudWidget

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call_super("BasicHud", this, "updateMeasurement_1", [l_graphics])
        let l_max_lives = jr.as_i(jr.to_i(jr.call(jr.call(this, "getLifeInterface_0", []), "getMaxlives_0", [])))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_max_lives) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "xArray"), jr.get(l_index), jr.as_i(jr.add(jr.call_inherited(this, "LivesHudWidget", "getX_0", []), jr.mul(jr.get(l_index), jr.JInt(16)))))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m6__ondisplaychangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display_change_event] = jargs
        jr.call_super("BasicHud", this, "onDisplayChangeEvent_1", [l_display_change_event])
        jr.set_inherited(this, "LivesHudWidget", "myFontProcessor", jr.get_inherited(this, "LivesHudWidget", "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m7__setx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x] = jargs
    let l_x = jr.as_i(l_x)
        jr.call_super("BasicHud", this, "setX_1", [l_x])
        jr.set_inherited(this, "LivesHudWidget", "myFontProcessor", jr.get_inherited(this, "LivesHudWidget", "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m8__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_inherited(this, "LivesHudWidget", "myFontProcessor"), "process_1", [l_graphics])
        {
            let l_index = jr.cell(jr.as_i(jr.to_i(jr.call(jr.call(this, "getLifeInterface_0", []), "get_0", []))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.aget(jr.get_field(this, "xArray"), jr.get(l_index)), jr.call_inherited(this, "LivesHudWidget", "getY_0", [])])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m10__getlifeinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "lifeInterface")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_life_interface, l_location, l_direction] = jargs
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
        jr.super_init("BasicHud", this, [l_location, l_direction, jr.JInt(2), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")])
        c1_jfields(this)
        jr.set_field(this, "lifeInterface", l_life_interface)
        let l_size = jr.as_i(jr.to_i(jr.call(jr.call(this, "getLifeInterface_0", []), "getMaxlives_0", [])))
        jr.set_field(this, "xArray", jr.new_array("I", 1, [l_size]))
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.set_inherited(this, "LivesHudWidget", "updateMaxWidth", jr.mul(jr.to_i(jr.call(jr.get_field(this, "lifeInterface"), "getMaxlives_0", [])), jr.JInt(16)))
        jr.set_inherited(this, "LivesHudWidget", "updateMaxHeight", jr.JInt(16))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LivesHudWidget",
        "org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget",
        "BasicHud",
        ["PaintableInterface"],
        False,
        [#("lifeInterface", jr.JNull), #("xArray", jr.JNull), #("animationInterface", jr.JNull)],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m5__updatemeasurement), 
            jr.Method("onDisplayChangeEvent_1", ["DisplayChangeEvent"], False, c1_m6__ondisplaychangeevent), 
            jr.Method("setX_1", ["int"], False, c1_m7__setx), 
            jr.Method("paint_1", ["Graphics"], False, c1_m8__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m9__paintthreed), 
            jr.Method("getLifeInterface_0", [], False, c1_m10__getlifeinterface), 
            jr.Method("jinit_4", ["Animation", "Life", "int", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

