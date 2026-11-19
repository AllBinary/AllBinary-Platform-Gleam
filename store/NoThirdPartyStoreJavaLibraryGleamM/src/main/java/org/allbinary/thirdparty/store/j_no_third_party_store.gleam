// Generated Code Do Not Modify
// package org.allbinary.thirdparty.store
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoThirdPartyStore

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__authorize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_client_information_interface] = jargs
        jr.call_inherited(this, "NoThirdPartyStore", "setAuthorized_1", [jr.JBool(True)])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("ThirdPartyStore", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoThirdPartyStore",
        "org.allbinary.thirdparty.store.NoThirdPartyStore",
        "ThirdPartyStore",
        [],
        False,
        [],
        [],
        [
            jr.Method("authorize_1", ["AbeClientInformationInterface"], False, c1_m2__authorize), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

