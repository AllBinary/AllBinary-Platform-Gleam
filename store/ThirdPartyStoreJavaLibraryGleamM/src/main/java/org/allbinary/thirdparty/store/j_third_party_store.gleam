// Generated Code Do Not Modify
// package org.allbinary.thirdparty.store
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThirdPartyStore

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__authorize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_client_information_interface] = jargs
    jr.JNull
}

fn c1_m5__isauthorized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "authorized")
}

fn c1_m6__setauthorized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_authorized] = jargs
        jr.set_field(this, "authorized", l_authorized)
    jr.JNull
}

fn c1_m7__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThirdPartyStore",
        "org.allbinary.thirdparty.store.ThirdPartyStore",
        "Object",
        [],
        False,
        [#("authorized", jr.JBool(False)), #("name", jr.JNull)],
        [],
        [
            jr.Method("authorize_1", ["AbeClientInformationInterface"], False, c1_m4__authorize), 
            jr.Method("isAuthorized_0", [], False, c1_m5__isauthorized), 
            jr.Method("setAuthorized_1", ["boolean"], False, c1_m6__setauthorized), 
            jr.Method("getName_0", [], False, c1_m7__getname), 
            jr.Method("jinit_1", ["String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

