// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputProcessorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "inputProcessor", jr.new("InputProcessor", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InputProcessorFactory", "instance", jr.new("InputProcessorFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("InputProcessorFactory", "instance")
}

fn c1_m4__getinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "inputProcessor")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputProcessorFactory",
        "org.allbinary.game.input.InputProcessorFactory",
        "Object",
        [],
        False,
        [#("inputProcessor", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInputProcessor_0", [], False, c1_m4__getinputprocessor), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

