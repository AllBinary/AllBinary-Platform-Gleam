// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThreadObjectUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NULL_PRIORITY_RUNNABLE", jr.new("NullPriorityRunnable", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ThreadObjectUtil", "instance", jr.new("ThreadObjectUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ThreadObjectUtil", "instance")
}

fn c1_m4__notifyobject(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call(l_any_type, "notify_0", [])
    jr.JNull
}

fn c1_m5__waitobject(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call(l_any_type, "wait_0", [])
    jr.JNull
}

fn c1_m6__waitobjectfor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_delay] = jargs
    let l_delay = jr.as_j(l_delay)
        jr.call(jr.call_static("TsUtil", "getInstance_0", []), "waitFor_2", [l_any_type, l_delay])
    jr.JNull
}

fn c1_m7__processthread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable] = jargs
        let l_thread = jr.new("Thread", [l_runnable])
        jr.call(l_thread, "start_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThreadObjectUtil",
        "org.allbinary.thread.ThreadObjectUtil",
        "Object",
        [],
        False,
        [#("NULL_PRIORITY_RUNNABLE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("notifyObject_1", ["Object"], False, c1_m4__notifyobject), 
            jr.Method("waitObject_1", ["Object"], False, c1_m5__waitobject), 
            jr.Method("waitObjectFor_2", ["Object", "long"], False, c1_m6__waitobjectfor), 
            jr.Method("processThread_1", ["Runnable"], False, c1_m7__processthread), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

