// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt.jcehelper
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KeySpecFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "DES", jr.JStr("DES"))
    jr.set_field(this, "DESEDE", jr.JStr("DESede"))
    jr.set_field(this, "BLOWFISH", jr.JStr("Blowfish"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("KeySpecFactory", "instance", jr.new("KeySpecFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("KeySpecFactory", "instance")
}

fn c1_m7__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_algorithm, l_key_data] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_ts_util = jr.call_static("TsUtil", "getInstance_0", [])
            case jr.truth(jr.eq(jr.call(l_ts_util, "compareTo_2", [l_algorithm, jr.get_field(this, "DES")]), jr.JInt(0))) {
                True -> {
                jr.ret(jr.new("DESKeySpec", [l_key_data]))
                Nil
            }
                False -> case jr.truth(jr.eq(jr.call(l_ts_util, "compareTo_2", [l_algorithm, jr.get_field(this, "DESEDE")]), jr.JInt(0))) {
                True -> {
                jr.ret(jr.new("DESedeKeySpec", [l_key_data]))
                Nil
            }
                False -> {
                jr.throw(jr.new("RuntimeException", []))
                Nil
            }
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "GET_INSTANCE"), l_e])
            jr.throw(jr.new("RuntimeException", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "KeySpecFactory",
        "org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory",
        "Object",
        [],
        False,
        [#("DES", jr.JNull), #("DESEDE", jr.JNull), #("BLOWFISH", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstance_2", ["String", "byteArr"], False, c1_m7__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

