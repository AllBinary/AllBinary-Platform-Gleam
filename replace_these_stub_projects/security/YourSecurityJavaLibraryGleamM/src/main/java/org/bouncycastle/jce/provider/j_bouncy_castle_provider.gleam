// Generated Code Do Not Modify
// package org.bouncycastle.jce.provider
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BouncyCastleProvider

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setparameter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_parameter_name, l_parameter] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("Provider", this, [jr.get_static("BouncyCastleProvider", "PROVIDER_NAME"), jr.JDouble(1.41), jr.get_static("BouncyCastleProvider", "info")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BouncyCastleProvider",
        "org.bouncycastle.jce.provider.BouncyCastleProvider",
        "Provider",
        [],
        False,
        [],
        [#("info", jr.JStr("BouncyCastle Security Provider v1.41")), #("PROVIDER_NAME", jr.JStr("BC"))],
        [
            jr.Method("setParameter_2", ["String", "Object"], False, c1_m4__setparameter), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

