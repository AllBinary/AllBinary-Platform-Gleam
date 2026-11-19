// Generated Code Do Not Modify
// package org.allbinary.direction
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Direction

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Direction", "directionArray", jr.new_array("L", 1, [jr.JInt(13)]))
    jr.JNull
}

fn c1_m7__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction] = jargs
    let l_direction = jr.as_i(l_direction)
    jr.aget(jr.get_static("Direction", "directionArray"), l_direction)
}

fn c1_m8__getvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "value"))
}

fn c1_m9__getframefactor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "frameFactor"))
}

fn c1_m10__getothername(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "otherName")
}

fn c1_m11__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m12__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Direction: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Or: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getOtherName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Value: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "value")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_other_name, l_value, l_frame_factor] = jargs
    let l_value = jr.as_i(l_value)
    let l_frame_factor = jr.as_i(l_frame_factor)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "otherName", l_other_name)
        jr.set_field(this, "value", jr.as_i(l_value))
        jr.set_field(this, "frameFactor", jr.as_i(l_frame_factor))
        jr.aset(jr.get_static("Direction", "directionArray"), l_value, this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Direction",
        "org.allbinary.direction.Direction",
        "Object",
        [],
        False,
        [#("name", jr.JNull), #("otherName", jr.JNull), #("value", jr.JInt(0)), #("frameFactor", jr.JInt(0))],
        [#("directionArray", jr.JNull)],
        [
            jr.Method("getInstance_1", ["int"], True, c1_m7__getinstance), 
            jr.Method("getValue_0", [], False, c1_m8__getvalue), 
            jr.Method("getFrameFactor_0", [], False, c1_m9__getframefactor), 
            jr.Method("getOtherName_0", [], False, c1_m10__getothername), 
            jr.Method("getName_0", [], False, c1_m11__getname), 
            jr.Method("toString_0", [], False, c1_m12__tostring), 
            jr.Method("jinit_4", ["String", "String", "int", "int"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

