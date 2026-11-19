// Generated Code Do Not Modify
// package org.allbinary.android.input.motion.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnalogControllerConfigurationEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnalogControllerConfigurationEvent",
        "org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent",
        "AllBinaryEventObject",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["Object"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

