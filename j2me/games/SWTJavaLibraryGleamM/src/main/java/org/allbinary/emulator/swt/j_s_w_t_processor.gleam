// Generated Code Do Not Modify
// package org.allbinary.emulator.swt
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SWTProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "runnable", jr.call_static("NullRunnable", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SWTProcessor", "instance", jr.new("SWTProcessor", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SWTProcessor", "instance")
}

fn c1_m5__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display] = jargs
        jr.call(l_display, "sleep_0", [])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SWTProcessor",
        "org.allbinary.emulator.swt.SWTProcessor",
        "Object",
        [],
        False,
        [#("runnable", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("process_1", ["EclipseDisplay"], False, c1_m5__process), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

