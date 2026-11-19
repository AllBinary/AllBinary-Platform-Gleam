// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScreenRepaintUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__repaint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_displayable] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScreenRepaintUtil",
        "org.allbinary.graphics.displayable.screen.ScreenRepaintUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("repaint_1", ["Displayable"], True, c1_m1__repaint), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

