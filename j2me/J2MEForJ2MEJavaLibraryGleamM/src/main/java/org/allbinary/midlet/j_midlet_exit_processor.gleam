// Generated Code Do Not Modify
// package org.allbinary.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MidletExitProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_midlet] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "midlet", l_midlet)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MidletExitProcessor",
        "org.allbinary.midlet.MidletExitProcessor",
        "Processor",
        [],
        False,
        [#("midlet", jr.JNull)],
        [],
        [
            jr.Method("process_0", [], False, c1_m3__process), 
            jr.Method("jinit_1", ["MIDlet"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

