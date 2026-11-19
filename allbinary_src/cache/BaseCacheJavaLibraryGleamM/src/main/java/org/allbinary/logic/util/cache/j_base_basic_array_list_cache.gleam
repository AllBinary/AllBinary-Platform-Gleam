// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseBasicArrayListCache

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__log(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("S: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get_field(this, "list"), "size_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseBasicArrayListCache",
        "org.allbinary.logic.util.cache.BaseBasicArrayListCache",
        "Object",
        [],
        False,
        [#("list", jr.JNull)],
        [],
        [
            jr.Method("log_0", [], False, c1_m2__log), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

