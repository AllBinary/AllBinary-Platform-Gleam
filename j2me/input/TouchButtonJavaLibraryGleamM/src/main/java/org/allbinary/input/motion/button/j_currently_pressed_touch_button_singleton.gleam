// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CurrentlyPressedTouchButtonSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CurrentlyPressedTouchButtonSingleton", "instance", jr.new("CurrentlyPressedTouchButtonSingleton", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CurrentlyPressedTouchButtonSingleton", "instance")
}

fn c1_m5__size(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
}

fn c1_m6__removeat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.call(jr.get_field(this, "list"), "removeAt_1", [l_index])
}

fn c1_m7__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
    jr.call(jr.get_field(this, "list"), "remove_1", [l_touch_button_input])
}

fn c1_m8__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), l_index)
}

fn c1_m9__contains(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
    jr.call(jr.get_field(this, "list"), "contains_1", [l_touch_button_input])
}

fn c1_m10__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_touch_button_input])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CurrentlyPressedTouchButtonSingleton",
        "org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton",
        "Object",
        [],
        False,
        [#("list", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("size_0", [], False, c1_m5__size), 
            jr.Method("removeAt_1", ["int"], False, c1_m6__removeat), 
            jr.Method("remove_1", ["TouchButtonInput"], False, c1_m7__remove), 
            jr.Method("get_1", ["int"], False, c1_m8__get), 
            jr.Method("contains_1", ["TouchButtonInput"], False, c1_m9__contains), 
            jr.Method("add_1", ["TouchButtonInput"], False, c1_m10__add), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

