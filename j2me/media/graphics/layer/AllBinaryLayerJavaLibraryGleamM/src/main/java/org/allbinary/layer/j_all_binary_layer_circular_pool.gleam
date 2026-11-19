// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryLayerCircularPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__initallbinarylayercircularpool(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_factory_interface, l_total] = jargs
    let l_total = jr.as_i(l_total)
        jr.set_inherited(this, "AllBinaryLayerCircularPool", "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [l_total]))
        jr.set_inherited(this, "AllBinaryLayerCircularPool", "OBJECT_ARRAY", jr.new_array("L", 1, [l_total]))
        {
            let l_local_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_local_index), l_total) }, fn() { jr.incr(fn() { jr.get(l_local_index) }, fn(jv) { jr.set(l_local_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_inherited(this, "AllBinaryLayerCircularPool", "OBJECT_ARRAY"), jr.get(l_local_index), jr.call(l_allbinary_layer_factory_interface, "getInstance_0", []))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BaseCircularPool", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryLayerCircularPool",
        "org.allbinary.layer.AllBinaryLayerCircularPool",
        "BaseCircularPool",
        [],
        False,
        [],
        [],
        [
            jr.Method("initAllBinaryLayerCircularPool_2", ["AllBinaryLayerFactoryInterface", "int"], False, c1_m2__initallbinarylayercircularpool), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

