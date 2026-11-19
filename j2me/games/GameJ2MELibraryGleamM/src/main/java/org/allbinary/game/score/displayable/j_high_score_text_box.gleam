// Generated Code Do Not Modify
// package org.allbinary.game.score.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoreTextBox

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "virtualKeyboardEventHandler", jr.call_static("VirtualKeyboardEventHandler", "getInstance_0", []))
    jr.set_field(this, "pleaseWait", jr.new("SimpleTextPaintable", [jr.get_field(jr.get_inherited(this, "HighScoreTextBox", "commonStrings"), "PLEASE_WAIT"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
    jr.set_field(this, "paintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "submitted", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "HighScoreTextBox", "removeAllCommands_0", [])
        jr.call(jr.call_static("PostGameCommandFactory", "getInstance_0", []), "addCommands_1", [this])
        jr.call_inherited(this, "HighScoreTextBox", "addCommand_1", [jr.get_static("HighScoreUtil", "SUBMIT_TEXTBOX_COMMAND")])
        jr.call_inherited(this, "HighScoreTextBox", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m8__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "virtualKeyboardEventHandler"), "open_0", [])
        jr.set_field(this, "paintable", jr.call_static("NullPaintable", "getInstance_0", []))
        jr.call_super("CustomTextBox", this, "open_0", [])
    jr.JNull
}

fn c1_m9__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "virtualKeyboardEventHandler"), "close_0", [])
        jr.set_field(this, "paintable", jr.get_field(this, "pleaseWait"))
        jr.call(jr.get_inherited(this, "HighScoreTextBox", "repaintBehavior"), "onChangeRepaint_1", [this])
        jr.call_super("CustomTextBox", this, "close_0", [])
        jr.call_inherited(this, "HighScoreTextBox", "removeCommand_1", [jr.get_static("HighScoreUtil", "SUBMIT_TEXTBOX_COMMAND")])
        jr.call(this, "update_0", [])
        case jr.truth(jr.get_field(this, "submitted")) {
            True -> {
            jr.call(jr.get_field(this, "highScoreUtil"), "saveHighScore_0", [])
            Nil
        }
            False -> {
            Nil
        }
        }
        jr.set_field(this, "paintable", jr.call_static("NullPaintable", "getInstance_0", []))
        jr.call(jr.get_inherited(this, "HighScoreTextBox", "repaintBehavior"), "onChangeRepaint_1", [this])
    jr.JNull
}

fn c1_m10__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_name = jr.call(jr.call_inherited(this, "HighScoreTextBox", "getTextFieldItem_0", []), "getString_0", [])
        jr.call(jr.get_field(this, "highScoreUtil"), "update_1", [l_name])
        jr.call_super("CustomTextBox", this, "update_0", [])
    jr.JNull
}

fn c1_m11__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call_super("CustomTextBox", this, "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "paintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m12__savehighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "highScoreUtil"), "saveHighScore_0", [])
    jr.JNull
}

fn c1_m13__submit(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "highScoreUtil"), "submit_1", [this])
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_factory_interface, l_high_scores_helper, l_abe_client_information, l_game_info, l_cmd_listener, l_name, l_high_score, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("CustomTextBox", this, [l_cmd_listener, jr.JStr("New High Score Enter Name:"), l_name, jr.JInt(12), jr.get_static("TextField", "ANY"), jr.call_static("Font", "getDefaultFont_0", []), l_backgroun_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.set_field(this, "highScoreUtil", jr.new("HighScoreUtil", [l_high_scores_factory_interface, l_high_scores_helper, l_abe_client_information, l_game_info, l_cmd_listener, l_name, l_high_score]))
        let l_operating_system_interface = jr.call(jr.call_static("OperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", [])
        case jr.truth(jr.call(l_operating_system_interface, "isOverScan_0", [])) {
            True -> {
            let l_username = jr.call(jr.call_static("InApplicationPurchaseFactory", "getInstance_0", []), "getUserName_0", [])
            jr.call(jr.call_inherited(this, "HighScoreTextBox", "getTextFieldItem_0", []), "setString_1", [l_username])
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoreTextBox",
        "org.allbinary.game.score.displayable.HighScoreTextBox",
        "CustomTextBox",
        [],
        False,
        [#("virtualKeyboardEventHandler", jr.JNull), #("highScoreUtil", jr.JNull), #("pleaseWait", jr.JNull), #("paintable", jr.JNull), #("submitted", jr.JBool(False))],
        [],
        [
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m7__initcommands), 
            jr.Method("open_0", [], False, c1_m8__open), 
            jr.Method("close_0", [], False, c1_m9__close), 
            jr.Method("update_0", [], False, c1_m10__update), 
            jr.Method("paint_1", ["Graphics"], False, c1_m11__paint), 
            jr.Method("saveHighScore_0", [], False, c1_m12__savehighscore), 
            jr.Method("submit_0", [], False, c1_m13__submit), 
            jr.Method("jinit_9", ["HighScoresFactoryInterface", "HighScoresHelperBaseInterface", "AbeClientInformationInterface", "GameInfo", "CommandListener", "String", "HighScore", "BasicColor", "BasicColor"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

