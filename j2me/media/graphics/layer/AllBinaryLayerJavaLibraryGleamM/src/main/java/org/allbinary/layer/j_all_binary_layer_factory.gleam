// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryLayerFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("AllBinaryLayer", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(this, "rectangle"), jr.call_static("ViewPosition", "getInstanceD_0", [])])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "rectangle", l_rectangle)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryLayerFactory",
        "org.allbinary.layer.AllBinaryLayerFactory",
        "Object",
        ["AllBinaryLayerFactoryInterface"],
        False,
        [#("rectangle", jr.JNull)],
        [],
        [
            jr.Method("getInstance_0", [], False, c1_m3__getinstance), 
            jr.Method("jinit_1", ["Rectangle"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

