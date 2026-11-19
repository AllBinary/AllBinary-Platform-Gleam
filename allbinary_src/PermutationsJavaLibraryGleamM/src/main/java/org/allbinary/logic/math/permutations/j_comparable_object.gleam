// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ComparableObject

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__compareto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.method(fn() {
            case jr.truth(jr.lt(jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this]), jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [l_any_type]))) {
            True -> {
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        }
            False -> case jr.truth(jr.gt(jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this]), jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [l_any_type]))) {
            True -> {
            jr.ret(jr.as_i(jr.JInt(1)))
            Nil
        }
            False -> Nil
        }
        }
            jr.ret(jr.as_i(jr.JInt(0)))
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ComparableObject",
        "org.allbinary.logic.math.permutations.ComparableObject",
        "Object",
        ["Comparable"],
        False,
        [],
        [],
        [
            jr.Method("compareTo_1", ["Object"], False, c1_m1__compareto), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

