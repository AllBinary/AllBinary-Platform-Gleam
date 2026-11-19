// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class J2SEUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("J2SEUtil", "instance", jr.new("J2SEUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("J2SEUtil", "instance")
}

fn c1_m3__gethashmapasarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hash_map] = jargs
        let l_object_array = jr.call(jr.call(l_hash_map, "keySet_0", []), "toArray_0", [])
    l_object_array
}

fn c1_m4__getmapasarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_map] = jargs
        let l_object_array = jr.call(jr.call(l_map, "keySet_0", []), "toArray_0", [])
    l_object_array
}

fn c1_m5__getsetasarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_set] = jargs
        let l_object_array = jr.call(l_set, "toArray_0", [])
    l_object_array
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "J2SEUtil",
        "org.allbinary.J2SEUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getHashMapAsArray_1", ["HashMap"], False, c1_m3__gethashmapasarray), 
            jr.Method("getMapAsArray_1", ["Map"], False, c1_m4__getmapasarray), 
            jr.Method("getSetAsArray_1", ["Set"], False, c1_m5__getsetasarray), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

