// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScreenRepaintProcessorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ScreenRepaintProcessorFactory", "instance", jr.new("ScreenRepaintProcessorFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ScreenRepaintProcessorFactory", "instance")
}

fn c1_m4__create(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_displayable] = jargs
    jr.method(fn() {
            case jr.truth(jr.not(jr.call_static("J2MEUtil", "isJ2ME_0", []))) {
            True -> {
            jr.ret(jr.new("ScreenRepaintProcessor", [l_displayable]))
            Nil
        }
            False -> {
            jr.ret(jr.call_static("Processor", "getInstance_0", []))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScreenRepaintProcessorFactory",
        "org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("create_1", ["Displayable"], False, c1_m4__create), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

