// Generated Code Do Not Modify
// package org.allbinary.logic.communication.http
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HttpData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "URL_LABEL", jr.JStr("Url: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HttpData", "instance", jr.new("HttpData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("HttpData", "instance")
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        jr.set_field(this, "EQUALS", jr.get_field(l_common_seps, "EQUALS"))
        jr.set_field(this, "PARAM_SEP", jr.get_field(l_common_seps, "AMPERSAND"))
        jr.set_field(this, "URL_PARAM_SEP", jr.get_field(l_common_seps, "QUESTION"))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HttpData",
        "org.allbinary.logic.communication.http.HttpData",
        "Object",
        [],
        False,
        [#("EQUALS", jr.JNull), #("PARAM_SEP", jr.JNull), #("URL_PARAM_SEP", jr.JNull), #("URL_LABEL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

