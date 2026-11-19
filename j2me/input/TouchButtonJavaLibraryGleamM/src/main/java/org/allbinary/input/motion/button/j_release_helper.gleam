// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ReleaseHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__release(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input, l_device_id] = jargs
    let l_device_id = jr.as_i(l_device_id)
        let l_next_touch_button_input = jr.cell(jr.JNull)
        let l_game_key_event = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(jr.get_field(jr.get_field(this, "touchButtonRecognizer"), "currentlyPressedTouchButtonSingleton"), "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_next_touch_button_input, jr.call(jr.get_field(jr.get_field(this, "touchButtonRecognizer"), "currentlyPressedTouchButtonSingleton"), "get_1", [jr.get(l_index)]))
            jr.set(l_game_key_event, jr.call(jr.get(l_next_touch_button_input), "getGameKeyEvent_0", []))
            jr.call(jr.get_field(jr.get_field(this, "touchButtonRecognizer"), "upGameKeyEventHandler"), "fireEvent_1", [jr.get(l_game_key_event)])
            jr.call(jr.call(jr.get_field(jr.get_field(this, "touchButtonRecognizer"), "upGameKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEvent_1", [jr.get(l_game_key_event)])
            jr.call(jr.get_field(jr.get_field(this, "touchButtonRecognizer"), "currentlyPressedTouchButtonSingleton"), "removeAt_1", [jr.get(l_index)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_recognizer] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "touchButtonRecognizer", l_touch_button_recognizer)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ReleaseHelper",
        "org.allbinary.input.motion.button.ReleaseHelper",
        "Object",
        [],
        False,
        [#("touchButtonRecognizer", jr.JNull)],
        [],
        [
            jr.Method("release_2", ["TouchButtonInput", "int"], False, c1_m3__release), 
            jr.Method("jinit_1", ["TouchButtonRecognizer"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

