// Generated Code Do Not Modify
// package org.allbinary.logic.util.visitor
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Visitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "nullUtil", jr.call_static("NullUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Visitor", "instance", jr.new("Visitor", []))
    jr.JNull
}

fn c1_m3__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.get_field(jr.get_field(this, "nullUtil"), "NULL_OBJECT")
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("Visitor", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Visitor",
        "org.allbinary.logic.util.visitor.Visitor",
        "Object",
        ["VisitorInterface"],
        False,
        [#("nullUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("visit_1", ["Object"], False, c1_m3__visit), 
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

