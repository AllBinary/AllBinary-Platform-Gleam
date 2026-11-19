// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicMenuInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "motionGestureEventList", jr.new("BasicArrayListD", []))
    jr.set_field(this, "canvas", jr.get_static("NullCanvas", "NULL_CANVAS"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__onmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event] = jargs
        jr.call(jr.get_field(this, "motionGestureEventList"), "add_1", [l_motion_gesture_event])
    jr.JNull
}

fn c1_m5__onscrolledmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event] = jargs
    jr.JNull
}

fn c1_m6__setcanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas] = jargs
        jr.set_field(this, "canvas", l_canvas)
    jr.JNull
}

fn c1_m7__getcanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "canvas")
}

fn c1_m8__processinputlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event_list, l_player_input_id, l_game_canvas] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.super_init("PlayerGameInput", this, [l_game_key_event_list, jr.new("BasicArrayListD", []), l_player_input_id])
        c1_jfields(this)
        jr.set_field(this, "canvas", l_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicMenuInputProcessor",
        "org.allbinary.game.displayable.canvas.BasicMenuInputProcessor",
        "PlayerGameInput",
        ["BaseMotionGestureEventListener"],
        False,
        [#("motionGestureEventList", jr.JNull), #("canvas", jr.JNull)],
        [],
        [
            jr.Method("onMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m4__onmotiongestureevent), 
            jr.Method("onScrolledMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m5__onscrolledmotiongestureevent), 
            jr.Method("setCanvas_1", ["MyCanvas"], False, c1_m6__setcanvas), 
            jr.Method("getCanvas_0", [], False, c1_m7__getcanvas), 
            jr.Method("processInputList_0", [], False, c1_m8__processinputlist), 
            jr.Method("jinit_3", ["BasicArrayList", "int", "Canvas"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

