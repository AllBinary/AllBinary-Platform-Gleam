// Generated Code Do Not Modify
// package org.allbinary.game.commands
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameCommandsFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "TOGGLE_FULLSCREEN", jr.new("Command", [jr.JStr("Toggle FullScreen"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "TOGGLE_KEYBOARD", jr.new("Command", [jr.JStr("Keyboard"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "SET_MENU_DISPLAYABLE", jr.new("Command", [jr.JStr("Set Menu Displayable"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "APPLICATION_UPDATE", jr.new("Command", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "UPDATE"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "DISPLAY_ABOUT", jr.new("Command", [jr.get_field(jr.call_static("CanvasStrings", "getInstance_0", []), "ABOUT"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(2)]))
    jr.set_field(this, "OPEN_WEB_URL", jr.new("Command", [jr.JStr("Open Web URL"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(2)]))
    jr.set_field(this, "CLOSE_OPTIONS", jr.new("Command", [jr.JStr("Back"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "DISPLAY_OPTIONS", jr.new("Command", [jr.get_field(jr.call_static("CanvasStrings", "getInstance_0", []), "OPTIONS"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(2)]))
    jr.set_field(this, "START_TRACE", jr.new("Command", [jr.JStr("Start Trace"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "STOP_TRACE", jr.new("Command", [jr.JStr("Stop Trace"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "DEFAULT_OPTIONS", jr.new("Command", [jr.JStr("Default"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "SHOW_GAME_CANVAS", jr.new("Command", [jr.JStr("Back to Game"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "CLOSE_AND_SHOW_GAME_CANVAS", jr.new("Command", [jr.JStr("Back"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "QUIT_COMMAND", jr.new("Command", [jr.JStr("Quit"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "STOP"), jr.JInt(1)]))
    jr.set_field(this, "RESTART_COMMAND", jr.new("Command", [jr.JStr("Restart"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(0)]))
    jr.set_field(this, "DISPLAY_SAVE_FORM", jr.new("Command", [jr.JStr("Save To"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(3)]))
    jr.set_field(this, "SAVE", jr.new("Command", [jr.JStr("Save"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(3)]))
    jr.set_field(this, "DISPLAY_LOAD_FORM", jr.new("Command", [jr.JStr("Load"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(3)]))
    jr.set_field(this, "LOAD_FILE", jr.new("Command", [jr.JStr("Load File"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(3)]))
    jr.set_field(this, "DELETE_FILE", jr.new("Command", [jr.JStr("Delete File"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "EXIT_COMMAND", jr.new("Command", [jr.JStr("Exit"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "EXIT"), jr.JInt(2)]))
    jr.set_field(this, "EXIT_WITHOUT_PROGRESS_COMMAND", jr.new("Command", [jr.JStr("Exit Without Progress"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "EXIT"), jr.JInt(2)]))
    jr.set_field(this, "START_COMMAND", jr.new("Command", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "START"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "CONTINUE_COMMAND", jr.new("Command", [jr.JStr("Continue"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "SELECT_COMMAND", jr.new("Command", [jr.JStr("Select"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "FEATURE_UPDATE", jr.new("Command", [jr.JStr("Feature Update"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_field(this, "BUY_COMMAND", jr.new("Command", [jr.JStr("BUY"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameCommandsFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("GameCommandsFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("GameCommandsFactory", "instance", jr.new("GameCommandsFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("GameCommandsFactory", "instance")
}

fn c1_jinit30(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameCommandsFactory",
        "org.allbinary.game.commands.GameCommandsFactory",
        "Object",
        [],
        False,
        [#("TOGGLE_FULLSCREEN", jr.JNull), #("TOGGLE_KEYBOARD", jr.JNull), #("SET_MENU_DISPLAYABLE", jr.JNull), #("APPLICATION_UPDATE", jr.JNull), #("DISPLAY_ABOUT", jr.JNull), #("OPEN_WEB_URL", jr.JNull), #("CLOSE_OPTIONS", jr.JNull), #("DISPLAY_OPTIONS", jr.JNull), #("START_TRACE", jr.JNull), #("STOP_TRACE", jr.JNull), #("DEFAULT_OPTIONS", jr.JNull), #("SHOW_GAME_CANVAS", jr.JNull), #("CLOSE_AND_SHOW_GAME_CANVAS", jr.JNull), #("QUIT_COMMAND", jr.JNull), #("RESTART_COMMAND", jr.JNull), #("DISPLAY_SAVE_FORM", jr.JNull), #("SAVE", jr.JNull), #("DISPLAY_LOAD_FORM", jr.JNull), #("LOAD_FILE", jr.JNull), #("DELETE_FILE", jr.JNull), #("EXIT_COMMAND", jr.JNull), #("EXIT_WITHOUT_PROGRESS_COMMAND", jr.JNull), #("START_COMMAND", jr.JNull), #("CONTINUE_COMMAND", jr.JNull), #("SELECT_COMMAND", jr.JNull), #("FEATURE_UPDATE", jr.JNull), #("BUY_COMMAND", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit30)],
        c1_jfields,
        c1_jclinit,
    )
}

