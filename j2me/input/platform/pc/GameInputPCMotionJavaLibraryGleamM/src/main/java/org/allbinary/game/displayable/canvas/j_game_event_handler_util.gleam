// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameEventHandlerUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("UpGameKeyEventHandler", "getInstance_0", []), "removeAllListeners_0", [])
        jr.call(jr.call_static("DownGameKeyEventHandler", "getInstance_0", []), "removeAllListeners_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameEventHandlerUtil",
        "org.allbinary.game.displayable.canvas.GameEventHandlerUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("removeAllListeners_0", [], True, c1_m1__removealllisteners), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

