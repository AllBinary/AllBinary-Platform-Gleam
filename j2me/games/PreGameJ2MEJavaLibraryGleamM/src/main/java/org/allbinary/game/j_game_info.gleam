// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "gameInfoData", jr.call_static("GameInfoData", "getInstance_0", []))
    jr.set_field(this, "NEW_LEVEL", jr.JStr("New Level: "))
    jr.set_field(this, "SET_CURRENT_LEVEL", jr.JStr("setCurrentLevel"))
    jr.set_field(this, "NEXT_GAME_LEVEL", jr.JStr("nextGameLevel"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameInfo", "NONE", jr.new("GameInfo", [jr.get_field(jr.call_static("GameTypeFactory", "getInstance_0", []), "NONE"), jr.get_static("GameMode", "NONE"), jr.get_field(jr.call_static("PlayerTypesFactory", "getInstance_0", []), "PLAYER_TYPE_ONE"), jr.JInt(-1), jr.JInt(-1)]))
    jr.JNull
}

fn c1_m11__getgametype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameType")
}

fn c1_m12__getgamemode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameMode")
}

fn c1_m13__getplayertype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "playerType")
}

fn c1_m14__gethighestlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "highestLevel"))
}

fn c1_m15__sethighestlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_highest_level] = jargs
    let l_highest_level = jr.as_i(l_highest_level)
        jr.set_field(this, "highestLevel", jr.as_i(l_highest_level))
    jr.JNull
}

fn c1_m16__getcurrentlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "currentLevel"))
}

fn c1_m19__setcurrentlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_level] = jargs
    let l_current_level = jr.as_i(l_current_level)
        jr.set_field(this, "currentLevel", jr.as_i(l_current_level))
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "NEW_LEVEL")]), "appendint_1", [jr.call(this, "getCurrentLevel_0", [])]), "toString_0", []), this, jr.get_field(this, "SET_CURRENT_LEVEL")])
    jr.JNull
}

fn c1_m21__nextgamelevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.lt(jr.call(this, "getCurrentLevel_0", []), jr.call(this, "getHighestLevel_0", []))) {
            True -> {
            jr.incr(fn() { jr.get_field(this, "currentLevel") }, fn(jv) { jr.set_field(this, "currentLevel", jv) }, 1, True)
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "NEXT")]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")]), "append_1", [jr.get_field(this, "NEW_LEVEL")]), "appendint_1", [jr.call(this, "getCurrentLevel_0", [])]), "toString_0", []), this, jr.get_field(this, "NEXT_GAME_LEVEL")])
    jr.JNull
}

fn c1_m22__previousgamelevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.gt(jr.call(this, "getCurrentLevel_0", []), jr.JInt(1))) {
            True -> {
            jr.incr(fn() { jr.get_field(this, "currentLevel") }, fn(jv) { jr.set_field(this, "currentLevel", jv) }, -1, True)
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m23__islastlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.ge(jr.call(this, "getCurrentLevel_0", []), jr.call(this, "getHighestLevel_0", []))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m24__tohashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_hashtable = jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", [])
        jr.call(l_hashtable, "put_2", [jr.get_field(jr.get_field(this, "gameInfoData"), "GAME_TYPE"), jr.call(jr.call(this, "getGameType_0", []), "toString_0", [])])
        jr.call(l_hashtable, "put_2", [jr.get_field(jr.get_field(this, "gameInfoData"), "GAME_MODE"), jr.call(jr.get_field(this, "gameMode"), "toString_0", [])])
        jr.call(l_hashtable, "put_2", [jr.get_field(jr.get_field(this, "gameInfoData"), "PLAYER_TYPE"), jr.call(jr.get_field(this, "playerType"), "toString_0", [])])
        jr.call(l_hashtable, "put_2", [jr.get_field(jr.get_field(this, "gameInfoData"), "HIGHEST_LEVEL"), jr.call_static("Integer", "toString_1", [jr.call(this, "getHighestLevel_0", [])])])
        jr.call(l_hashtable, "put_2", [jr.get_field(jr.get_field(this, "gameInfoData"), "CURRENT_LEVEL"), jr.call_static("Integer", "toString_1", [jr.get_field(this, "currentLevel")])])
    l_hashtable
}

fn c1_m25__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "gameInfoData"), "GAME_TYPE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "EQUALS")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call(this, "getGameType_0", []), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "gameInfoData"), "GAME_MODE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "EQUALS")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "gameMode"), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "gameInfoData"), "PLAYER_TYPE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "EQUALS")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get_field(this, "playerType")])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "gameInfoData"), "HIGHEST_LEVEL")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getHighestLevel_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "gameInfoData"), "CURRENT_LEVEL")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "currentLevel")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_type, l_game_mode, l_player_type, l_highest_level, l_current_level] = jargs
    let l_highest_level = jr.as_i(l_highest_level)
    let l_current_level = jr.as_i(l_current_level)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "gameType", l_game_type)
        jr.set_field(this, "gameMode", l_game_mode)
        jr.call(this, "setHighestLevel_1", [l_highest_level])
        jr.set_field(this, "currentLevel", jr.as_i(l_current_level))
        jr.set_field(this, "playerType", l_player_type)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInfo",
        "org.allbinary.game.GameInfo",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("gameInfoData", jr.JNull), #("gameType", jr.JNull), #("gameMode", jr.JNull), #("playerType", jr.JNull), #("highestLevel", jr.JInt(0)), #("currentLevel", jr.JInt(0)), #("NEW_LEVEL", jr.JNull), #("SET_CURRENT_LEVEL", jr.JNull), #("NEXT_GAME_LEVEL", jr.JNull)],
        [#("NONE", jr.JNull), #("LEVEL_NAME", jr.JStr("LEVEL"))],
        [
            jr.Method("getGameType_0", [], False, c1_m11__getgametype), 
            jr.Method("getGameMode_0", [], False, c1_m12__getgamemode), 
            jr.Method("getPlayerType_0", [], False, c1_m13__getplayertype), 
            jr.Method("getHighestLevel_0", [], False, c1_m14__gethighestlevel), 
            jr.Method("setHighestLevel_1", ["int"], False, c1_m15__sethighestlevel), 
            jr.Method("getCurrentLevel_0", [], False, c1_m16__getcurrentlevel), 
            jr.Method("setCurrentLevel_1", ["int"], False, c1_m19__setcurrentlevel), 
            jr.Method("nextGameLevel_0", [], False, c1_m21__nextgamelevel), 
            jr.Method("previousGameLevel_0", [], False, c1_m22__previousgamelevel), 
            jr.Method("isLastLevel_0", [], False, c1_m23__islastlevel), 
            jr.Method("toHashtable_0", [], False, c1_m24__tohashtable), 
            jr.Method("toString_0", [], False, c1_m25__tostring), 
            jr.Method("jinit_5", ["GameType", "GameMode", "PlayerType", "int", "int"], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

