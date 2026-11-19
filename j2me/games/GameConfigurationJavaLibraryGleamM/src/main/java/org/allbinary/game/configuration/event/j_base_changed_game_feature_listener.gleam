// Generated Code Do Not Modify
// package org.allbinary.game.configuration.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseChangedGameFeatureListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "gameFeatureUtil", jr.call_static("GameFeatureUtil", "getInstance_0", []))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.set_field(this, "changed", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "NOT_IMPLEMENTED"), this])
    jr.JNull
}

fn c1_m6__ongamefeaturechange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature_event] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "gameFeatureUtil"), "GAME_FEATURE_CHANGED")]), "append_1", [jr.call(l_game_feature_event, "getWhatChanged_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameFeatureUtil"), "ON_GAME_FEATURE_CHANGE")])
        jr.call(jr.get_field(this, "list"), "add_1", [jr.call(l_game_feature_event, "getGameOption_0", [])])
        jr.call(this, "setChanged_1", [jr.JBool(True)])
    jr.JNull
}

fn c1_m7__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_game_feature])
    jr.JNull
}

fn c1_m8__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        jr.call(jr.get_field(this, "list"), "remove_1", [l_game_feature])
    jr.JNull
}

fn c1_m9__setchanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialized] = jargs
        jr.set_field(this, "changed", l_initialized)
        case jr.truth(jr.not(jr.call(this, "isChanged_0", []))) {
            True -> {
            jr.call(jr.get_field(this, "list"), "clear_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m10__ischangedfeature(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        let l_is_changed = jr.call(jr.get_field(this, "list"), "contains_1", [l_game_feature])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("GameFeature: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_game_feature])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" isFeature: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [l_game_feature])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" isChanged: ")])
        jr.call(l_string_buffer, "appendboolean_1", [l_is_changed])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.JStr("isChanged")])
    l_is_changed
}

fn c1_m11__ischanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "changed")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseChangedGameFeatureListener",
        "org.allbinary.game.configuration.event.BaseChangedGameFeatureListener",
        "Object",
        ["GameFeatureListenerInterface"],
        False,
        [#("logUtil", jr.JNull), #("gameFeatureUtil", jr.JNull), #("list", jr.JNull), #("changed", jr.JBool(False))],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m5__onevent), 
            jr.Method("onGameFeatureChange_1", ["GameFeatureEvent"], False, c1_m6__ongamefeaturechange), 
            jr.Method("add_1", ["Feature"], False, c1_m7__add), 
            jr.Method("remove_1", ["Feature"], False, c1_m8__remove), 
            jr.Method("setChanged_1", ["boolean"], False, c1_m9__setchanged), 
            jr.Method("isChangedFeature_1", ["Feature"], False, c1_m10__ischangedfeature), 
            jr.Method("isChanged_0", [], False, c1_m11__ischanged), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

