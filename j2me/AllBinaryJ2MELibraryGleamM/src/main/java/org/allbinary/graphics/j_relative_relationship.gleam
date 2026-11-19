// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RelativeRelationship

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RelativeRelationship", "NULL_RELATIVE_RELATIONSHIP", jr.new("RelativeRelationship", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", [])]))
    jr.JNull
}

fn c1_m7__getx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "x"))
}

fn c1_m8__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "y"))
}

fn c1_m9__getz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "z"))
}

fn c1_m10__gettypesallowedlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "typesAllowedList")
}

fn c1_m11__settypesallowedlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_types_allowed_list] = jargs
        jr.set_field(this, "typesAllowedList", l_types_allowed_list)
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point, l_types_allowed_list] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "x", jr.as_i(jr.call(l_point, "getX_0", [])))
        jr.set_field(this, "y", jr.as_i(jr.call(l_point, "getY_0", [])))
        jr.set_field(this, "z", jr.as_i(jr.call(l_point, "getZ_0", [])))
        jr.set_field(this, "typesAllowedList", l_types_allowed_list)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RelativeRelationship",
        "org.allbinary.graphics.RelativeRelationship",
        "Object",
        [],
        False,
        [#("typesAllowedList", jr.JNull), #("x", jr.JInt(0)), #("y", jr.JInt(0)), #("z", jr.JInt(0))],
        [#("NULL_RELATIVE_RELATIONSHIP", jr.JNull)],
        [
            jr.Method("getX_0", [], False, c1_m7__getx), 
            jr.Method("getY_0", [], False, c1_m8__gety), 
            jr.Method("getZ_0", [], False, c1_m9__getz), 
            jr.Method("getTypesAllowedList_0", [], False, c1_m10__gettypesallowedlist), 
            jr.Method("setTypesAllowedList_1", ["BasicArrayList"], False, c1_m11__settypesallowedlist), 
            jr.Method("jinit_2", ["GPoint", "BasicArrayList"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

