// Generated Code Do Not Modify
// package org.allbinary.emulator.swt
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SWTRunnableProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SWTRunnableProcessor", "instanceR", jr.new("SWTRunnableProcessor", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SWTRunnableProcessor", "instanceR")
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display] = jargs
        jr.call(jr.get_inherited(this, "SWTRunnableProcessor", "runnable"), "run_0", [])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("SWTProcessor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SWTRunnableProcessor",
        "org.allbinary.emulator.swt.SWTRunnableProcessor",
        "SWTProcessor",
        [],
        False,
        [],
        [#("instanceR", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("process_1", ["EclipseDisplay"], False, c1_m4__process), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

