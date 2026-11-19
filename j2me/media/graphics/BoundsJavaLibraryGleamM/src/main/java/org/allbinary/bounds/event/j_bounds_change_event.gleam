// Generated Code Do Not Modify
// package org.allbinary.bounds.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BoundsChangeEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getrectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_inherited(this, "BoundsChangeEvent", "getSource_0", [])
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_rectangle])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BoundsChangeEvent",
        "org.allbinary.bounds.event.BoundsChangeEvent",
        "AllBinaryEventObject",
        [],
        False,
        [],
        [],
        [
            jr.Method("getRectangle_0", [], False, c1_m2__getrectangle), 
            jr.Method("jinit_1", ["Rectangle"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

