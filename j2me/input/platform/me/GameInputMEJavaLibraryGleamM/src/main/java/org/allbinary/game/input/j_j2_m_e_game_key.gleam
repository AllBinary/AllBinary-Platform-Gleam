// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class J2MEGameKey

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("J2MEGameKey: ")]), "append_1", [jr.call_super("Input", this, "toString_0", [])]), "toString_0", [])
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
    let assert [l_key, l_key_name] = jargs
    let l_key = jr.as_i(l_key)
        jr.super_init("Input", this, [l_key, l_key_name])
        c1_jfields(this)
        let l_id = jr.as_i(jr.call_inherited(this, "J2MEGameKey", "getId_0", []))
        case jr.truth(jr.ge(l_id, jr.JInt(0))) {
            True -> {
            let l_input_factory = jr.call_static("InputFactory", "getInstance_0", [])
            jr.call(l_input_factory, "add_2", [l_id, this])
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "J2MEGameKey",
        "org.allbinary.game.input.J2MEGameKey",
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

