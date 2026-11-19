// Generated Code Do Not Modify
// package org.allbinary.logic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("VectorUtil", "instance", jr.new("VectorUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("VectorUtil", "instance")
}

fn c1_m3__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        let l_vector = l_any_type
    jr.as_i(jr.call(l_vector, "size_0", []))
}

fn c1_m4__elementat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_vector = l_any_type
    jr.call(l_vector, "elementAt_1", [l_index])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorUtil",
        "org.allbinary.logic.VectorUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getSize_1", ["Object"], False, c1_m3__getsize), 
            jr.Method("elementAt_2", ["Object", "int"], False, c1_m4__elementat), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

