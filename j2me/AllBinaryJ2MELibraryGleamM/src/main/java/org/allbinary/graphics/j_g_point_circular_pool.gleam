// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GPointCircularPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
    jr.super_init("BaseCircularPool", this, [])
    c1_jfields(this)
        jr.set_inherited(this, "GPointCircularPool", "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [l_size]))
        jr.set_inherited(this, "GPointCircularPool", "OBJECT_ARRAY", jr.new_array("L", 1, [l_size]))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_inherited(this, "GPointCircularPool", "OBJECT_ARRAY"), jr.get(l_index), jr.call_static("CustomGPoint", "getInstance3_2", [jr.JInt(0), jr.JInt(0)]))
            Nil
        })
            Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GPointCircularPool",
        "org.allbinary.graphics.GPointCircularPool",
        "BaseCircularPool",
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

