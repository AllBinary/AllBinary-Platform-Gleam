// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt.jcehelper
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbCrypt

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "secretComposite", jr.get_static("BaseSecretComposite", "NULL_SECRET_COMPOSITE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_as_string] = jargs
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.try_catch(fn() {
            jr.try_catch(fn() {
                jr.call_static("Security", "addProvider_1", [jr.new("BouncyCastleProvider", [])])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "INIT"), l_e])
                Nil
            } })], fn() { Nil })
            let l_key = jr.call(jr.get_field(this, "tsUtil"), "getByteArray_1", [l_key_as_string])
            let l_key_spec = jr.call(jr.call_static("KeySpecFactory", "getInstance_0", []), "getInstance_2", [jr.get_field(this, "algorithm"), l_key])
            let l_key_factory = jr.call_static("SecretKeyFactory", "getInstance_1", [jr.get_field(this, "algorithm")])
            let l_secret_key = jr.call(l_key_factory, "generateSecret_1", [l_key_spec])
            let l_cipher = jr.call_static("Cipher", "getInstance_1", [jr.get_field(this, "algorithm")])
            jr.set_field(this, "secretComposite", jr.new("SecretComposite", [l_secret_key, l_cipher, l_key]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.JStr("init Failed"), this, jr.get_field(l_common_strings, "INIT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m6__encrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.call(jr.get_field(this, "secretComposite"), "encrypt_1", [l_array]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.JStr("Encrypt Failed"), this, jr.JStr("encrypt"), l_e])
            jr.ret(jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m7__decrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.call(jr.get_field(this, "secretComposite"), "decrypt_1", [l_array]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.JStr("decrypt Failed"), this, jr.JStr("decrypt"), l_e])
            jr.ret(jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_algorithm] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "algorithm", l_algorithm)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbCrypt",
        "org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt",
        "Object",
        ["CryptInterface"],
        False,
        [#("tsUtil", jr.JNull), #("secretComposite", jr.JNull), #("algorithm", jr.JNull)],
        [],
        [
            jr.Method("init_1", ["String"], False, c1_m5__init), 
            jr.Method("encrypt_1", ["byteArr"], False, c1_m6__encrypt), 
            jr.Method("decrypt_1", ["byteArr"], False, c1_m7__decrypt), 
            jr.Method("jinit_1", ["String"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

