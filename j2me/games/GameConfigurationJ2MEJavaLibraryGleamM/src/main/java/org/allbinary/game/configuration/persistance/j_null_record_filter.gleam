// Generated Code Do Not Modify
// package org.allbinary.game.configuration.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullRecordFilter

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullRecordFilter", "NULL_RECORD_FILTER", jr.new("NullRecordFilter", []))
    jr.JNull
}

fn c1_m2__matches(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_candidate] = jargs
    jr.JBool(True)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullRecordFilter",
        "org.allbinary.game.configuration.persistance.NullRecordFilter",
        "Object",
        ["RecordFilter"],
        False,
        [],
        [#("NULL_RECORD_FILTER", jr.JNull)],
        [
            jr.Method("matches_1", ["byteArr"], False, c1_m2__matches), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

