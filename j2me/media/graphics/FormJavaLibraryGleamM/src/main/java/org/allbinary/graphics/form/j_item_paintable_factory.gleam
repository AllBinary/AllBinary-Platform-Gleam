// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ItemPaintableFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ItemPaintableFactory", "instance", jr.new("ItemPaintableFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ItemPaintableFactory", "instance")
}

fn c1_m3__getinstanceitempaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_paintable_form] = jargs
    jr.get_static("ItemPaintableFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("ItemPaintable", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ItemPaintableFactory",
        "org.allbinary.graphics.form.ItemPaintableFactory",
        "ItemPaintable",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstanceItemPaintable_1", ["PaintableForm"], False, c1_m3__getinstanceitempaintable), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

