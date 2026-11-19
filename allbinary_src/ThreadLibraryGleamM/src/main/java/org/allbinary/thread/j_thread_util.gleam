// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThreadUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "JOIN", jr.JStr("join"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ThreadUtil", "instance", jr.new("ThreadUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ThreadUtil", "instance")
}

fn c1_m5__isrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_thread] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.ne(l_thread, jr.JNull)) { True -> jr.call(l_thread, "isAlive_0", []) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m6__join(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_thread] = jargs
        case jr.truth(jr.call(jr.call_static("ThreadUtil", "getInstance_0", []), "isRunning_1", [l_thread])) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Waiting for Thread To Join/End"), this, jr.get_field(this, "JOIN")])
            jr.call(l_thread, "join_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThreadUtil",
        "org.allbinary.thread.ThreadUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("JOIN", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("isRunning_1", ["Thread"], False, c1_m5__isrunning), 
            jr.Method("join_1", ["Thread"], False, c1_m6__join), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

