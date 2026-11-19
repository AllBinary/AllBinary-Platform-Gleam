// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameLimitedCommandTextItemArrayFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commandTextItemArrayFactory", jr.new("CommandTextItemArrayFactory", [jr.new("LimitCommandsVisitor", [])]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameLimitedCommandTextItemArrayFactory", "instance", jr.new("GameLimitedCommandTextItemArrayFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameLimitedCommandTextItemArrayFactory", "instance")
}

fn c1_m4__getcommandtextitemarrayfactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "commandTextItemArrayFactory")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameLimitedCommandTextItemArrayFactory",
        "org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory",
        "Object",
        [],
        False,
        [#("commandTextItemArrayFactory", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getCommandTextItemArrayFactory_0", [], False, c1_m4__getcommandtextitemarrayfactory), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

