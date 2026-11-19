// Generated Code Do Not Modify
// package org.allbinary.game.part
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PartInterfaceUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PartInterfaceUtil", "SINGLETON", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_m2__getzeroarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PartInterfaceUtil", "SINGLETON")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PartInterfaceUtil",
        "org.allbinary.game.part.PartInterfaceUtil",
        "Object",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getZeroArray_0", [], True, c1_m2__getzeroarray), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

