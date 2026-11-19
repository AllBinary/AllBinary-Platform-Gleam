// Generated Code Do Not Modify
// package org.allbinary.game.input.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameKeyEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameKeyEvent", "NONE", jr.new("GameKeyEvent", [jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"), jr.JInt(-1), jr.JInt(-1), jr.JInt(-1), jr.JInt(-1), jr.JBool(False)]))
    jr.JNull
}

fn c1_m1__createevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_source_id, l_key] = jargs
    let l_source_id = jr.as_i(l_source_id)
    let l_key = jr.as_i(l_key)
    jr.new("GameKeyEvent", [l_any_type, l_source_id, jr.JInt(0), jr.JInt(0), l_key, jr.JBool(False)])
}

fn c1_m9__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call_inherited(this, "GameKeyEvent", "setSource_1", [l_any_type])
    jr.JNull
}

fn c1_m10__setrepeatevents(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_repeated] = jargs
        jr.set_field(this, "repeated", l_repeated)
    jr.JNull
}

fn c1_m11__hasrepeatevents(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "repeated")
}

fn c1_m12__getkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "key"))
}

fn c1_m13__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("\nKey: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getKey_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m14__getoriginalkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "originalKey"))
}

fn c1_m15__setoriginalkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original_key] = jargs
    let l_original_key = jr.as_i(l_original_key)
        jr.set_field(this, "originalKey", jr.as_i(l_original_key))
    jr.JNull
}

fn c1_m16__getgameactionkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "gameActionKey"))
}

fn c1_m17__setgameactionkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_action_key] = jargs
    let l_game_action_key = jr.as_i(l_game_action_key)
        jr.set_field(this, "gameActionKey", jr.as_i(l_game_action_key))
    jr.JNull
}

fn c1_m18__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "sourceId"))
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_source_id, l_original_key, l_game_action_key, l_key, l_repeated] = jargs
    let l_source_id = jr.as_i(l_source_id)
    let l_original_key = jr.as_i(l_original_key)
    let l_game_action_key = jr.as_i(l_game_action_key)
    let l_key = jr.as_i(l_key)
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
        jr.set_field(this, "sourceId", jr.as_i(l_source_id))
        jr.call(this, "setOriginalKey_1", [l_original_key])
        jr.set_field(this, "key", jr.as_i(l_key))
        jr.call(this, "setGameActionKey_1", [l_game_action_key])
        jr.call(this, "setRepeatEvents_1", [l_repeated])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameKeyEvent",
        "org.allbinary.game.input.event.GameKeyEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("sourceId", jr.JInt(0)), #("repeated", jr.JBool(False)), #("key", jr.JInt(0)), #("gameActionKey", jr.JInt(0)), #("originalKey", jr.JInt(0))],
        [#("NONE", jr.JNull)],
        [
            jr.Method("createEvent_3", ["Object", "int", "int"], True, c1_m1__createevent), 
            jr.Method("init_1", ["Object"], False, c1_m9__init), 
            jr.Method("setRepeatEvents_1", ["boolean"], False, c1_m10__setrepeatevents), 
            jr.Method("hasRepeatEvents_0", [], False, c1_m11__hasrepeatevents), 
            jr.Method("getKey_0", [], False, c1_m12__getkey), 
            jr.Method("toString_0", [], False, c1_m13__tostring), 
            jr.Method("getOriginalKey_0", [], False, c1_m14__getoriginalkey), 
            jr.Method("setOriginalKey_1", ["int"], False, c1_m15__setoriginalkey), 
            jr.Method("getGameActionKey_0", [], False, c1_m16__getgameactionkey), 
            jr.Method("setGameActionKey_1", ["int"], False, c1_m17__setgameactionkey), 
            jr.Method("getSourceId_0", [], False, c1_m18__getsourceid), 
            jr.Method("jinit_6", ["Object", "int", "int", "int", "int", "boolean"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

