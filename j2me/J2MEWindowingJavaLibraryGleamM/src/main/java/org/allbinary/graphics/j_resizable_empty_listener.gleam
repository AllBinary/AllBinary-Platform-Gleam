// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ResizableEmptyListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__onresizable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_resizable] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ResizableEmptyListener",
        "org.allbinary.graphics.ResizableEmptyListener",
        "Object",
        ["ResizableListenerInterface"],
        False,
        [],
        [],
        [
            jr.Method("onResizable_1", ["boolean"], False, c1_m1__onresizable), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

