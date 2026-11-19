// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomItemUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "CUSTOM_ITEM_ARRAY", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CustomItemUtil", "instance", jr.new("CustomItemUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CustomItemUtil", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomItemUtil",
        "org.allbinary.graphics.form.item.CustomItemUtil",
        "Object",
        [],
        False,
        [#("CUSTOM_ITEM_ARRAY", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

