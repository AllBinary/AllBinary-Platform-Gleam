// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoCanvasProgressUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__showprogress(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_demo_canvas] = jargs
        jr.call_static("DemoCanvasProgressUtil", "showProgressOptionallyInTheBackground_2", [l_demo_canvas, jr.JBool(False)])
    jr.JNull
}

fn c1_m2__showprogressoptionallyinthebackground(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_demo_canvas, l_background] = jargs
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        jr.call(l_progress_canvas, "startBackground_1", [l_background])
        let l_paintable_array = jr.new_array("L", 1, [jr.JInt(2)])
        jr.aset(l_paintable_array, jr.JInt(0), l_progress_canvas)
        jr.aset(l_paintable_array, jr.JInt(1), jr.call(l_demo_canvas, "getDefaultPaintableInterface_0", []))
        jr.call(l_demo_canvas, "setDefaultPaintableInterface_1", [jr.new("PaintableComposite", [l_paintable_array])])
        jr.call(l_demo_canvas, "setPaintableInterface_1", [jr.call(l_demo_canvas, "getDefaultPaintableInterface_0", [])])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoCanvasProgressUtil",
        "org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("showProgress_1", ["DemoCanvas"], True, c1_m1__showprogress), 
            jr.Method("showProgressOptionallyInTheBackground_2", ["DemoCanvas", "boolean"], True, c1_m2__showprogressoptionallyinthebackground), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

