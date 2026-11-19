// Generated Code Do Not Modify
// package org.allbinary.logic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NULL_OBJECT", jr.new("Object", []))
    jr.set_field(this, "NULL_CLASS", jr.call(jr.get_field(this, "NULL_OBJECT"), "getClass_0", []))
    jr.set_field(this, "NULL_OBJECT_ARRAY", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.set_field(this, "NULL_CHAR_ARRAY", jr.new_array("C", 1, [jr.JInt(0)]))
    jr.set_field(this, "NULL_BYTE_ARRAY", jr.new_array("B", 1, [jr.JInt(0)]))
    jr.set_field(this, "NULL_SHORT_ARRAY_ARRAY", jr.new_array("S", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "NULL_INT_ARRAY", jr.new_array("I", 1, [jr.JInt(0)]))
    jr.set_field(this, "NULL_INT_ARRAY_ARRAY", jr.new_array("I", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "NULL_INT_ARRAY_ARRAY_ARRAY", jr.new_array("I", 3, [jr.JInt(0), jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "NULL_FLOAT_ARRAY", jr.new_array("F", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullUtil", "instance", jr.new("NullUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullUtil", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullUtil",
        "org.allbinary.logic.NullUtil",
        "Object",
        [],
        False,
        [#("NULL_OBJECT", jr.JNull), #("NULL_CLASS", jr.JNull), #("NULL_OBJECT_ARRAY", jr.JNull), #("NULL_CHAR_ARRAY", jr.JNull), #("NULL_BYTE_ARRAY", jr.JNull), #("NULL_SHORT_ARRAY_ARRAY", jr.JNull), #("NULL_INT_ARRAY", jr.JNull), #("NULL_INT_ARRAY_ARRAY", jr.JNull), #("NULL_INT_ARRAY_ARRAY_ARRAY", jr.JNull), #("NULL_FLOAT_ARRAY", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

