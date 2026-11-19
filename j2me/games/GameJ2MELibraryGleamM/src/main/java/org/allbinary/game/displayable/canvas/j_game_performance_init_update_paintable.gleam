// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GamePerformanceInitUpdatePaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "halfHeight", jr.as_i(jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "getLastHalfHeight_0", [])))
    jr.set_field(this, "yArray", jr.array_of("I", [jr.add(jr.get_field(this, "halfHeight"), jr.JInt(30)), jr.add(jr.get_field(this, "halfHeight"), jr.JInt(30)), jr.add(jr.add(jr.get_field(this, "halfHeight"), jr.JInt(30)), jr.JInt(15)), jr.add(jr.add(jr.get_field(this, "halfHeight"), jr.JInt(30)), jr.JInt(15)), jr.add(jr.add(jr.get_field(this, "halfHeight"), jr.JInt(30)), jr.JInt(30)), jr.add(jr.add(jr.get_field(this, "halfHeight"), jr.JInt(30)), jr.JInt(30)), jr.add(jr.add(jr.get_field(this, "halfHeight"), jr.JInt(30)), jr.JInt(45)), jr.add(jr.add(jr.get_field(this, "halfHeight"), jr.JInt(30)), jr.JInt(45))]))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "baseRefreshHelperCharArray", jr.new_array("C", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "RED", jr.as_i(jr.call(jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "RED"), "intValue_0", [])))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "defaultStringWidth", jr.as_i(jr.call_static("MyFontProcessor", "defaultStringWidth_2", [l_font, jr.JInt(2)])))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m7__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "baseRefreshHelperCharArray", jr.call(jr.call_static("GameStatisticsFactory", "getInstance_0", []), "to2DCharArray_0", []))
    jr.JNull
}

fn c1_m10__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(l_graphics, "setColor_1", [jr.get_field(this, "RED")])
        let l_char_array = jr.cell(jr.JNull)
        let l_char_array2 = jr.cell(jr.JNull)
        let l_size2 = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size3 = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size = jr.as_i(jr.sub(jr.alen(jr.get_field(this, "baseRefreshHelperCharArray")), jr.JInt(2)))
        {
            let l_index = jr.cell(jr.as_i(l_size))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.compound(fn() { jr.get(l_index) }, fn(jv) { jr.sub(jv, jr.JInt(2)) }, fn(jv) { jr.set(l_index, jv) }) Nil }, fn() {
            jr.set(l_char_array, jr.aget(jr.get_field(this, "baseRefreshHelperCharArray"), jr.get(l_index)))
            jr.set(l_char_array2, jr.aget(jr.get_field(this, "baseRefreshHelperCharArray"), jr.add(jr.get(l_index), jr.JInt(1))))
            jr.set(l_size2, jr.as_i(jr.alen(jr.get(l_char_array))))
            jr.set(l_size3, jr.as_i(jr.alen(jr.get(l_char_array2))))
            jr.call(l_graphics, "drawChars_6", [jr.get(l_char_array), jr.JInt(0), jr.get(l_size2), jr.JInt(0), jr.aget(jr.get_field(this, "yArray"), jr.get(l_index)), jr.JInt(0)])
            jr.call(l_graphics, "drawChars_6", [jr.get(l_char_array2), jr.JInt(0), jr.get(l_size3), jr.mul(jr.get(l_size2), jr.get_field(this, "defaultStringWidth")), jr.aget(jr.get_field(this, "yArray"), jr.add(jr.get(l_index), jr.JInt(1))), jr.JInt(0)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("InitUpdatePaintable", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GamePerformanceInitUpdatePaintable",
        "org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable",
        "InitUpdatePaintable",
        ["UpdateMyFontInterface"],
        False,
        [#("halfHeight", jr.JInt(0)), #("yArray", jr.JNull), #("myFontProcessor", jr.JNull), #("baseRefreshHelperCharArray", jr.JNull), #("defaultStringWidth", jr.JInt(0)), #("RED", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m6__updatemeasurement), 
            jr.Method("init_0", [], False, c1_m7__init), 
            jr.Method("update_0", [], False, c1_m8__update), 
            jr.Method("paint_1", ["Graphics"], False, c1_m10__paint), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

