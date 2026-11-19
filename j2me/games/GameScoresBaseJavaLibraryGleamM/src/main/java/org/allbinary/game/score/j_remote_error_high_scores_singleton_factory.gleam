// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RemoteErrorHighScoresSingletonFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RemoteErrorHighScoresSingletonFactory", "SINGLETON", jr.new("HighScores", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "LOADING"), jr.JStr("Remote High Scores Did Not Load"), jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "PERIODS")]))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("RemoteErrorHighScoresSingletonFactory", "SINGLETON")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RemoteErrorHighScoresSingletonFactory",
        "org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory",
        "Object",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

