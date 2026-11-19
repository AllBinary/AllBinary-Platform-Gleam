// Generated Code Do Not Modify
// package org.allbinary.logic.util.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryEventObject

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryEventObject", "NULL_EVENT", jr.new("AllBinaryEventObject", [jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")]))
    jr.JNull
}

fn c1_m4__getsource(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "source")
}

fn c1_m5__setsource(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source] = jargs
        jr.set_field(this, "source", l_source)
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "source", l_any_type)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryEventObject",
        "org.allbinary.logic.util.event.AllBinaryEventObject",
        "Object",
        [],
        False,
        [#("source", jr.JNull)],
        [#("NULL_EVENT", jr.JNull)],
        [
            jr.Method("getSource_0", [], False, c1_m4__getsource), 
            jr.Method("setSource_1", ["Object"], False, c1_m5__setsource), 
            jr.Method("jinit_1", ["Object"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

