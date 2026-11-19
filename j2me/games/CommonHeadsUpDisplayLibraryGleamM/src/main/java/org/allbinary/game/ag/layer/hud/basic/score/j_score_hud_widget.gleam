// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScoreHudWidget

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_maxscore, l_location, l_direction] = jargs
    let l_maxscore = jr.as_i(l_maxscore)
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    jr.new("ScoreHudWidget", [l_maxscore, l_location, l_direction, jr.JInt(2), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "GREY")])
}

fn c1_m3__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_inherited(this, "ScoreHudWidget", "updateMaxWidth", jr.mul(jr.call(l_font, "getSize_0", []), jr.JInt(5)))
        jr.call_super("NumberStringHud", this, "updateMeasurement_1", [l_graphics])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_maxscore, l_location, l_direction, l_buffer_zone, l_basic_color] = jargs
    let l_maxscore = jr.as_i(l_maxscore)
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    let l_buffer_zone = jr.as_i(l_buffer_zone)
        jr.super_init("NumberStringHud", this, [jr.JStr("Pts "), l_maxscore, l_location, l_direction, l_buffer_zone, l_basic_color])
        c1_jfields(this)
        jr.set_inherited(this, "ScoreHudWidget", "updateMaxHeight", jr.JInt(14))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScoreHudWidget",
        "org.allbinary.game.ag.layer.hud.basic.score.ScoreHudWidget",
        "NumberStringHud",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_3", ["int", "int", "int"], True, c1_m1__getinstance), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m3__updatemeasurement), 
            jr.Method("jinit_5", ["int", "int", "int", "int", "BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

