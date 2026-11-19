// Generated Code Do Not Modify
// package org.allbinary.thirdparty.store
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThirdPartyMessageFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "AUTHORIZED", jr.JStr("Authorized"))
    jr.set_field(this, "NOT_AUTHORIZED", jr.JStr("Not Authorized"))
    jr.set_field(this, "LINKAGE_ERROR", jr.JStr("Linkage Error"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ThirdPartyMessageFactory", "instance", jr.new("ThirdPartyMessageFactory", []))
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ThirdPartyMessageFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThirdPartyMessageFactory",
        "org.allbinary.thirdparty.store.ThirdPartyMessageFactory",
        "Object",
        [],
        False,
        [#("AUTHORIZED", jr.JNull), #("NOT_AUTHORIZED", jr.JNull), #("LINKAGE_ERROR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

