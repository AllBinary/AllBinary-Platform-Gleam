// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonsPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "touchButtonFactory", jr.call_static("TouchButtonFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_list = jr.call(jr.get_field(this, "touchButtonFactory"), "getList_0", [])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.get_field(this, "foregroundBasicColor"), jr.get_field(this, "foregroundColor")])
        let l_touch_button = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.call(l_list, "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_touch_button, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.call(jr.get(l_touch_button), "paint_1", [l_graphics])
            Nil
        })
            Nil
        }
        {
            let l_index = jr.cell(jr.as_i(jr.call(l_list, "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_touch_button, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.call(jr.get(l_touch_button), "paintHint_1", [l_graphics])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "foregroundBasicColor", l_basic_color)
        jr.set_field(this, "foregroundColor", jr.as_i(jr.call(l_basic_color, "intValue_0", [])))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonsPaintable",
        "org.allbinary.input.motion.button.TouchButtonsPaintable",
        "Paintable",
        [],
        False,
        [#("foregroundBasicColor", jr.JNull), #("foregroundColor", jr.JInt(0)), #("basicSetColorUtil", jr.JNull), #("touchButtonFactory", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m6__paint), 
            jr.Method("jinit_1", ["BasicColor"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

