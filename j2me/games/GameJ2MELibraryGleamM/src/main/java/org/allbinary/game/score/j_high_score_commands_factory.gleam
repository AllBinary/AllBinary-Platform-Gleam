// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoreCommandsFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HighScoreCommandsFactory", "instance", jr.new("HighScoreCommandsFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("HighScoreCommandsFactory", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("HighScoreCommandsBaseFactory", this, [jr.array_of("L", [jr.get_field(jr.call_static("HighScoreCommands", "getInstance_0", []), "PERSONAL"), jr.get_field(jr.call_static("HighScoreCommands", "getInstance_0", []), "WORLD")])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoreCommandsFactory",
        "org.allbinary.game.score.HighScoreCommandsFactory",
        "HighScoreCommandsBaseFactory",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

