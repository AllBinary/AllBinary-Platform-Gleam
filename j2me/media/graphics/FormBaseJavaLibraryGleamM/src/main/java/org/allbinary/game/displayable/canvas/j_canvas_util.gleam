// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CanvasUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getkeyname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
    jr.method(fn() {
            let l_common_phone_strings = jr.call_static("CommonPhoneStrings", "getInstance_0", [])
            case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "UP"))) {
            True -> {
            jr.ret(jr.get_field(l_common_phone_strings, "UP"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "DOWN"))) {
            True -> {
            jr.ret(jr.get_field(l_common_phone_strings, "DOWN"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "RIGHT"))) {
            True -> {
            jr.ret(jr.get_field(l_common_phone_strings, "RIGHT"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "LEFT"))) {
            True -> {
            jr.ret(jr.get_field(l_common_phone_strings, "LEFT"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_key, jr.get_static("Canvas", "FIRE"))) {
            True -> {
            jr.ret(jr.get_field(l_common_phone_strings, "FIRE"))
            Nil
        }
            False -> Nil
        }
        }
        }
        }
        }
            jr.ret(jr.JStr("UNKNOWN KEY"))
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CanvasUtil",
        "org.allbinary.game.displayable.canvas.CanvasUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getKeyName_1", ["int"], True, c1_m2__getkeyname), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

