// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class EnumerationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("EnumerationUtil", "instance", jr.new("EnumerationUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("EnumerationUtil", "instance")
}

fn c1_m3__hasmoreelements(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_enumeration] = jargs
    jr.call(l_enumeration, "hasMoreElements_0", [])
}

fn c1_m4__nextelement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_enumeration] = jargs
    jr.call(l_enumeration, "nextElement_0", [])
}

fn c1_m5__getasarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_enumeration] = jargs
        let l_basic_array_list = jr.new("BasicArrayListD", [])
        jr.while_loop("", fn() { jr.call(this, "hasMoreElements_1", [l_enumeration]) }, fn() {
            jr.call(l_basic_array_list, "add_1", [jr.call(this, "nextElement_1", [l_enumeration])])
            Nil
        })
    jr.call(l_basic_array_list, "toArray_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "EnumerationUtil",
        "org.allbinary.util.EnumerationUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("hasMoreElements_1", ["Enumeration"], False, c1_m3__hasmoreelements), 
            jr.Method("nextElement_1", ["Enumeration"], False, c1_m4__nextelement), 
            jr.Method("getAsArray_1", ["Enumeration"], False, c1_m5__getasarray), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

