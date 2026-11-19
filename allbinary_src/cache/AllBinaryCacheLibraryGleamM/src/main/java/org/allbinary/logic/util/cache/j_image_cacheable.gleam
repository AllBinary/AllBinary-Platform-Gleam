// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageCacheable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m4__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_any_type] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageCacheable",
        "org.allbinary.logic.util.cache.ImageCacheable",
        "Object",
        [],
        False,
        [#("name", jr.JNull)],
        [],
        [
            jr.Method("getKey_0", [], False, c1_m3__getkey), 
            jr.Method("toString_0", [], False, c1_m4__tostring), 
            jr.Method("jinit_2", ["String", "Object"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

