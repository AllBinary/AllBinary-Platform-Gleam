// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScoreableAddOnlyForHud

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__removepoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    let l_points = jr.as_i(l_points)
    jr.JNull
}

fn c1_m4__addpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    let l_points = jr.as_i(l_points)
        jr.call_super("Scoreable", this, "addPoints_1", [l_points])
        jr.call(jr.call(this, "getScoreHudWidget_0", []), "add_1", [l_points])
    jr.JNull
}

fn c1_m5__getscorehudwidget(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "scoreHudWidget")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_score_vector_graphic] = jargs
        jr.super_init("Scoreable", this, [jr.JInt(0)])
        c1_jfields(this)
        jr.set_field(this, "scoreHudWidget", l_score_vector_graphic)
        jr.call(jr.call(this, "getScoreHudWidget_0", []), "set_1", [jr.JInt(0)])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScoreableAddOnlyForHud",
        "org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud",
        "Scoreable",
        [],
        False,
        [#("scoreHudWidget", jr.JNull)],
        [],
        [
            jr.Method("removePoints_1", ["int"], False, c1_m3__removepoints), 
            jr.Method("addPoints_1", ["int"], False, c1_m4__addpoints), 
            jr.Method("getScoreHudWidget_0", [], False, c1_m5__getscorehudwidget), 
            jr.Method("jinit_1", ["ScoreHudWidget"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

