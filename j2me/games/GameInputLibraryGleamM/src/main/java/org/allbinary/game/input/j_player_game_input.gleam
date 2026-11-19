// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlayerGameInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameInputStrings", jr.call_static("GameInputStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__onpressgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call_inherited(this, "PlayerGameInput", "add_1", [l_game_key_event])
        jr.call_inherited(this, "PlayerGameInput", "addForRemoval_1", [l_game_key_event])
    jr.JNull
}

fn c1_m5__ondowngamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call_inherited(this, "PlayerGameInput", "add_1", [l_game_key_event])
    jr.JNull
}

fn c1_m6__ondownkeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call_inherited(this, "PlayerGameInput", "add_1", [l_game_key_event])
        jr.call_inherited(this, "PlayerGameInput", "addForRemoval_1", [l_game_key_event])
    jr.JNull
}

fn c1_m7__ondownkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.call(l_game_key_event, "toString_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "ON_DOWN_GAME_KEY")])
    jr.JNull
}

fn c1_m8__onupgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call_inherited(this, "PlayerGameInput", "addForRemoval_1", [l_game_key_event])
    jr.JNull
}

fn c1_m9__onupkeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
    jr.JNull
}

fn c1_m10__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m11__getplayerinputid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "playerInputId"))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event_list, l_removal_game_key_event_list, l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.super_init("GameInput", this, [l_game_key_event_list, l_removal_game_key_event_list])
        c1_jfields(this)
        jr.set_field(this, "playerInputId", jr.as_i(l_player_input_id))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlayerGameInput",
        "org.allbinary.game.input.PlayerGameInput",
        "GameInput",
        ["GameKeyEventListenerInterface"],
        False,
        [#("gameInputStrings", jr.JNull), #("playerInputId", jr.JInt(0))],
        [],
        [
            jr.Method("onPressGameKeyEvent_1", ["GameKeyEvent"], False, c1_m4__onpressgamekeyevent), 
            jr.Method("onDownGameKeyEvent_1", ["GameKeyEvent"], False, c1_m5__ondowngamekeyevent), 
            jr.Method("onDownKeyEvent_1", ["GameKeyEvent"], False, c1_m6__ondownkeyevent), 
            jr.Method("onDownKey_1", ["Integer"], False, c1_m7__ondownkey), 
            jr.Method("onUpGameKeyEvent_1", ["GameKeyEvent"], False, c1_m8__onupgamekeyevent), 
            jr.Method("onUpKeyEvent_1", ["Integer"], False, c1_m9__onupkeyevent), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m10__onevent), 
            jr.Method("getPlayerInputId_0", [], False, c1_m11__getplayerinputid), 
            jr.Method("jinit_3", ["BasicArrayList", "BasicArrayList", "int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

