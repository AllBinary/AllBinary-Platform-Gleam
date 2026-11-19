// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Processor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Processor", "SINGLETON", jr.new("Processor", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("Processor", "SINGLETON")
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__processt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_time_delta] = jargs
    let l_time_delta = jr.as_j(l_time_delta)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Processor",
        "org.allbinary.canvas.Processor",
        "Object",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("process_0", [], False, c1_m3__process), 
            jr.Method("processt_1", ["long"], False, c1_m4__processt), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

