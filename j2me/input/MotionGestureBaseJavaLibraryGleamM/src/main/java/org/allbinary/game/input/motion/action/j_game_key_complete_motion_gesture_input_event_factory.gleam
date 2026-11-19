// Generated Code Do Not Modify
// package org.allbinary.game.input.motion.action
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyCompleteMotionGestureInputEventFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "eventList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameKeyCompleteMotionGestureInputEventFactory", "SINGLETON", jr.new("GameKeyCompleteMotionGestureInputEventFactory", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameKeyCompleteMotionGestureInputEventFactory", "SINGLETON")
}

fn c1_m5__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_complete_motion_gesture_input_event] = jargs
        jr.call(jr.get_field(this, "eventList"), "add_1", [l_game_key_complete_motion_gesture_input_event])
    jr.JNull
}

fn c1_m6__updateall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "appendint_1", [jr.call(jr.get_field(this, "eventList"), "size_0", [])]), "toString_0", []), this, jr.JStr("updateAll")])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(jr.get_field(this, "eventList"), "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_game_key_complete_motion_gesture_input_event = jr.aget(jr.get_field(jr.get_field(this, "eventList"), "objectArray"), jr.get(l_index))
            jr.call(l_game_key_complete_motion_gesture_input_event, "update_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyCompleteMotionGestureInputEventFactory",
        "org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("eventList", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("add_1", ["GameKeyCompleteMotionGestureInputEvent"], False, c1_m5__add), 
            jr.Method("updateAll_0", [], False, c1_m6__updateall), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

