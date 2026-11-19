// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LicenseLevelUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LicenseLevelUtil", "instance", jr.new("LicenseLevelUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LicenseLevelUtil", "instance")
}

fn c1_m3__getmaxlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_level, l_demo_level] = jargs
    let l_max_level = jr.as_i(l_max_level)
    let l_demo_level = jr.as_i(l_demo_level)
    jr.as_i(l_demo_level)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LicenseLevelUtil",
        "org.allbinary.game.midlet.LicenseLevelUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getMaxLevel_2", ["int", "int"], False, c1_m3__getmaxlevel), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

