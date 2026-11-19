// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ClientInformationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(l_log_util, "putF_3", [jr.get_field(l_common_strings, "NOT_IMPLEMENTED"), this, jr.get_field(l_common_strings, "GET_INSTANCE")])
        let l_string_util = jr.call_static("StringUtil", "getInstance_0", [])
    jr.new("ClientInformation", [jr.get_field(l_string_util, "NULL_STRING"), jr.get_field(l_string_util, "NULL_STRING"), jr.get_field(l_string_util, "NULL_STRING"), jr.get_field(l_string_util, "NULL_STRING")])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ClientInformationFactory",
        "org.allbinary.logic.system.security.licensing.ClientInformationFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_0", [], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

