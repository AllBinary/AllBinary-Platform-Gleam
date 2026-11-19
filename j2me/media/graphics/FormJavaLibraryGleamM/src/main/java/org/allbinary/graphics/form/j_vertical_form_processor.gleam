// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VerticalFormProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "scrollCurrentSelectionForm"), "processVerticalForm_0", [])
        jr.set_field(jr.get_field(this, "scrollCurrentSelectionForm"), "processor", jr.call_static("Processor", "getInstance_0", []))
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scroll_current_selection_form] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "scrollCurrentSelectionForm", l_scroll_current_selection_form)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VerticalFormProcessor",
        "org.allbinary.graphics.form.VerticalFormProcessor",
        "Processor",
        [],
        False,
        [#("scrollCurrentSelectionForm", jr.JNull)],
        [],
        [
            jr.Method("process_0", [], False, c1_m3__process), 
            jr.Method("jinit_1", ["ScrollCurrentSelectionForm"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

