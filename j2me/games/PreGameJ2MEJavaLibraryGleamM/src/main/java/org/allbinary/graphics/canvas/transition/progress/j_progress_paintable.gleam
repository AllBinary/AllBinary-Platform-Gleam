// Generated Code Do Not Modify
// package org.allbinary.graphics.canvas.transition.progress
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ProgressPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "progressCanvas"), "paint2_1", [l_graphics])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_progress_canvas] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "progressCanvas", l_progress_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ProgressPaintable",
        "org.allbinary.graphics.canvas.transition.progress.ProgressPaintable",
        "Paintable",
        [],
        False,
        [#("progressCanvas", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m3__paint), 
            jr.Method("jinit_1", ["ProgressCanvas"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

