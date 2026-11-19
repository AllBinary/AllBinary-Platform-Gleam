// Generated Code Do Not Modify
// package org.allbinary.game.input.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyEventFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "TOUCH_BUTTON_SOURCE_ID", jr.as_i(jr.JInt(2)))
    jr.set_field(this, "MOTION_GESTURE_SOURCE_ID", jr.as_i(jr.JInt(3)))
    jr.set_field(this, "MAX_SOURCES", jr.as_i(jr.JInt(4)))
    jr.set_field(this, "ARRAY", jr.new_array("L", 2, [jr.get_field(this, "MAX_SOURCES"), jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameKeyEventFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("GameKeyEventFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("GameKeyEventFactory", "instance", jr.new("GameKeyEventFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("GameKeyEventFactory", "instance")
}

fn c1_m9__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_null_util = jr.call_static("NullUtil", "getInstance_0", [])
        let l_size = jr.as_i(jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX"))
        {
            let l_index = jr.cell(jr.as_i(jr.get_field(this, "MAX_SOURCES")))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            {
                let l_index2 = jr.cell(jr.as_i(l_size))
                jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
                jr.aset(jr.aget(jr.get_field(this, "ARRAY"), jr.get(l_index)), jr.get(l_index2), jr.call_static("GameKeyEvent", "createEvent_3", [jr.get_field(l_null_util, "NULL_OBJECT"), jr.get(l_index), jr.get(l_index2)]))
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m10__getinstanceforkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_key] = jargs
    let l_key = jr.as_i(l_key)
        let l_game_key_event = jr.aget(jr.aget(jr.get_field(this, "ARRAY"), jr.call(l_any_type, "getSourceId_0", [])), l_key)
    l_game_key_event
}

fn c1_m11__getinstanceforinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_input] = jargs
        let l_game_key_event = jr.aget(jr.aget(jr.get_field(this, "ARRAY"), jr.call(l_any_type, "getSourceId_0", [])), jr.call(l_input, "getId_0", []))
    l_game_key_event
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyEventFactory",
        "org.allbinary.game.input.event.GameKeyEventFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("TOUCH_BUTTON_SOURCE_ID", jr.JInt(0)), #("MOTION_GESTURE_SOURCE_ID", jr.JInt(0)), #("MAX_SOURCES", jr.JInt(0)), #("ARRAY", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m9__init), 
            jr.Method("getInstanceForKey_2", ["GameKeyEventSourceInterface", "int"], False, c1_m10__getinstanceforkey), 
            jr.Method("getInstanceForInput_2", ["GameKeyEventSourceInterface", "Input"], False, c1_m11__getinstanceforinput), 
            jr.Method("jinit_0", [], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

