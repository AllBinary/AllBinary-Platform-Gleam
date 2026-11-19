// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicArrayListS

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
        jr.super_init("BasicArrayList", this, [jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT_ARRAY")])
        c1_jfields(this)
        case jr.truth(jr.lt(l_size, jr.JInt(0))) {
            True -> {
            jr.throw(jr.new("IllegalArgumentException", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Init Size Exception: ")]), "appendint_1", [l_size]), "toString_0", [])]))
            Nil
        }
            False -> Nil
        }
        jr.set_inherited(this, "BasicArrayListS", "objectArray", jr.new_array("L", 1, [l_size]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicArrayListS",
        "org.allbinary.util.BasicArrayListS",
        "BasicArrayList",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

