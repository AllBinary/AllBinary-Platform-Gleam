// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DisplayPointScalar

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DisplayPointScalar", "instance", jr.new("DisplayPointScalar", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DisplayPointScalar", "instance")
}

fn c1_m3__processx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
    jr.as_i(l_value)
}

fn c1_m4__processy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
    jr.as_i(l_value)
}

fn c1_m5__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point] = jargs
    l_point
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DisplayPointScalar",
        "org.allbinary.graphics.displayable.screen.DisplayPointScalar",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("processX_1", ["int"], False, c1_m3__processx), 
            jr.Method("processY_1", ["int"], False, c1_m4__processy), 
            jr.Method("process_1", ["GPoint"], False, c1_m5__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

