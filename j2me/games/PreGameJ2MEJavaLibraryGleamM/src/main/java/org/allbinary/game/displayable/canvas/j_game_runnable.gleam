// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "WAIT", jr.as_i(jr.JInt(240)))
    jr.set_field(this, "FAST", jr.as_i(jr.JInt(60)))
    jr.set_field(this, "waitInMillis", jr.as_j(jr.to_j(jr.get_field(this, "WAIT"))))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "process_0", [])
    jr.JNull
}

fn c1_m6__processloopsleep(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("Thread", "sleep_1", [jr.get_field(this, "waitInMillis")])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameRunnable",
        "org.allbinary.game.displayable.canvas.GameRunnable",
        "Object",
        ["Runnable"],
        False,
        [#("WAIT", jr.JInt(0)), #("FAST", jr.JInt(0)), #("waitInMillis", jr.JLong(0))],
        [],
        [
            jr.Method("run_0", [], False, c1_m5__run), 
            jr.Method("processLoopSleep_0", [], False, c1_m6__processloopsleep), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

