// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoreCommands

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "DISPLAY", jr.new("Command", [jr.JStr("Scores"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "PERSONAL", jr.new("Command", [jr.JStr("Personal"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "WORLD", jr.new("Command", [jr.JStr("World"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HighScoreCommands", "instance", jr.new("HighScoreCommands", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("HighScoreCommands", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoreCommands",
        "org.allbinary.game.score.HighScoreCommands",
        "Object",
        [],
        False,
        [#("DISPLAY", jr.JNull), #("PERSONAL", jr.JNull), #("WORLD", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

