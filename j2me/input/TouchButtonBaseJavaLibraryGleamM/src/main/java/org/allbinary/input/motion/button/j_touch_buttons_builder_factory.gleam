// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonsBuilderFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TouchButtonsBuilderFactory", "NO_TOUCH_BUTTON_BUILDER_FACTORY", jr.new("TouchButtonsBuilderFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("NoButtonsTouchInputFactory", "getInstance_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonsBuilderFactory",
        "org.allbinary.input.motion.button.TouchButtonsBuilderFactory",
        "Object",
        [],
        False,
        [],
        [#("NO_TOUCH_BUTTON_BUILDER_FACTORY", jr.JNull)],
        [
            jr.Method("getInstance_0", [], False, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

