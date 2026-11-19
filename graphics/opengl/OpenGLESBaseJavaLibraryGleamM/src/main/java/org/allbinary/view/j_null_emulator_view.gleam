// Generated Code Do Not Modify
// package org.allbinary.view
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullEmulatorView

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullEmulatorView", "NULL_EMULATOR_VIEW", jr.new("NullEmulatorView", []))
    jr.JNull
}

fn c1_m2__setmidlet(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_midlet] = jargs
    jr.JNull
}

fn c1_m3__onemulatorinitcomplete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_midlet_activity] = jargs
    jr.JNull
}

fn c1_m4__onsetdisplayable(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        "NullEmulatorView",
        "org.allbinary.view.NullEmulatorView",
        "Object",
        ["EmulatorViewInterface"],
        False,
        [],
        [#("NULL_EMULATOR_VIEW", jr.JNull)],
        [
            jr.Method("setMidlet_1", ["MIDlet"], False, c1_m2__setmidlet), 
            jr.Method("onEmulatorInitComplete_1", ["Object"], False, c1_m3__onemulatorinitcomplete), 
            jr.Method("onSetDisplayable_1", ["Displayable"], False, c1_m4__onsetdisplayable), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

