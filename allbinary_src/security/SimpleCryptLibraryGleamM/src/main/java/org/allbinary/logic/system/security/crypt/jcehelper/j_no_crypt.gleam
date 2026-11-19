// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt.jcehelper
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoCrypt

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__encrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    l_array
}

fn c1_m2__decrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    l_array
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoCrypt",
        "org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt",
        "Object",
        ["CryptInterface"],
        False,
        [],
        [],
        [
            jr.Method("encrypt_1", ["byteArr"], False, c1_m1__encrypt), 
            jr.Method("decrypt_1", ["byteArr"], False, c1_m2__decrypt), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

