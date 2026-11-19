// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PopupCommandFormInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__processinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
    jr.as_i(jr.call_super("CommandFormInputProcessor", this, "processInput_1", [l_key]))
}

fn c1_m3__processmotioninput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event] = jargs
        jr.call_super("CommandFormInputProcessor", this, "processMotionInput_1", [l_motion_gesture_event])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event_list, l_player_input_id, l_game_canvas, l_form, l_popup_menu_input_processor] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.super_init("CommandFormInputProcessor", this, [l_game_key_event_list, l_player_input_id, l_game_canvas, l_form])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PopupCommandFormInputProcessor",
        "org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor",
        "CommandFormInputProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("processInput_1", ["int"], False, c1_m2__processinput), 
            jr.Method("processMotionInput_1", ["MotionGestureEvent"], False, c1_m3__processmotioninput), 
            jr.Method("jinit_5", ["BasicArrayList", "int", "MyCanvas", "ScrollSelectionForm", "PopupMenuInputProcessor"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

