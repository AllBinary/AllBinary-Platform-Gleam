// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LockableFormPaintableFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstanceitempaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_paintable_form] = jargs
    jr.new("LockablePaintable", [jr.get_field(this, "lockedIndex")])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_locked_index] = jargs
    let l_locked_index = jr.as_i(l_locked_index)
    jr.super_init("ItemPaintableFactory", this, [])
    c1_jfields(this)
        jr.set_field(this, "lockedIndex", jr.as_i(l_locked_index))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LockableFormPaintableFactory",
        "org.allbinary.graphics.form.LockableFormPaintableFactory",
        "ItemPaintableFactory",
        [],
        False,
        [#("lockedIndex", jr.JInt(0))],
        [],
        [
            jr.Method("getInstanceItemPaintable_1", ["PaintableForm"], False, c1_m3__getinstanceitempaintable), 
            jr.Method("jinit_1", ["int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

