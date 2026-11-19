// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WeakCrypt

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "abCrypt", jr.new("AbCrypt", [jr.get_field(jr.call_static("KeySpecFactory", "getInstance_0", []), "DES")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("WeakCrypt", "keys", jr.array_of("L", [jr.JStr("qwres6qewrupoi1132790jfahleavi89398"), jr.JStr("143uk32lngf8675gt1tv9214uvt924ut9u9"), jr.JStr("12kvjlvlkv11445v12951v512v9m51295v1"), jr.JStr("gampipoiupg4g43y5u238tu2485u20u0932"), jr.JStr("a93u5uu02s2d2g3259u4395u409u093u9vu"), jr.JStr("nlkxzj90je3mln9l8l89qjf0j3v50j23r9j"), jr.JStr("2lk5fn5j23nr8f0233vq35n23jn58vhy843"), jr.JStr("9q24334m598t092tkn2iv0982456n425j9g"), jr.JStr("5m9uvmt9436243m5v34g09d43i52ki35g99"), jr.JStr("n123lr1iubiu2br32lv32rbu23b32ub2rlb"), jr.JStr("va0u0iovji2ojpvj2oij22poiu4ov2uv28v"), jr.JStr("bkk80gn2v9uc902340ut209pcup0u09utc9"), jr.JStr("mn32m32neee23c42fn32nf3mf2n3fn2m3fm"), jr.JStr("zcxpozo3423voizupovsijevnv3n33o33n3"), jr.JStr("v0345324thv93h03893893vh893v8h3vhzz"), jr.JStr("v8na898v8wyef9ty39yv98yaw39yeeyf8ye"), jr.JStr("45zd36d34jg09434hfshp8uj9sy8s7cyr78"), jr.JStr("b098yy0908vdvh983b2lb327980a76s5e5e"), jr.JStr("v90y9v9p8y3r98pagsdgsagyr6y3985yhfh"), jr.JStr("vblkzhhzp8yvzi8u4t9856456zy3rv8a388"), jr.JStr("da7696023rgf28dssfa98asd879hg32hewe"), jr.JStr("afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf"), jr.JStr("4gijvqo8vq984hv984hj5j3511h832hf833")]))
    jr.set_static("WeakCrypt", "KEYMAX", jr.as_i(jr.alen(jr.get_static("WeakCrypt", "keys"))))
    jr.JNull
}

fn c1_m6__encrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_crypted = jr.call(jr.get_field(this, "abCrypt"), "encrypt_1", [jr.call(jr.get_field(this, "tsUtil"), "getByteArray_1", [l_value])])
            jr.ret(jr.call_static("DatabaseEncoder", "encode_1", [l_crypted]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.JStr("Encrypt Failed"), this, jr.JStr("encrypt"), l_e])
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m7__decrypt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_decrypted = jr.call(jr.get_field(this, "abCrypt"), "decrypt_1", [jr.call_static("DatabaseEncoder", "decode_1", [l_value])])
            jr.ret(jr.new("String", [l_decrypted]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.JStr("decrypt Failed"), this, jr.JStr("decrypt"), l_e])
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "abCrypt"), "init_1", [jr.aget(jr.get_static("WeakCrypt", "keys"), l_key)])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("SuperCrypt(key)"), l_e])
            Nil
        } })], fn() { Nil })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WeakCrypt",
        "org.allbinary.logic.system.security.crypt.WeakCrypt",
        "Object",
        [],
        False,
        [#("tsUtil", jr.JNull), #("abCrypt", jr.JNull)],
        [#("keys", jr.JNull), #("KEYMAX", jr.JInt(0))],
        [
            jr.Method("encrypt_1", ["String"], False, c1_m6__encrypt), 
            jr.Method("decrypt_1", ["String"], False, c1_m7__decrypt), 
            jr.Method("jinit_1", ["int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

