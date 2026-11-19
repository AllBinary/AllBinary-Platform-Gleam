// Generated Code Do Not Modify
// package org.allbinary.game
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "PROCESS_TICK", jr.JStr("processTick"))
    jr.set_field(this, "ON_GAME_INITIALIZED", jr.JStr("onGameInitialized"))
    jr.set_field(this, "UPDATESURFACE", jr.JStr("updateSurface"))
    jr.set_field(this, "ON_SET_DISPLAYABLE", jr.JStr("onSetDisplayable"))
    jr.set_field(this, "UNPAUSE", jr.JStr("unPause"))
    jr.set_field(this, "TOGGLE_MENU", jr.JStr("toggleMenu"))
    jr.set_field(this, "SET_GAME_OVER", jr.JStr("setGameOver"))
    jr.set_field(this, "GAME_STATE", jr.JStr("Game State: "))
    jr.set_field(this, "SET_GAME_STATE", jr.JStr("setGameState"))
    jr.set_field(this, "STOP_GAME_CANVAS_RUNNABLE_INTERFACE", jr.JStr("stopGameCanvasRunnableInterface"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameStrings", "instance", jr.new("GameStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameStrings",
        "org.allbinary.game.GameStrings",
        "Object",
        [],
        False,
        [#("PROCESS_TICK", jr.JNull), #("ON_GAME_INITIALIZED", jr.JNull), #("UPDATESURFACE", jr.JNull), #("ON_SET_DISPLAYABLE", jr.JNull), #("UNPAUSE", jr.JNull), #("TOGGLE_MENU", jr.JNull), #("SET_GAME_OVER", jr.JNull), #("GAME_STATE", jr.JNull), #("SET_GAME_STATE", jr.JNull), #("STOP_GAME_CANVAS_RUNNABLE_INTERFACE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

