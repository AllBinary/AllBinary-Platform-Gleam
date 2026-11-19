// Generated Code Do Not Modify
// package org.allbinary.android.view
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryRenderer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryRenderer", "instance", jr.new("AllBinaryRenderer", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AllBinaryRenderer", "instance")
}

fn c1_m3__setrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable] = jargs
    jr.JNull
}

fn c1_m4__clearrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryRenderer",
        "org.allbinary.android.view.AllBinaryRenderer",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setRunnable_1", ["Runnable"], False, c1_m3__setrunnable), 
            jr.Method("clearRunnable_0", [], False, c1_m4__clearrunnable), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

