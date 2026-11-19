// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CachePolicy

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getmaxtime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "maxTime"))
}

fn c1_m6__setmaxtime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_time] = jargs
    let l_max_time = jr.as_j(l_max_time)
        jr.set_field(this, "maxTime", jr.as_j(l_max_time))
    jr.JNull
}

fn c1_m7__getmaxsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "maxSize"))
}

fn c1_m8__setmaxsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_size] = jargs
    let l_max_size = jr.as_j(l_max_size)
        jr.set_field(this, "maxSize", jr.as_j(l_max_size))
    jr.JNull
}

fn c1_m9__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_max_time, l_max_size] = jargs
    let l_max_time = jr.as_j(l_max_time)
    let l_max_size = jr.as_j(l_max_size)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.call(this, "setMaxTime_1", [l_max_time])
        jr.call(this, "setMaxSize_1", [l_max_size])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CachePolicy",
        "org.allbinary.logic.util.cache.CachePolicy",
        "Object",
        [],
        False,
        [#("name", jr.JNull), #("maxTime", jr.JLong(0)), #("maxSize", jr.JLong(0))],
        [],
        [
            jr.Method("getMaxTime_0", [], False, c1_m5__getmaxtime), 
            jr.Method("setMaxTime_1", ["long"], False, c1_m6__setmaxtime), 
            jr.Method("getMaxSize_0", [], False, c1_m7__getmaxsize), 
            jr.Method("setMaxSize_1", ["long"], False, c1_m8__setmaxsize), 
            jr.Method("getName_0", [], False, c1_m9__getname), 
            jr.Method("jinit_3", ["String", "long", "long"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

