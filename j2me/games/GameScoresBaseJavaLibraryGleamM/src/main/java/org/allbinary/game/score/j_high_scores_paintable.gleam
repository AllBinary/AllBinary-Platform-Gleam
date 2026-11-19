// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"))
    jr.set_field(this, "highScores", jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", []))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "charHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m9__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        let l_color_change_event = l_event_object
        jr.set_field(this, "basicColor", jr.call(l_color_change_event, "getBasicColorP_0", []))
    jr.JNull
}

fn c1_m10__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        let l_width = jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastWidth_0", []))
        let l_height = jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHeight_0", []))
        jr.call(l_graphics, "setColor_1", [jr.call(jr.call(this, "getBasicColorP_0", []), "intValue_0", [])])
        let l_heading = jr.call(jr.get_field(this, "highScores"), "getHeading_0", [])
        let l_top_scores_width = jr.as_i(jr.shr(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [l_heading]), jr.JInt(1)))
        let l_char_height = jr.as_i(jr.get_field(this, "charHeight"))
        jr.call(l_graphics, "drawString_4", [l_heading, jr.sub(jr.shr(l_width, jr.JInt(1)), l_top_scores_width), l_char_height, jr.get_field(this, "anchor")])
        jr.call(l_graphics, "drawString_4", [jr.call(jr.get_field(this, "highScores"), "getColumnOneHeading_0", []), jr.JInt(10), jr.mul(l_char_height, jr.JInt(3)), jr.get_field(this, "anchor")])
        let l_column_two_heading = jr.call(jr.get_field(this, "highScores"), "getColumnTwoHeading_0", [])
        let l_column_two_heading_width = jr.as_i(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [l_column_two_heading]))
        jr.call(l_graphics, "drawString_4", [l_column_two_heading, jr.sub(jr.sub(l_width, jr.JInt(10)), l_column_two_heading_width), jr.mul(l_char_height, jr.JInt(3)), jr.get_field(this, "anchor")])
        let l_index = jr.cell(jr.as_i(jr.JInt(4)))
        let l_largest_second_column_width = jr.cell(jr.as_i(l_column_two_heading_width))
        let l_list = jr.call(jr.get_field(this, "highScores"), "getList_0", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_vector_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_high_score = jr.cell(jr.JNull)
        jr.while_loop("", fn() { case jr.truth(jr.lt(jr.get(l_vector_index), l_size)) { True -> jr.lt(jr.mul(l_char_height, jr.get(l_index)), jr.sub(l_height, jr.mul(l_char_height, jr.JInt(2)))) False -> jr.JBool(False) } }, fn() {
            jr.set(l_high_score, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_vector_index)))
            let l_next_score_width = jr.as_i(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [jr.call(jr.get(l_high_score), "getScoreString_0", [])]))
            case jr.truth(jr.gt(l_next_score_width, jr.get(l_largest_second_column_width))) {
                True -> {
                jr.set(l_largest_second_column_width, jr.as_i(l_next_score_width))
                Nil
            }
                False -> Nil
            }
            jr.incr(fn() { jr.get(l_vector_index) }, fn(jv) { jr.set(l_vector_index, jv) }, 1, True)
            Nil
        })
        jr.set(l_vector_index, jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { case jr.truth(jr.lt(jr.get(l_vector_index), l_size)) { True -> jr.lt(jr.mul(l_char_height, jr.get(l_index)), jr.sub(l_height, jr.mul(l_char_height, jr.JInt(2)))) False -> jr.JBool(False) } }, fn() {
            jr.set(l_high_score, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_vector_index)))
            jr.call(l_graphics, "drawString_4", [jr.call(jr.get(l_high_score), "getName_0", []), jr.JInt(10), jr.mul(l_char_height, jr.get(l_index)), jr.get_field(this, "anchor")])
            jr.call(l_graphics, "drawString_4", [jr.call(jr.get(l_high_score), "getScoreString_0", []), jr.sub(jr.sub(l_width, jr.JInt(10)), jr.get(l_largest_second_column_width)), jr.mul(l_char_height, jr.get(l_index)), jr.get_field(this, "anchor")])
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            jr.incr(fn() { jr.get(l_vector_index) }, fn(jv) { jr.set(l_vector_index, jv) }, 1, True)
            Nil
        })
    jr.JNull
}

fn c1_m11__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
    jr.JNull
}

fn c1_m12__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_m13__sethighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores] = jargs
        jr.set_field(this, "highScores", l_high_scores)
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoresPaintable",
        "org.allbinary.game.score.HighScoresPaintable",
        "Paintable",
        ["ColorChangeListener", "UpdateMyFontInterface"],
        False,
        [#("displayInfoSingleton", jr.JNull), #("myFontProcessor", jr.JNull), #("basicColor", jr.JNull), #("highScores", jr.JNull), #("anchor", jr.JInt(0)), #("charHeight", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m8__updatemeasurement), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m9__onevent), 
            jr.Method("paint_1", ["Graphics"], False, c1_m10__paint), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m11__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m12__getbasiccolorp), 
            jr.Method("setHighScores_1", ["HighScores"], False, c1_m13__sethighscores), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

