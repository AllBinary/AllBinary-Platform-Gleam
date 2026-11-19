// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ItemColorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "INVERT_PAINT", jr.as_i(jr.JInt(jr.wrap_i(0xFF000000))))
    jr.set_field(this, "PAINT", jr.as_i(jr.JInt(jr.wrap_i(0xFFe07718))))
    jr.set_field(this, "TEXT_FIELD_NO_FOCUS", jr.as_i(jr.JInt(jr.wrap_i(0x7F7F7F))))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ItemColorFactory", "instance", jr.new("ItemColorFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ItemColorFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ItemColorFactory",
        "org.allbinary.graphics.ItemColorFactory",
        "Object",
        [],
        False,
        [#("INVERT_PAINT", jr.JInt(0)), #("PAINT", jr.JInt(0)), #("TEXT_FIELD_NO_FOCUS", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

