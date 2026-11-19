// Generated Code Do Not Modify
// package org.allbinary.media
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScaleProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ScaleProperties", "instance", jr.new("ScaleProperties", []))
    jr.JNull
}

fn c1_m7__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "COLON_SEP")]), "appendboolean_1", [jr.get_field(this, "shouldScale")]), "append_1", [jr.JStr("scaleX: ")]), "appendfloat_1", [jr.get_field(this, "scaleX")]), "append_1", [jr.JStr("scaleY: ")]), "appendfloat_1", [jr.get_field(this, "scaleY")]), "append_1", [jr.JStr("scaleWidth: ")]), "appendint_1", [jr.get_field(this, "scaleWidth")]), "append_1", [jr.JStr("scaleHeight: ")]), "appendint_1", [jr.get_field(this, "scaleHeight")]), "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScaleProperties",
        "org.allbinary.media.ScaleProperties",
        "Object",
        [],
        False,
        [#("scaleX", jr.JFloat(0.0)), #("scaleY", jr.JFloat(0.0)), #("scaleWidth", jr.JInt(0)), #("scaleHeight", jr.JInt(0)), #("shouldScale", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("toString_0", [], False, c1_m7__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

