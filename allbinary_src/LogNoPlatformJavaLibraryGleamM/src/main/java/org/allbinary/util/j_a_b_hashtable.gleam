// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABHashtable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initial_capacity] = jargs
    let l_initial_capacity = jr.as_i(l_initial_capacity)
        jr.super_init("Hashtable", this, [l_initial_capacity])
        c1_jfields(this)
    this
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("Hashtable", this, [])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABHashtable",
        "org.allbinary.util.ABHashtable",
        "Hashtable",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["int"], False, c1_jinit1), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

