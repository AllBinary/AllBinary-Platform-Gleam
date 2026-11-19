// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CancelTouchButtonInputFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "cancelInputArray", jr.new_array("L", 1, [jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CancelTouchButtonInputFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("CancelTouchButtonInputFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("CancelTouchButtonInputFactory", "instance", jr.new("CancelTouchButtonInputFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("CancelTouchButtonInputFactory", "instance")
}

fn c1_m5__getcancel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
    jr.aget(jr.get_field(this, "cancelInputArray"), jr.call(l_touch_button_input, "getId_0", []))
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_basic_touch_input_factory = jr.call_static("BasicTouchInputFactory", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "cancelInputArray")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "cancelInputArray"), jr.get(l_index), jr.get_field(l_basic_touch_input_factory, "NONE"))
            Nil
        })
            Nil
        }
        jr.aset(jr.get_field(this, "cancelInputArray"), jr.call(jr.get_field(l_basic_touch_input_factory, "UP"), "getId_0", []), jr.get_field(l_basic_touch_input_factory, "DOWN"))
        jr.aset(jr.get_field(this, "cancelInputArray"), jr.call(jr.get_field(l_basic_touch_input_factory, "DOWN"), "getId_0", []), jr.get_field(l_basic_touch_input_factory, "UP"))
        jr.aset(jr.get_field(this, "cancelInputArray"), jr.call(jr.get_field(l_basic_touch_input_factory, "LEFT"), "getId_0", []), jr.get_field(l_basic_touch_input_factory, "RIGHT"))
        jr.aset(jr.get_field(this, "cancelInputArray"), jr.call(jr.get_field(l_basic_touch_input_factory, "RIGHT"), "getId_0", []), jr.get_field(l_basic_touch_input_factory, "LEFT"))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CancelTouchButtonInputFactory",
        "org.allbinary.input.motion.button.CancelTouchButtonInputFactory",
        "Object",
        [],
        False,
        [#("cancelInputArray", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getCancel_1", ["TouchButtonInput"], False, c1_m5__getcancel), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

