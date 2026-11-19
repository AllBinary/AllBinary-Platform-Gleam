// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item.validation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllCommandsVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "TRUE")
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Visitor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllCommandsVisitor",
        "org.allbinary.graphics.form.item.validation.AllCommandsVisitor",
        "Visitor",
        [],
        False,
        [],
        [],
        [
            jr.Method("visit_1", ["Object"], False, c1_m2__visit), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

