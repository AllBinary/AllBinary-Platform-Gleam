// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class J2MEGameInputMapping

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call(jr.get_inherited(this, "J2MEGameInputMapping", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "J2MEGameInputMapping", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "J2MEGameInputMapping", "commonStrings"), "INIT")])
        jr.call(jr.call_static("J2MEKeyFactory", "getInstance_0", []), "init_0", [])
        jr.call_super("PersistentInputMapping", this, "init_1", [l_abe_client_information])
        case jr.truth(case jr.truth(jr.eq(jr.call_inherited(this, "J2MEGameInputMapping", "getTotalMapped_0", []), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.call_inherited(this, "J2MEGameInputMapping", "isDefaultNew_0", []) }) {
            True -> {
            jr.call(jr.call_inherited(this, "J2MEGameInputMapping", "getInputMapping_0", []), "addMapping_1", [jr.call_inherited(this, "J2MEGameInputMapping", "getDefault_0", [])])
            jr.call_inherited(this, "J2MEGameInputMapping", "save_1", [l_abe_client_information])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m3__isdelete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(l_input, jr.get_field(jr.call_static("GameKeyFactory", "getInstance_0", []), "GAME_D"))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m4__issysteminput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input] = jargs
    jr.JBool(False)
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("PersistentInputMapping", this, [jr.get_field(jr.call_static("GamePersistanceStrings", "getInstance_0", []), "SAVED_INPUT_CONFIGURATION_RECORD_ID")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "J2MEGameInputMapping",
        "org.allbinary.game.input.J2MEGameInputMapping",
        "PersistentInputMapping",
        [],
        False,
        [],
        [],
        [
            jr.Method("init_1", ["AbeClientInformationInterface"], False, c1_m2__init), 
            jr.Method("isDelete_1", ["Input"], False, c1_m3__isdelete), 
            jr.Method("isSystemInput_1", ["Input"], False, c1_m4__issysteminput), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

