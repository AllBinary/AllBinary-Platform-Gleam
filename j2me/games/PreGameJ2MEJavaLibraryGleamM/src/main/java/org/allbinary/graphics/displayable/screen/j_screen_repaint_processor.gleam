// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScreenRepaintProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("ScreenRepaintUtil", "repaint_1", [jr.get_field(this, "displayable")])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_displayable] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "displayable", l_displayable)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScreenRepaintProcessor",
        "org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor",
        "Processor",
        [],
        False,
        [#("displayable", jr.JNull)],
        [],
        [
            jr.Method("process_0", [], False, c1_m3__process), 
            jr.Method("jinit_1", ["Displayable"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

