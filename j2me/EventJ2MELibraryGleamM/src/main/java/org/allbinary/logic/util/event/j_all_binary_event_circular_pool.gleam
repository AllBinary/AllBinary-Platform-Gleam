// Generated Code Do Not Modify
// package org.allbinary.logic.util.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryEventCircularPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__initallbinaryeventcircularpool(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_event_object_factory_interface] = jargs
        jr.call(jr.get_inherited(this, "AllBinaryEventCircularPool", "circularIndexUtil"), "setIndex_1", [jr.JInt(0)])
        let l_size = jr.as_i(jr.call(jr.get_inherited(this, "AllBinaryEventCircularPool", "circularIndexUtil"), "getSize_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_inherited(this, "AllBinaryEventCircularPool", "OBJECT_ARRAY"), jr.get(l_index), jr.call(l_all_binary_event_object_factory_interface, "getInstance_0", []))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max] = jargs
    let l_max = jr.as_i(l_max)
    jr.super_init("BaseCircularPool", this, [])
    c1_jfields(this)
        jr.set_inherited(this, "AllBinaryEventCircularPool", "OBJECT_ARRAY", jr.new_array("L", 1, [l_max]))
        jr.set_inherited(this, "AllBinaryEventCircularPool", "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [l_max]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryEventCircularPool",
        "org.allbinary.logic.util.event.AllBinaryEventCircularPool",
        "BaseCircularPool",
        [],
        False,
        [],
        [],
        [
            jr.Method("initAllBinaryEventCircularPool_1", ["AllBinaryEventObjectFactoryInterface"], False, c1_m2__initallbinaryeventcircularpool), 
            jr.Method("jinit_1", ["int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

