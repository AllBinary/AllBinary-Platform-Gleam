// Generated Code Do Not Modify
// package org.allbinary.graphics.canvas.transition.progress
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ProgressEndListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ProgressEndListener", "instance", jr.new("ProgressEndListener", []))
    jr.JNull
}

fn c1_m2__onendevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ProgressEndListener",
        "org.allbinary.graphics.canvas.transition.progress.ProgressEndListener",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("onEndEvent_0", [], False, c1_m2__onendevent), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

