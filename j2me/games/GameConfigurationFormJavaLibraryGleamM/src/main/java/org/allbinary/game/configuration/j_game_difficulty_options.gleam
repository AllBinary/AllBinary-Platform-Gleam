// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameDifficultyOptions

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "meUtil", jr.call_static("MIDPUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("CommandForm", this, "open_0", [])
    jr.JNull
}

fn c1_m5__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("CommandForm", this, "close_0", [])
        jr.call(this, "save_0", [])
    jr.JNull
}

fn c1_m6__save(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_difficulty_factory = jr.call_static("GameDifficultyFactory", "getInstance_0", [])
        jr.call(l_game_difficulty_factory, "setLevel_1", [jr.call(this, "getSelectedId_0", [])])
    jr.JNull
}

fn c1_m7__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
        jr.call_inherited(this, "GameDifficultyOptions", "removeAllCommands_0", [])
        jr.call_inherited(this, "GameDifficultyOptions", "addCommand_1", [jr.get_field(l_game_commands_factory, "CLOSE_AND_SHOW_GAME_CANVAS")])
        jr.call_inherited(this, "GameDifficultyOptions", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m8__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_inherited(this, "GameDifficultyOptions", "deleteAll_0", [])
        jr.call(this, "add_3", [jr.get_field(this, "list"), jr.JStr("Difficulty"), jr.get_static("Choice", "EXCLUSIVE")])
        jr.call_super("CommandForm", this, "update_0", [])
    jr.JNull
}

fn c1_m9__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list, l_name, l_option] = jargs
    let l_option = jr.as_i(l_option)
        let l_choice_group = jr.call(this, "getChoiceGroup_3", [l_list, l_name, l_option])
        case jr.truth(jr.gt(jr.call(l_list, "size_0", []), jr.JInt(0))) {
            True -> {
            jr.call(l_choice_group, "setSelectedIndex_2", [jr.JInt(0), jr.JBool(True)])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "meUtil"), "appendItem_2", [this, l_choice_group])
    jr.JNull
}

fn c1_m10__getchoicegroup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list, l_name, l_option] = jargs
    let l_option = jr.as_i(l_option)
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("addChoiceGroup")
        let l__n_a_m_e = jr.JStr("Adding Choice: ")
        let l_choice_group = jr.new("ChoiceGroup", [l_name, l_option, jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []), jr.get_static("NullImage", "NULL_IMAGE_ARRAY")])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_any_type = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_any_type, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.call(jr.get_inherited(this, "GameDifficultyOptions", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l__n_a_m_e]), "append_1", [jr.call(jr.get(l_any_type), "toString_0", [])]), "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call(l_choice_group, "append_2", [jr.call(jr.get(l_any_type), "toString_0", []), jr.get_static("NullImage", "NULL_IMAGE")])
            Nil
        })
            Nil
        }
    l_choice_group
}

fn c1_m11__setselectedid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id] = jargs
    let l_id = jr.as_i(l_id)
        let l_choice_group = jr.call_inherited(this, "GameDifficultyOptions", "get_1", [jr.JInt(0)])
        jr.call(l_choice_group, "setSelectedIndex_2", [l_id, jr.JBool(True)])
    jr.JNull
}

fn c1_m12__getselectedid(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_choice_group = jr.call_inherited(this, "GameDifficultyOptions", "get_1", [jr.JInt(0)])
    jr.as_i(jr.call(l_choice_group, "getSelectedIndex_0", []))
}

fn c1_m13__getselectedtext(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_choice_group = jr.call_inherited(this, "GameDifficultyOptions", "get_1", [jr.JInt(0)])
        let l_value = jr.as_i(jr.call(jr.call_static("Integer", "valueOf_1", [jr.call(l_choice_group, "getString_1", [jr.call(l_choice_group, "getSelectedIndex_0", [])])]), "intValue_0", []))
    jr.as_i(l_value)
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_title, l_list, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("CommandForm", this, [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "GameDifficultyOptions", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameDifficultyOptions", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "GameDifficultyOptions", "commonStrings"), "CONSTRUCTOR")])
        jr.set_field(this, "list", l_list)
        jr.call(this, "update_0", [])
        jr.call(this, "initCommands_1", [l_command_listener])
        let l_game_difficulty_factory = jr.call_static("GameDifficultyFactory", "getInstance_0", [])
        jr.call(this, "setSelectedId_1", [jr.call(l_game_difficulty_factory, "getLevel_0", [])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameDifficultyOptions",
        "org.allbinary.game.configuration.GameDifficultyOptions",
        "CommandForm",
        [],
        False,
        [#("meUtil", jr.JNull), #("list", jr.JNull)],
        [],
        [
            jr.Method("open_0", [], False, c1_m4__open), 
            jr.Method("close_0", [], False, c1_m5__close), 
            jr.Method("save_0", [], False, c1_m6__save), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m7__initcommands), 
            jr.Method("update_0", [], False, c1_m8__update), 
            jr.Method("add_3", ["BasicArrayList", "String", "int"], False, c1_m9__add), 
            jr.Method("getChoiceGroup_3", ["BasicArrayList", "String", "int"], False, c1_m10__getchoicegroup), 
            jr.Method("setSelectedId_1", ["int"], False, c1_m11__setselectedid), 
            jr.Method("getSelectedId_0", [], False, c1_m12__getselectedid), 
            jr.Method("getSelectedText_0", [], False, c1_m13__getselectedtext), 
            jr.Method("jinit_5", ["CommandListener", "String", "BasicArrayList", "BasicColor", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

