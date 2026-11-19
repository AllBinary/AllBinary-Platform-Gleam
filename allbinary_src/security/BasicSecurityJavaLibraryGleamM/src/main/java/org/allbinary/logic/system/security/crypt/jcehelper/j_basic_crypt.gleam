// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt.jcehelper
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicCrypt

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "byteUtil", jr.call_static("ByteUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__encrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.call(this, "mutilate_1", [l_array]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.JStr("Encrypt Failed"), this, jr.JStr("encrypt"), l_e])
            jr.ret(jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m5__decrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.call(this, "mutilate_1", [l_array]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.JStr("decrypt Failed"), this, jr.JStr("decrypt"), l_e])
            jr.ret(jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m6__mutilate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    let l_array = jr.cell(l_array)
        let l_value = jr.cell(jr.as_b(jr.JByte(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(jr.get_field(this, "key"))) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_value, jr.as_b(jr.aget(jr.get_field(this, "key"), jr.get(l_index))))
            jr.set(l_array, jr.call(jr.get_field(this, "byteUtil"), "xor_2", [jr.get(l_array), jr.get(l_value)]))
            Nil
        })
            Nil
        }
    jr.get(l_array)
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_as_string] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_key = jr.cell(jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY"))
        jr.try_catch(fn() {
            jr.set(l_key, jr.call(jr.call_static("TsUtil", "getInstance_0", []), "getByteArray_1", [l_key_as_string]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("AbCrypt(alg,key)"), l_e])
            Nil
        } })], fn() { Nil })
        jr.set_field(this, "key", jr.get(l_key))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicCrypt",
        "org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt",
        "Object",
        ["CryptInterface"],
        False,
        [#("byteUtil", jr.JNull), #("key", jr.JNull)],
        [],
        [
            jr.Method("encrypt_1", ["byteArr"], False, c1_m4__encrypt), 
            jr.Method("decrypt_1", ["byteArr"], False, c1_m5__decrypt), 
            jr.Method("mutilate_1", ["byteArr"], False, c1_m6__mutilate), 
            jr.Method("jinit_1", ["String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

