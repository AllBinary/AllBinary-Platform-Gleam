// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScores

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "orderedHighScoresList", jr.new("BasicArrayListD", []))
    jr.set_field(this, "columnOneHeading", jr.JStr("Name"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__setlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ordered_high_scores_list] = jargs
        jr.set_field(this, "orderedHighScoresList", l_ordered_high_scores_list)
    jr.JNull
}

fn c1_m8__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "orderedHighScoresList")
}

fn c1_m9__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m10__gettotal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.call(this, "getList_0", []), "size_0", []))
}

fn c1_m11__addhighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_high_score] = jargs
        jr.call(jr.get_field(this, "orderedHighScoresList"), "add_1", [l_new_high_score])
    jr.JNull
}

fn c1_m12__getheading(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "heading")
}

fn c1_m13__getcolumnoneheading(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "columnOneHeading")
}

fn c1_m14__getcolumntwoheading(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "columnTwoHeading")
}

fn c1_m15__isbestscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_high_score] = jargs
    jr.JBool(False)
}

fn c1_m16__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("HighScores: ")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "heading")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "TOTAL_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get_field(this, "orderedHighScoresList"), "size_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_heading, l_column_two_heading] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "heading", l_heading)
        jr.set_field(this, "columnTwoHeading", l_column_two_heading)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScores",
        "org.allbinary.game.score.HighScores",
        "Object",
        ["HighScoresInterface"],
        False,
        [#("orderedHighScoresList", jr.JNull), #("name", jr.JNull), #("heading", jr.JNull), #("columnOneHeading", jr.JNull), #("columnTwoHeading", jr.JNull)],
        [],
        [
            jr.Method("setList_1", ["BasicArrayList"], False, c1_m7__setlist), 
            jr.Method("getList_0", [], False, c1_m8__getlist), 
            jr.Method("getName_0", [], False, c1_m9__getname), 
            jr.Method("getTotal_0", [], False, c1_m10__gettotal), 
            jr.Method("addHighScore_1", ["HighScore"], False, c1_m11__addhighscore), 
            jr.Method("getHeading_0", [], False, c1_m12__getheading), 
            jr.Method("getColumnOneHeading_0", [], False, c1_m13__getcolumnoneheading), 
            jr.Method("getColumnTwoHeading_0", [], False, c1_m14__getcolumntwoheading), 
            jr.Method("isBestScore_1", ["HighScore"], False, c1_m15__isbestscore), 
            jr.Method("toString_0", [], False, c1_m16__tostring), 
            jr.Method("jinit_3", ["String", "String", "String"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

