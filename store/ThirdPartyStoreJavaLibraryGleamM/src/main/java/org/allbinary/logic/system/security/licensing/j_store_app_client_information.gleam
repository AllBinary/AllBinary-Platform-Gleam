// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StoreAppClientInformation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getlongarrayidentifier(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "longArrayIdentifier")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_version, l_special_name, l_short_name, l_long_array_identifier] = jargs
        jr.super_init("AbeClientInformation", this, [l_name, l_version, l_special_name, l_short_name])
        c1_jfields(this)
        jr.set_field(this, "longArrayIdentifier", l_long_array_identifier)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StoreAppClientInformation",
        "org.allbinary.logic.system.security.licensing.StoreAppClientInformation",
        "AbeClientInformation",
        ["LongArrayIdentifierInterface"],
        False,
        [#("longArrayIdentifier", jr.JNull)],
        [],
        [
            jr.Method("getLongArrayIdentifier_0", [], False, c1_m3__getlongarrayidentifier), 
            jr.Method("jinit_5", ["String", "String", "String", "String", "longArr"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

