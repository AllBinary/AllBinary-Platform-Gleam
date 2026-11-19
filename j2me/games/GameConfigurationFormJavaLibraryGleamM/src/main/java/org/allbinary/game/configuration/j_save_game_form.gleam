// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SaveGameForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "meUtil", jr.call_static("MIDPUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SaveGameForm", "FORM", jr.call_static("CommandForm", "getNullCommandForm_0", []))
    jr.JNull
}

fn c1_m2__createform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.set_static("SaveGameForm", "FORM", jr.new("SaveGameForm", [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color]))
    jr.get_static("SaveGameForm", "FORM")
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SaveGameForm", "FORM")
}

fn c1_m6__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
        jr.call_inherited(this, "SaveGameForm", "removeAllCommands_0", [])
        jr.call_inherited(this, "SaveGameForm", "addCommand_1", [jr.get_field(l_game_commands_factory, "SAVE")])
        jr.call_inherited(this, "SaveGameForm", "addCommand_1", [jr.get_field(l_game_commands_factory, "CLOSE_AND_SHOW_GAME_CANVAS")])
        jr.call_inherited(this, "SaveGameForm", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("CommandForm", this, [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "SaveGameForm", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "SaveGameForm", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "SaveGameForm", "commonStrings"), "CONSTRUCTOR")])
        let l_time_string = jr.call_static("Long", "toString_1", [jr.call(jr.call_static("ABSystemWrapper", "getInstance_0", []), "currentTimeMillis_0", [])])
        jr.call(jr.get_field(this, "meUtil"), "appendItem_2", [this, jr.new("TextField", [jr.JStr("Name: "), l_time_string, jr.JInt(30), jr.get_static("TextField", "ANY")])])
        jr.call(this, "initCommands_1", [l_command_listener])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SaveGameForm",
        "org.allbinary.game.configuration.SaveGameForm",
        "CommandForm",
        [],
        False,
        [#("meUtil", jr.JNull)],
        [#("FORM", jr.JNull)],
        [
            jr.Method("createForm_4", ["CommandListener", "String", "BasicColor", "BasicColor"], True, c1_m2__createform), 
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m6__initcommands), 
            jr.Method("jinit_4", ["CommandListener", "String", "BasicColor", "BasicColor"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

