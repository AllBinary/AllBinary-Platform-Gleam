// Generated Code Do Not Modify
// package org.allbinary.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformRecordIdUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "PLATFORM_SHORT_NAME", jr.JStr("JME"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlatformRecordIdUtil", "instance", jr.new("PlatformRecordIdUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PlatformRecordIdUtil", "instance")
}

fn c1_m4__getrecordid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_base_record_id] = jargs
    jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call(l_abe_client_information, "toShortString_0", [])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "UNDERSCORE")]), "append_1", [jr.get_field(this, "PLATFORM_SHORT_NAME")]), "append_1", [l_base_record_id]), "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformRecordIdUtil",
        "org.allbinary.persistance.PlatformRecordIdUtil",
        "Object",
        [],
        False,
        [#("PLATFORM_SHORT_NAME", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getRecordId_2", ["AbeClientInformationInterface", "String"], False, c1_m4__getrecordid), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

