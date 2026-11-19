// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImmutableBasicArrayList

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_e] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(this, "name"), this])
    jr.JBool(True)
}

fn c1_m4__addat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_element] = jargs
    let l_index = jr.as_i(l_index)
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(this, "name"), this])
    jr.JNull
}

fn c1_m5__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_size] = jargs
    let l_size = jr.as_i(l_size)
        jr.super_init("BasicArrayListS", this, [l_size])
        c1_jfields(this)
        jr.set_field(this, "name", l_name)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImmutableBasicArrayList",
        "org.allbinary.util.ImmutableBasicArrayList",
        "BasicArrayListS",
        [],
        False,
        [#("name", jr.JNull)],
        [],
        [
            jr.Method("add_1", ["Object"], False, c1_m3__add), 
            jr.Method("addAt_2", ["int", "Object"], False, c1_m4__addat), 
            jr.Method("toString_0", [], False, c1_m5__tostring), 
            jr.Method("jinit_2", ["String", "int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

