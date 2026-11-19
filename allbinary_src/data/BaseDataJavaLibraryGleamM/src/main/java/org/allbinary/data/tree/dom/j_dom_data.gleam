// Generated Code Do Not Modify
// package org.allbinary.data.tree.dom
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DomData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DomData",
        "org.allbinary.data.tree.dom.DomData",
        "Object",
        [],
        False,
        [],
        [#("ID", jr.JStr("id")), #("CHILD", jr.JStr("child")), #("NAME", jr.JStr("name")), #("VALUE", jr.JStr("value")), #("INDEX", jr.JStr("index"))],
        [
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

