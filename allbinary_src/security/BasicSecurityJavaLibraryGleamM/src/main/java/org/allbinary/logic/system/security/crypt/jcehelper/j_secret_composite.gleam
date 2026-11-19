// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt.jcehelper
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SecretComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "byteUtil", jr.call_static("ByteUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__encrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    let l_array = jr.cell(l_array)
        jr.set(l_array, jr.call(this, "mutilate_1", [jr.get(l_array)]))
        jr.call(jr.get_field(this, "cipher"), "init_2", [jr.get_static("Cipher", "ENCRYPT_MODE"), jr.get_field(this, "secretKey")])
    jr.call(jr.get_field(this, "cipher"), "doFinal_1", [jr.get(l_array)])
}

fn c1_m7__decrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
        jr.call(jr.get_field(this, "cipher"), "init_2", [jr.get_static("Cipher", "DECRYPT_MODE"), jr.get_field(this, "secretKey")])
    jr.call(this, "mutilate_1", [jr.call(jr.get_field(this, "cipher"), "doFinal_1", [l_array])])
}

fn c1_m8__mutilate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    let l_array = jr.cell(l_array)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(jr.get_field(this, "key"))) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_value = jr.as_b(jr.aget(jr.get_field(this, "key"), jr.get(l_index)))
            case jr.truth(case jr.truth(jr.lt(jr.to_i(l_value), jr.JInt(8))) { True -> jr.gt(jr.to_i(l_value), jr.JInt(0)) False -> jr.JBool(False) }) {
                True -> {
                jr.set(l_array, jr.call(jr.get_field(this, "byteUtil"), "xorByte_2", [jr.get(l_array), jr.to_i(l_value)]))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.get(l_array)
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_secret_key, l_cipher, l_key] = jargs
    jr.super_init("BaseSecretComposite", this, [])
    c1_jfields(this)
        jr.set_field(this, "secretKey", l_secret_key)
        jr.set_field(this, "cipher", l_cipher)
        jr.set_field(this, "key", l_key)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SecretComposite",
        "org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite",
        "BaseSecretComposite",
        [],
        False,
        [#("byteUtil", jr.JNull), #("cipher", jr.JNull), #("secretKey", jr.JNull), #("key", jr.JNull)],
        [],
        [
            jr.Method("encrypt_1", ["byteArr"], False, c1_m6__encrypt), 
            jr.Method("decrypt_1", ["byteArr"], False, c1_m7__decrypt), 
            jr.Method("mutilate_1", ["byteArr"], False, c1_m8__mutilate), 
            jr.Method("jinit_3", ["SecretKey", "Cipher", "byteArr"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

