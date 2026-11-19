// Generated Code Do Not Modify
// package org.allbinary.game.input.motion.action
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyCompleteMotionGestureInputEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameKeyEventFactory", jr.call_static("GameKeyEventFactory", "getInstance_0", []))
    jr.set_field(this, "SOURCE_ID", jr.as_i(jr.get_field(jr.get_field(this, "gameKeyEventFactory"), "MOTION_GESTURE_SOURCE_ID")))
    jr.set_field(this, "gameKey", jr.get_static("GameKey", "NULL_GAME_KEY"))
    jr.set_field(this, "gameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "SOURCE_ID"))
}

fn c1_m8__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(this, "setGameKey_1", [jr.call(jr.get_field(this, "inputToGameKeyMapping"), "getInstance_1", [jr.call(jr.call_inherited(this, "GameKeyCompleteMotionGestureInputEvent", "getMotionGestureInput_0", []), "getId_0", [])])])
            jr.call(this, "setGameKeyEvent_1", [jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [this, jr.call(this, "getGameKey_0", [])])])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_inherited(this, "GameKeyCompleteMotionGestureInputEvent", "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "UPDATE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m9__setgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.set_field(this, "gameKeyEvent", l_game_key_event)
    jr.JNull
}

fn c1_m10__getgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameKeyEvent")
}

fn c1_m11__setgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key] = jargs
        jr.set_field(this, "gameKey", l_game_key)
    jr.JNull
}

fn c1_m12__getgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameKey")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_motion_gesture_input, l_input_to_game_key_mapping] = jargs
        jr.super_init("CompleteMotionGestureInputEvent", this, [l_name, l_motion_gesture_input])
        c1_jfields(this)
        jr.set_field(this, "inputToGameKeyMapping", l_input_to_game_key_mapping)
        jr.call(jr.call_static("GameKeyCompleteMotionGestureInputEventFactory", "getInstance_0", []), "add_1", [this])
        jr.call(this, "update_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyCompleteMotionGestureInputEvent",
        "org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent",
        "CompleteMotionGestureInputEvent",
        ["GameKeyEventSourceInterface"],
        False,
        [#("gameKeyEventFactory", jr.JNull), #("SOURCE_ID", jr.JInt(0)), #("gameKey", jr.JNull), #("gameKeyEvent", jr.JNull), #("inputToGameKeyMapping", jr.JNull)],
        [],
        [
            jr.Method("getSourceId_0", [], False, c1_m7__getsourceid), 
            jr.Method("update_0", [], False, c1_m8__update), 
            jr.Method("setGameKeyEvent_1", ["GameKeyEvent"], False, c1_m9__setgamekeyevent), 
            jr.Method("getGameKeyEvent_0", [], False, c1_m10__getgamekeyevent), 
            jr.Method("setGameKey_1", ["GameKey"], False, c1_m11__setgamekey), 
            jr.Method("getGameKey_0", [], False, c1_m12__getgamekey), 
            jr.Method("jinit_3", ["String", "MotionGestureInput", "InputToGameKeyMapping"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

