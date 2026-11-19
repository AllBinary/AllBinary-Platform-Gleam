// Generated Code Do Not Modify
// package org.allbinary.logic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABSystemWrapper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ABSystemWrapper", "instance", jr.new("ABSystemWrapper", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ABSystemWrapper", "instance")
}

fn c1_m3__arraycopy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_src, l_src_pos, l_dest, l_dest_pos, l_length] = jargs
    let l_src_pos = jr.as_i(l_src_pos)
    let l_dest_pos = jr.as_i(l_dest_pos)
    let l_length = jr.as_i(l_length)
        jr.call_static("System", "arraycopy_5", [l_src, l_src_pos, l_dest, l_dest_pos, l_length])
    jr.JNull
}

fn c1_m4__currenttimemillis(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.call_static("System", "currentTimeMillis_0", []))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABSystemWrapper",
        "org.allbinary.logic.ABSystemWrapper",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("arraycopy_5", ["Object", "int", "Object", "int", "int"], False, c1_m3__arraycopy), 
            jr.Method("currentTimeMillis_0", [], False, c1_m4__currenttimemillis), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

