// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScore

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "id"))
}

fn c1_m8__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m9__getscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "score"))
}

fn c1_m10__getasbytes(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_byte_array_output_stream = jr.new("ByteArrayOutputStream", [])
        let l_output_stream = jr.new("DataOutputStream", [l_byte_array_output_stream])
        jr.call(l_output_stream, "writeUTF_1", [jr.call(this, "getName_0", [])])
        jr.call(l_output_stream, "writeLong_1", [jr.call(this, "getScore_0", [])])
    jr.call(l_byte_array_output_stream, "toByteArray_0", [])
}

fn c1_m11__getgameinfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameInfo")
}

fn c1_m12__getscorestring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "scoreString")
}

fn c1_m13__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.set_field(this, "name", l_name)
    jr.JNull
}

fn c1_m14__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
    jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "name")]), "append_1", [jr.get_field(l_common_seps, "COLON")]), "appendlong_1", [jr.get_field(this, "score")]), "append_1", [jr.get_field(l_common_seps, "FORWARD_SLASH")]), "append_1", [jr.get_field(this, "scoreString")]), "toString_0", [])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id, l_name, l_game_info, l_score] = jargs
    let l_id = jr.as_i(l_id)
    let l_score = jr.as_j(l_score)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "id", jr.as_i(l_id))
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "gameInfo", l_game_info)
        jr.set_field(this, "score", jr.as_j(l_score))
        jr.set_field(this, "scoreString", jr.call_static("Long", "toString_1", [jr.get_field(this, "score")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScore",
        "org.allbinary.game.score.HighScore",
        "Object",
        [],
        False,
        [#("id", jr.JInt(0)), #("name", jr.JNull), #("gameInfo", jr.JNull), #("score", jr.JLong(0)), #("scoreString", jr.JNull)],
        [],
        [
            jr.Method("getId_0", [], False, c1_m7__getid), 
            jr.Method("getName_0", [], False, c1_m8__getname), 
            jr.Method("getScore_0", [], False, c1_m9__getscore), 
            jr.Method("getAsBytes_0", [], False, c1_m10__getasbytes), 
            jr.Method("getGameInfo_0", [], False, c1_m11__getgameinfo), 
            jr.Method("getScoreString_0", [], False, c1_m12__getscorestring), 
            jr.Method("setName_1", ["String"], False, c1_m13__setname), 
            jr.Method("toString_0", [], False, c1_m14__tostring), 
            jr.Method("jinit_4", ["int", "String", "GameInfo", "long"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

