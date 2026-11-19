// Generated Code Do Not Modify
// package org.allbinary.direction
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DirectionFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NAME", jr.JStr("DIRECTION"))
    jr.set_field(this, "LEFT", jr.new("Direction", [jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "LEFT"), jr.JStr("WEST"), jr.JInt(0), jr.JInt(1)]))
    jr.set_field(this, "RIGHT", jr.new("Direction", [jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "RIGHT"), jr.JStr("EAST"), jr.JInt(1), jr.JInt(0)]))
    jr.set_field(this, "DOWN", jr.new("Direction", [jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "DOWN"), jr.JStr("SOUTH"), jr.JInt(2), jr.JInt(0)]))
    jr.set_field(this, "UP", jr.new("Direction", [jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "UP"), jr.JStr("NORTH"), jr.JInt(3), jr.JInt(0)]))
    jr.set_field(this, "NOT_BORDERED_WITH", jr.new("Direction", [jr.JStr("NOT_BORDERED_WITH"), jr.JStr("NOT_BORDERED_WITH"), jr.JInt(8), jr.JInt(0)]))
    jr.set_field(this, "NO_DIRECTION", jr.new("Direction", [jr.JStr("NO_DIRECTION"), jr.JStr("NO_DIRECTION"), jr.JInt(9), jr.JInt(0)]))
    jr.set_field(this, "TOP", jr.new("Direction", [jr.JStr("TOP"), jr.JStr("TOP"), jr.JInt(10), jr.JInt(0)]))
    jr.set_field(this, "BOTTOM", jr.new("Direction", [jr.JStr("BOTTOM"), jr.JStr("BOTTOM"), jr.JInt(11), jr.JInt(0)]))
    jr.set_field(this, "ALL_DIRECTION", jr.new("Direction", [jr.JStr("ALL_DIRECTION"), jr.JStr("ALL_DIRECTION"), jr.JInt(12), jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DirectionFactory", "instance", jr.new("DirectionFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DirectionFactory", "instance")
}

fn c1_jinit17(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_string_buffer = jr.new("StringMaker", [])
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        jr.set_field(this, "UP_LEFT", jr.new("Direction", [jr.JStr("UP LEFT"), jr.call(jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "UP"), "getOtherName_0", [])]), "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.call(jr.get_field(this, "LEFT"), "getOtherName_0", [])]), "toString_0", []), jr.JInt(4), jr.JInt(0)]))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.set_field(this, "UP_RIGHT", jr.new("Direction", [jr.JStr("UP RIGHT"), jr.call(jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "UP"), "getOtherName_0", [])]), "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.call(jr.get_field(this, "RIGHT"), "getOtherName_0", [])]), "toString_0", []), jr.JInt(5), jr.JInt(0)]))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.set_field(this, "DOWN_LEFT", jr.new("Direction", [jr.JStr("DOWN LEFT"), jr.call(jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "DOWN"), "getOtherName_0", [])]), "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.call(jr.get_field(this, "LEFT"), "getOtherName_0", [])]), "toString_0", []), jr.JInt(6), jr.JInt(0)]))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.set_field(this, "DOWN_RIGHT", jr.new("Direction", [jr.JStr("DOWN RIGHT"), jr.call(jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "DOWN"), "getOtherName_0", [])]), "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [jr.call(jr.get_field(this, "RIGHT"), "getOtherName_0", [])]), "toString_0", []), jr.JInt(7), jr.JInt(0)]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DirectionFactory",
        "org.allbinary.direction.DirectionFactory",
        "Object",
        [],
        False,
        [#("NAME", jr.JNull), #("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("DOWN", jr.JNull), #("UP", jr.JNull), #("UP_LEFT", jr.JNull), #("UP_RIGHT", jr.JNull), #("DOWN_LEFT", jr.JNull), #("DOWN_RIGHT", jr.JNull), #("NOT_BORDERED_WITH", jr.JNull), #("NO_DIRECTION", jr.JNull), #("TOP", jr.JNull), #("BOTTOM", jr.JNull), #("ALL_DIRECTION", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit17)],
        c1_jfields,
        c1_jclinit,
    )
}

