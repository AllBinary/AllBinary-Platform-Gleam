// Generated Code Do Not Modify
// package org.allbinary.game.input.motion.action
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyCompleteMotionGestureInputEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameKey", jr.get_static("GameKey", "NULL_GAME_KEY"))
    jr.set_field(this, "gameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m5__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m6__setgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.set_field(this, "gameKeyEvent", l_game_key_event)
    jr.JNull
}

fn c1_m7__getgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameKeyEvent")
}

fn c1_m8__setgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key] = jargs
        jr.set_field(this, "gameKey", l_game_key)
    jr.JNull
}

fn c1_m9__getgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameKey")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_motion_gesture_input, l_input_to_game_key_mapping] = jargs
        jr.super_init("CompleteMotionGestureInputEvent", this, [l_name, l_motion_gesture_input])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyCompleteMotionGestureInputEvent",
        "org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent",
        "CompleteMotionGestureInputEvent",
        ["GameKeyEventSourceInterface"],
        False,
        [#("gameKey", jr.JNull), #("gameKeyEvent", jr.JNull)],
        [],
        [
            jr.Method("getSourceId_0", [], False, c1_m4__getsourceid), 
            jr.Method("update_0", [], False, c1_m5__update), 
            jr.Method("setGameKeyEvent_1", ["GameKeyEvent"], False, c1_m6__setgamekeyevent), 
            jr.Method("getGameKeyEvent_0", [], False, c1_m7__getgamekeyevent), 
            jr.Method("setGameKey_1", ["GameKey"], False, c1_m8__setgamekey), 
            jr.Method("getGameKey_0", [], False, c1_m9__getgamekey), 
            jr.Method("jinit_3", ["String", "MotionGestureInput", "InputToGameKeyMapping"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

