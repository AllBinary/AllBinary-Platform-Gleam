// Generated Code Do Not Modify
// package org.allbinary.game.configuration.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullRecordComparator

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullRecordComparator", "NULL_RECORD_COMPARATOR", jr.new("NullRecordComparator", []))
    jr.JNull
}

fn c1_m2__compare(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rec1, l_rec2] = jargs
    jr.as_i(jr.JInt(0))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullRecordComparator",
        "org.allbinary.game.configuration.persistance.NullRecordComparator",
        "Object",
        ["RecordComparator"],
        False,
        [],
        [#("NULL_RECORD_COMPARATOR", jr.JNull)],
        [
            jr.Method("compare_2", ["byteArr", "byteArr"], False, c1_m2__compare), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

