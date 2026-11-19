// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InGameOptionsForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InGameOptionsForm", "DISPLAY", jr.new("Command", [jr.JStr("Options In Game"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_static("InGameOptionsForm", "SAVE", jr.new("Command", [jr.JStr("Save"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_static("InGameOptionsForm", "DEFAULT", jr.new("Command", [jr.JStr("Default"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.JNull
}

fn c1_m5__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "InGameOptionsForm", "removeAllCommands_0", [])
        jr.call_inherited(this, "InGameOptionsForm", "addCommand_1", [jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "CLOSE_AND_SHOW_GAME_CANVAS")])
        jr.call_inherited(this, "InGameOptionsForm", "addCommand_1", [jr.get_static("InGameOptionsForm", "DEFAULT")])
        jr.call_inherited(this, "InGameOptionsForm", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("CommandForm", this, [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "InGameOptionsForm", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "InGameOptionsForm", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "InGameOptionsForm", "commonStrings"), "CONSTRUCTOR")])
        let l_game_feature_form_util = jr.call_static("GameFeatureFormUtil", "getInstance_0", [])
        jr.call(l_game_feature_form_util, "addChoiceGroup_3", [this, jr.call(jr.call_static("InGameFeatureChoiceGroups", "getExclusiveInstance_0", []), "get_0", []), jr.get_static("Choice", "EXCLUSIVE")])
        jr.call(l_game_feature_form_util, "addChoiceGroup_3", [this, jr.call(jr.call_static("InGameFeatureChoiceGroups", "getMultipleInstance_0", []), "get_0", []), jr.get_static("Choice", "MULTIPLE")])
        jr.call(this, "initCommands_1", [l_command_listener])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InGameOptionsForm",
        "org.allbinary.game.configuration.InGameOptionsForm",
        "CommandForm",
        [],
        False,
        [],
        [#("DISPLAY", jr.JNull), #("SAVE", jr.JNull), #("DEFAULT", jr.JNull)],
        [
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m5__initcommands), 
            jr.Method("jinit_4", ["CommandListener", "String", "BasicColor", "BasicColor"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

