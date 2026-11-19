// Generated Code Do Not Modify
// package org.allbinary.time
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameTickTimeDelayHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__setstarttime(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "startTime", jr.as_j(jr.call_static("System", "currentTimeMillis_0", [])))
    jr.as_j(jr.get_field(this, "startTime"))
}

fn c1_m6__loop(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_field(this, "lastStartTime"), jr.get_static("Long", "MIN_VALUE"))) {
            True -> {
            jr.set_field(this, "timeDelta", jr.as_j(jr.JLong(0)))
            Nil
        }
            False -> {
            jr.set_field(this, "timeDelta", jr.as_j(jr.sub(jr.call_static("System", "currentTimeMillis_0", []), jr.get_field(this, "lastStartTime"))))
            Nil
        }
        }
    jr.JNull
}

fn c1_m7__gettimefromstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.sub(jr.get_field(this, "startTime"), jr.get_field(this, "lastStartTime")))
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_start_time] = jargs
    let l_start_time = jr.as_j(l_start_time)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "startTime", jr.as_j(l_start_time))
        jr.set_field(this, "lastStartTime", jr.as_j(jr.JLong(0)))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameTickTimeDelayHelper",
        "org.allbinary.time.GameTickTimeDelayHelper",
        "Object",
        [],
        False,
        [#("timeDelta", jr.JLong(0)), #("startTime", jr.JLong(0)), #("lastStartTime", jr.JLong(0))],
        [],
        [
            jr.Method("setStartTime_0", [], False, c1_m5__setstarttime), 
            jr.Method("loop_0", [], False, c1_m6__loop), 
            jr.Method("getTimeFromStart_0", [], False, c1_m7__gettimefromstart), 
            jr.Method("jinit_1", ["long"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

