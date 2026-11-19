// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RunnableCanvasRefreshHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "runnableCanvas"), "repaint_0", [])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable_canvas] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "runnableCanvas", l_runnable_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RunnableCanvasRefreshHelper",
        "org.allbinary.canvas.RunnableCanvasRefreshHelper",
        "Processor",
        [],
        False,
        [#("runnableCanvas", jr.JNull)],
        [],
        [
            jr.Method("process_0", [], False, c1_m3__process), 
            jr.Method("jinit_1", ["MyCanvas"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

