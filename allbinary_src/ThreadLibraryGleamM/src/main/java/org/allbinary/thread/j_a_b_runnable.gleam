// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "running", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__setthread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_thread] = jargs
    jr.JNull
}

fn c1_m3__isrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "running")
}

fn c1_m4__setrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_running] = jargs
        jr.set_field(this, "running", l_running)
    jr.JNull
}

fn c1_m5__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m6__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABRunnable",
        "org.allbinary.thread.ABRunnable",
        "Object",
        ["RunnableInterface"],
        False,
        [#("running", jr.JBool(False))],
        [],
        [
            jr.Method("setThread_1", ["Thread"], False, c1_m2__setthread), 
            jr.Method("isRunning_0", [], False, c1_m3__isrunning), 
            jr.Method("setRunning_1", ["boolean"], False, c1_m4__setrunning), 
            jr.Method("run_0", [], False, c1_m5__run), 
            jr.Method("getType_0", [], False, c1_m6__gettype), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

