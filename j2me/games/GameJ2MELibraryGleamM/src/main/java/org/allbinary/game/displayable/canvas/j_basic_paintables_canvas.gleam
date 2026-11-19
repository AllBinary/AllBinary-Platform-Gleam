// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicPaintablesCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "colorFillPaintable"), "paint_1", [l_graphics])
        jr.call(l_graphics, "setColor_1", [jr.get_inherited(this, "BasicPaintablesCanvas", "foregroundColor")])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "paintableArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "paintableArray"), jr.get(l_index)), "paint_1", [l_graphics])
            Nil
        })
            Nil
        }
        jr.call_super("GameCommandCanvas", this, "paint_1", [l_graphics])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener, l_name, l_all_binary_game_layer_manager, l_paintable_array] = jargs
        jr.super_init("GameCommandCanvas", this, [l_cmd_listener, l_name, jr.call(l_all_binary_game_layer_manager, "getBackgroundBasicColor_0", []), jr.call(l_all_binary_game_layer_manager, "getForegroundBasicColor_0", [])])
        c1_jfields(this)
        jr.set_field(this, "paintableArray", l_paintable_array)
        jr.set_field(this, "colorFillPaintable", jr.call(jr.call_static("ColorFillPaintableFactory", "getInstance_0", []), "getInstance_2", [jr.call(l_all_binary_game_layer_manager, "getBackgroundBasicColor_0", []), jr.JBool(False)]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicPaintablesCanvas",
        "org.allbinary.game.displayable.canvas.BasicPaintablesCanvas",
        "GameCommandCanvas",
        [],
        False,
        [#("paintableArray", jr.JNull), #("colorFillPaintable", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m4__paint), 
            jr.Method("jinit_4", ["CommandListener", "String", "AllBinaryGameLayerManager", "PaintableArr"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

