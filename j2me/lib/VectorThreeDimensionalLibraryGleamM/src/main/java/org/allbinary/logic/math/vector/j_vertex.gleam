// Generated Code Do Not Modify
// package org.allbinary.logic.math.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Vertex

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "x", jr.new("BasicDecimal", [jr.JInt(0)]))
    jr.set_field(this, "y", jr.new("BasicDecimal", [jr.JInt(0)]))
    jr.set_field(this, "z", jr.new("BasicDecimal", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        let l_position_strings = jr.call_static("PositionStrings", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "X_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "x"), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Y_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "y"), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Z_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "z"), "toString_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Vertex",
        "org.allbinary.logic.math.vector.Vertex",
        "Object",
        [],
        False,
        [#("x", jr.JNull), #("y", jr.JNull), #("z", jr.JNull)],
        [],
        [
            jr.Method("toString_0", [], False, c1_m5__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

