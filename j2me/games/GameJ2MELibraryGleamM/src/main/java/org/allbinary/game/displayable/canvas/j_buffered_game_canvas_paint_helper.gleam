// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BufferedGameCanvasPaintHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameCanvas", jr.get_static("NullCanvas", "NULL_CANVAS"))
    jr.set_field(this, "offScreenImage", jr.new_array("L", 1, [jr.get_static("BufferedGameCanvasPaintHelper", "MAX_IMAGES")]))
    jr.set_field(this, "previousImage", jr.get_static("NullImage", "NULL_IMAGE"))
    jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.get_static("BufferedGameCanvasPaintHelper", "MAX_IMAGES")]))
    jr.set_field(this, "drawCircularIndexUtil", jr.call_static("CircularIndexUtil", "createInstanceAt_2", [jr.sub(jr.get_static("BufferedGameCanvasPaintHelper", "MAX_IMAGES"), jr.JInt(1)), jr.get_static("BufferedGameCanvasPaintHelper", "MAX_IMAGES")]))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_my_canvas = jr.get_field(this, "gameCanvas")
        jr.call(l_my_canvas, "draw_1", [jr.call(jr.aget(jr.get_field(this, "offScreenImage"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])), "getGraphics_0", [])])
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
        jr.call(jr.get_field(this, "drawCircularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m10__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.set_field(this, "previousImage", jr.aget(jr.get_field(this, "offScreenImage"), jr.call(jr.get_field(this, "drawCircularIndexUtil"), "getIndex_0", [])))
        jr.call(l_graphics, "drawImage_4", [jr.get_field(this, "previousImage"), jr.JInt(0), jr.JInt(0), jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_canvas] = jargs
    jr.super_init("ProcessPaintable", this, [])
    c1_jfields(this)
        jr.throw(jr.new("Exception", [jr.JStr("No Longer Used")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BufferedGameCanvasPaintHelper",
        "org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper",
        "ProcessPaintable",
        [],
        False,
        [#("gameCanvas", jr.JNull), #("offScreenImage", jr.JNull), #("previousImage", jr.JNull), #("circularIndexUtil", jr.JNull), #("drawCircularIndexUtil", jr.JNull), #("anchor", jr.JInt(0))],
        [#("MAX_IMAGES", jr.as_i(jr.JInt(4)))],
        [
            jr.Method("process_0", [], False, c1_m8__process), 
            jr.Method("paint_1", ["Graphics"], False, c1_m10__paint), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

