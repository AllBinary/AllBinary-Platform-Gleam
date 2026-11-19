// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "KEY_CODE_LABEL", jr.JStr("KeyCode: "))
    jr.set_field(this, "DEVICE_ID_LABEL", jr.JStr("DeviceId: "))
    jr.set_field(this, "MAX", jr.as_i(jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getMin_0", [])))
    jr.set_field(this, "inputIntegerArray", jr.new_array("L", 1, [jr.get_field(this, "MAX")]))
    jr.set_field(this, "NO_INPUT", jr.new("Input", [jr.JInt(0), jr.get_field(jr.get_field(this, "commonStrings"), "UNKNOWN")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InputFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("InputFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("InputFactory", "instance", jr.new("InputFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("InputFactory", "instance")
}

fn c1_m11__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id, l_input] = jargs
    let l_id = jr.as_i(l_id)
        jr.aset(jr.get_field(this, "inputIntegerArray"), l_id, l_input)
    jr.JNull
}

fn c1_m12__getinstancebyid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id] = jargs
    let l_id = jr.cell(jr.as_i(l_id))
    jr.method(fn() {
            case jr.truth(jr.lt(jr.get(l_id), jr.JInt(0))) {
            True -> {
            jr.set(l_id, jr.as_i(jr.neg(jr.get(l_id))))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.gt(jr.get(l_id), jr.alen(jr.get_field(this, "inputIntegerArray")))) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Warning id: ")]), "appendint_1", [jr.get(l_id)]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET_INSTANCE")])
            jr.ret(jr.get_field(this, "NO_INPUT"))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.aget(jr.get_field(this, "inputIntegerArray"), jr.get(l_id)))
        jr.JNull
    })
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "inputIntegerArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "inputIntegerArray"), jr.get(l_index), jr.get_field(this, "NO_INPUT"))
            Nil
        })
            Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputFactory",
        "org.allbinary.game.input.InputFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("KEY_CODE_LABEL", jr.JNull), #("DEVICE_ID_LABEL", jr.JNull), #("MAX", jr.JInt(0)), #("inputIntegerArray", jr.JNull), #("NO_INPUT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("add_2", ["int", "Input"], False, c1_m11__add), 
            jr.Method("getInstanceById_1", ["int"], False, c1_m12__getinstancebyid), 
            jr.Method("jinit_0", [], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

