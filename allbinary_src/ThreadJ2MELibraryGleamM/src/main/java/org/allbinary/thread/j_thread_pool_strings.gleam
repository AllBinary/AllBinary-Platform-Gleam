// Generated Code Do Not Modify
// package org.allbinary.thread
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThreadPoolStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ADD_TASK", jr.JStr("addTask"))
    jr.set_field(this, "START_TASK", jr.JStr("Started Task: "))
    jr.set_field(this, "COMPLETE_TASK", jr.JStr("Completed Task: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ThreadPoolStrings", "instance", jr.new("ThreadPoolStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ThreadPoolStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThreadPoolStrings",
        "org.allbinary.thread.ThreadPoolStrings",
        "Object",
        [],
        False,
        [#("ADD_TASK", jr.JNull), #("START_TASK", jr.JNull), #("COMPLETE_TASK", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

