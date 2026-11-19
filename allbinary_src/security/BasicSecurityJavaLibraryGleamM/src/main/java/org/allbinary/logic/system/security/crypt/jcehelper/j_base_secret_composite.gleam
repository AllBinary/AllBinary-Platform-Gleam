// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt.jcehelper
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseSecretComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BaseSecretComposite", "NULL_SECRET_COMPOSITE", jr.new("BaseSecretComposite", []))
    jr.JNull
}

fn c1_m2__encrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY")
}

fn c1_m3__decrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseSecretComposite",
        "org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite",
        "Object",
        [],
        False,
        [],
        [#("NULL_SECRET_COMPOSITE", jr.JNull)],
        [
            jr.Method("encrypt_1", ["byteArr"], False, c1_m2__encrypt), 
            jr.Method("decrypt_1", ["byteArr"], False, c1_m3__decrypt), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

