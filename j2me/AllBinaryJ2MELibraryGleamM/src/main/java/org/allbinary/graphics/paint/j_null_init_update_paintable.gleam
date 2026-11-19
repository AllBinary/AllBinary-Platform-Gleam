// Generated Code Do Not Modify
// package org.allbinary.graphics.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullInitUpdatePaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullInitUpdatePaintable", "SINGLETON", jr.new("NullInitUpdatePaintable", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullInitUpdatePaintable", "SINGLETON")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("InitUpdatePaintable", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullInitUpdatePaintable",
        "org.allbinary.graphics.paint.NullInitUpdatePaintable",
        "InitUpdatePaintable",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

