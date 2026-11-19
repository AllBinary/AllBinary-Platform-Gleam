// Generated Code Do Not Modify
// package org.allbinary.debug
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoDebug

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoDebug", "SINGLETON", jr.new("NoDebug", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoDebug", "SINGLETON")
}

fn c1_m3__start(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__stop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__getmaxtime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.JLong(10000))
}

fn c1_m6__getstarttime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.JLong(0))
}

fn c1_m7__isrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoDebug",
        "org.allbinary.debug.NoDebug",
        "Object",
        ["DebugInterface"],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("start_0", [], False, c1_m3__start), 
            jr.Method("stop_0", [], False, c1_m4__stop), 
            jr.Method("getMaxTime_0", [], False, c1_m5__getmaxtime), 
            jr.Method("getStartTime_0", [], False, c1_m6__getstarttime), 
            jr.Method("isRunning_0", [], False, c1_m7__isrunning), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

