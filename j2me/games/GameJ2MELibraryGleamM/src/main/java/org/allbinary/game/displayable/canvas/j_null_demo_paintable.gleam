// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullDemoPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullDemoPaintable", "NULL_DEMO_PAINTABLE", jr.new("NullDemoPaintable", []))
    jr.JNull
}

fn c1_m2__showgamepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullDemoPaintable",
        "org.allbinary.game.displayable.canvas.NullDemoPaintable",
        "Object",
        ["DemoPaintableInterface"],
        False,
        [],
        [#("NULL_DEMO_PAINTABLE", jr.JNull)],
        [
            jr.Method("showGamePaintable_0", [], False, c1_m2__showgamepaintable), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

