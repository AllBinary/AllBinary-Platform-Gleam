// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PCGameKey

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.concat(jr.JStr("PCGameKey: "), jr.call_super("Input", this, "toString_0", []))
}

fn c1_m3__getstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
    jr.method(fn() {
            let l_input = jr.call(jr.call_static("InputFactory", "getInstance_0", []), "getInstanceById_1", [l_key_code])
            case jr.truth(jr.ne(l_input, jr.JNull)) {
            True -> {
            jr.ret(jr.call(l_input, "getName_0", []))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_name] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.super_init("Input", this, [l_key_code, l_name])
        c1_jfields(this)
        let l_id = jr.as_i(jr.call_inherited(this, "PCGameKey", "getId_0", []))
        case jr.truth(jr.ge(l_id, jr.JInt(0))) {
            True -> {
            jr.call(jr.call_static("InputFactory", "getInstance_0", []), "add_2", [l_id, this])
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PCGameKey",
        "org.allbinary.game.input.PCGameKey",
        "Input",
        [],
        False,
        [],
        [],
        [
            jr.Method("toString_0", [], False, c1_m2__tostring), 
            jr.Method("getString_1", ["int"], True, c1_m3__getstring), 
            jr.Method("jinit_2", ["int", "String"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

