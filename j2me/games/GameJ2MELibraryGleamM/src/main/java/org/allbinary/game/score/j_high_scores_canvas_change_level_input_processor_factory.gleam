// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresCanvasChangeLevelInputProcessorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_canvas] = jargs
    jr.new("HighScoresCanvasLevelChangeInputProcessor", [l_high_scores_canvas])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoresCanvasChangeLevelInputProcessorFactory",
        "org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory",
        "Object",
        ["HighScoresCanvasInputProcessorFactoryInterface"],
        False,
        [],
        [],
        [
            jr.Method("getInstance_1", ["HighScoresCanvas"], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

