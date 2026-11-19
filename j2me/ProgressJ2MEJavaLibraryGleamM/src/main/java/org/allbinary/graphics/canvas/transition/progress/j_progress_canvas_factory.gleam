// Generated Code Do Not Modify
// package org.allbinary.graphics.canvas.transition.progress
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ProgressCanvasFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ProgressCanvasFactory", "PROGRESS_FORM_SCREEN", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("ProgressCanvasFactory", "PROGRESS_FORM_SCREEN"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("ProgressCanvasFactory", "PROGRESS_FORM_SCREEN", jr.new("ProgressCanvas", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("ProgressCanvasFactory", "PROGRESS_FORM_SCREEN")
}

fn c1_m3__getlazyinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("NullPaintable", "getInstance_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ProgressCanvasFactory",
        "org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory",
        "Object",
        [],
        False,
        [],
        [#("PROGRESS_FORM_SCREEN", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getLazyInstance_0", [], True, c1_m3__getlazyinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

