// Generated Code Do Not Modify
// package org.allbinary.time
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoTimeDelayHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoTimeDelayHelper", "SINGLETON", jr.new("NoTimeDelayHelper", []))
    jr.JNull
}

fn c1_m3__istimetnt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_m4__istimesincetnt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_delay] = jargs
    let l_delay = jr.as_i(l_delay)
    jr.JBool(True)
}

fn c1_m5__istime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_time] = jargs
    let l_current_time = jr.as_j(l_current_time)
    jr.JBool(True)
}

fn c1_m6__istimesince(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_delay, l_current_time] = jargs
    let l_delay = jr.as_i(l_delay)
    let l_current_time = jr.as_j(l_current_time)
    jr.JBool(True)
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("TimeDelayHelper", this, [jr.JInt(0)])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoTimeDelayHelper",
        "org.allbinary.time.NoTimeDelayHelper",
        "TimeDelayHelper",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("isTimeTNT_0", [], False, c1_m3__istimetnt), 
            jr.Method("isTimeSinceTNT_1", ["int"], False, c1_m4__istimesincetnt), 
            jr.Method("isTime_1", ["long"], False, c1_m5__istime), 
            jr.Method("isTimeSince_2", ["int", "long"], False, c1_m6__istimesince), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

