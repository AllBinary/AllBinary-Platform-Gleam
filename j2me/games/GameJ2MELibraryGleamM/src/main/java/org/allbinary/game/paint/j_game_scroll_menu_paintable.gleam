// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameScrollMenuPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__setstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_state] = jargs
    let l_state = jr.as_i(l_state)
        jr.call_inherited(this, "GameScrollMenuPaintable", "setCurrentStatePaintable_1", [jr.call_inherited(this, "GameScrollMenuPaintable", "getMainDemoStatePaintable_0", [])])
    jr.JNull
}

fn c1_m3__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
    jr.JNull
}

fn c1_m4__setcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        let l_main_game_demo_state_paintable = jr.call_inherited(this, "GameScrollMenuPaintable", "getMainDemoStatePaintable_0", [])
        let l_form_paintable = jr.call(l_main_game_demo_state_paintable, "getMenuPaintableInterface_0", [])
        let l_scroll_selection_form = jr.call(l_form_paintable, "getForm_0", [])
        jr.call(jr.call(l_main_game_demo_state_paintable, "getOwnershipPaintableInterface_0", []), "setBasicColorP_1", [l_basic_color])
        jr.call(l_scroll_selection_form, "setButtonBasicColor_1", [l_basic_color])
        let l_item = jr.cell(jr.JNull)
        let l_string_component = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(l_scroll_selection_form, "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_item, jr.call(l_scroll_selection_form, "get_1", [jr.get(l_index)]))
            jr.set(l_string_component, jr.call(jr.get(l_item), "getLabelStringComponent_0", []))
            case jr.truth(jr.ne(jr.get(l_string_component), jr.JNull)) {
                True -> {
                jr.call(jr.get(l_string_component), "setForegroundBasicColor_1", [l_basic_color])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_main_demo_state_paintable, l_ownership_paintable, l_help_paintable_interface, l_basic_color] = jargs
        jr.super_init("BasicGameDemoPaintable", this, [l_main_demo_state_paintable, l_ownership_paintable, l_help_paintable_interface])
        c1_jfields(this)
        jr.call(this, "setColor_1", [l_basic_color])
        jr.call(jr.call_static("ColorChangeEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameScrollMenuPaintable",
        "org.allbinary.game.paint.GameScrollMenuPaintable",
        "BasicGameDemoPaintable",
        ["ColorChangeListener"],
        False,
        [],
        [],
        [
            jr.Method("setState_1", ["int"], False, c1_m2__setstate), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m3__onevent), 
            jr.Method("setColor_1", ["BasicColor"], False, c1_m4__setcolor), 
            jr.Method("jinit_4", ["Paintable", "Paintable", "Paintable", "BasicColor"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

