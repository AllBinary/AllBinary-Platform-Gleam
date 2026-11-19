// Generated Code Do Not Modify
// package org.allbinary.logic.java
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PrimitiveArrayToString

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_floats] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_floats)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_buffer, "appendfloat_1", [jr.aget(l_floats, jr.get(l_index))])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PrimitiveArrayToString",
        "org.allbinary.logic.java.PrimitiveArrayToString",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("toString_1", ["floatArr"], True, c1_m1__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

