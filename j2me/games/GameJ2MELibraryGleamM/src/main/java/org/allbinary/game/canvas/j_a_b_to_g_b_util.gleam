// Generated Code Do Not Modify
// package org.allbinary.game.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABToGBUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "abCanvas", jr.get_static("NullCanvas", "NULL_CANVAS"))
    jr.set_field(this, "allBinaryGameLayerManager", jr.call_static("AllBinaryGameLayerManager", "getNullInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ABToGBUtil", "instance", jr.new("ABToGBUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ABToGBUtil", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABToGBUtil",
        "org.allbinary.game.canvas.ABToGBUtil",
        "Object",
        [],
        False,
        [#("abCanvas", jr.JNull), #("allBinaryGameLayerManager", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

