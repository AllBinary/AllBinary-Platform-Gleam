// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LastFetchHighScoresFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "highScoresArray", jr.get_field(jr.call_static("NoHighScoresFactory", "getInstance_0", []), "NO_HIGH_SCORES"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LastFetchHighScoresFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("LastFetchHighScoresFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("LastFetchHighScoresFactory", "instance", jr.new("LastFetchHighScoresFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("LastFetchHighScoresFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LastFetchHighScoresFactory",
        "org.allbinary.game.score.LastFetchHighScoresFactory",
        "Object",
        [],
        False,
        [#("highScoresArray", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

