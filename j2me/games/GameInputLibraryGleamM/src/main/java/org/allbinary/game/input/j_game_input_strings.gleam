// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInputStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "PROCESS_INPUT", jr.JStr("processInput"))
    jr.set_field(this, "KEY_PRESSED", jr.JStr("keyPressed"))
    jr.set_field(this, "KEY_RELEASED", jr.JStr("keyReleased"))
    jr.set_field(this, "KEY_REPEATED", jr.JStr("keyRepeated"))
    jr.set_field(this, "ON_PRESS_GAME_KEY", jr.JStr("onPressGameKeyEvent"))
    jr.set_field(this, "ON_DOWN_GAME_KEY", jr.JStr("onDownGameKeyEvent"))
    jr.set_field(this, "ON_UP_GAME_KEY", jr.JStr("onUpGameKeyEvent"))
    jr.set_field(this, "NO_KEY", jr.JStr("Key Code Not Mapped For Game: "))
    jr.set_field(this, "ADD_KEY_EVENT", jr.JStr("addGameKeyEvent"))
    jr.set_field(this, "REMOVE_KEY_EVENT", jr.JStr("removeGameKeyEvent"))
    jr.set_field(this, "STRAFE_LEFT", jr.JStr("strafeLeft"))
    jr.set_field(this, "STRAFE_RIGHT", jr.JStr("strafeRight"))
    jr.set_field(this, "PROCESS_MOTION_INPUT", jr.JStr("processMotionInput"))
    jr.set_field(this, "UDPATE_CURRENT_TOUCH_INPUT_FACTORY", jr.JStr("updateCurrentTouchInputFactory"))
    jr.set_field(this, "ENABLE_PLAYER_GAME_INPUTS", jr.JStr("Enabling PlayerGameInputs: "))
    jr.set_field(this, "ENABLE_PLAYER_GAME_INPUT", jr.JStr("Enabling PlayerGameInput: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameInputStrings", "instance", jr.new("GameInputStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameInputStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInputStrings",
        "org.allbinary.game.input.GameInputStrings",
        "Object",
        [],
        False,
        [#("PROCESS_INPUT", jr.JNull), #("KEY_PRESSED", jr.JNull), #("KEY_RELEASED", jr.JNull), #("KEY_REPEATED", jr.JNull), #("ON_PRESS_GAME_KEY", jr.JNull), #("ON_DOWN_GAME_KEY", jr.JNull), #("ON_UP_GAME_KEY", jr.JNull), #("NO_KEY", jr.JNull), #("ADD_KEY_EVENT", jr.JNull), #("REMOVE_KEY_EVENT", jr.JNull), #("STRAFE_LEFT", jr.JNull), #("STRAFE_RIGHT", jr.JNull), #("PROCESS_MOTION_INPUT", jr.JNull), #("UDPATE_CURRENT_TOUCH_INPUT_FACTORY", jr.JNull), #("ENABLE_PLAYER_GAME_INPUTS", jr.JNull), #("ENABLE_PLAYER_GAME_INPUT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

