// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LoadGameForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "meUtil", jr.call_static("MIDPUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
        jr.call_inherited(this, "LoadGameForm", "removeAllCommands_0", [])
        jr.call_inherited(this, "LoadGameForm", "addCommand_1", [jr.get_field(l_game_commands_factory, "LOAD_FILE")])
        jr.call_inherited(this, "LoadGameForm", "addCommand_1", [jr.get_field(l_game_commands_factory, "DELETE_FILE")])
        jr.call_inherited(this, "LoadGameForm", "addCommand_1", [jr.get_field(l_game_commands_factory, "CLOSE_AND_SHOW_GAME_CANVAS")])
        jr.call_inherited(this, "LoadGameForm", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m5__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_list = jr.call(jr.call_static("GamePersistanceSingleton", "getInstance_0", []), "getIds_0", [])
        jr.call_inherited(this, "LoadGameForm", "deleteAll_0", [])
        case jr.truth(jr.gt(jr.call(l_list, "size_0", []), jr.JInt(0))) {
            True -> {
            jr.call(this, "add_3", [l_list, jr.JStr("Select A Saved Game"), jr.get_static("Choice", "EXCLUSIVE")])
            jr.set_field(this, "areChoices", jr.JBool(True))
            Nil
        }
            False -> {
            jr.call(jr.get_field(this, "meUtil"), "appendItem_2", [this, jr.new("StringItem", [jr.JStr("No Saved Games"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("LcduiItem", "PLAIN")])])
            jr.set_field(this, "areChoices", jr.JBool(False))
            Nil
        }
        }
        jr.call_super("CommandForm", this, "update_0", [])
    jr.JNull
}

fn c1_m6__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_m7__getchoicegroup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list, l_name, l_option] = jargs
    let l_option = jr.as_i(l_option)
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("getChoiceGroup")
        let l__a_d_d_i_n_g___c_h_o_i_c_e = jr.JStr("Adding Choice: ")
        let l_choice_group = jr.new("ChoiceGroup", [l_name, l_option, jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []), jr.get_static("NullImage", "NULL_IMAGE_ARRAY")])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_any_type = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            jr.call(jr.get_inherited(this, "LoadGameForm", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l__a_d_d_i_n_g___c_h_o_i_c_e]), "append_1", [jr.call(l_any_type, "toString_0", [])]), "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call(l_choice_group, "append_2", [jr.call(l_any_type, "toString_0", []), jr.get_static("NullImage", "NULL_IMAGE")])
            Nil
        })
            Nil
        }
    l_choice_group
}

fn c1_m8__getselectedid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.get_field(this, "areChoices")) {
            True -> {
            let l_choice_group = jr.call_inherited(this, "LoadGameForm", "get_1", [jr.JInt(0)])
            jr.ret(jr.as_i(jr.call(l_choice_group, "getSelectedIndex_0", [])))
            Nil
        }
            False -> {
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m9__getselectedtext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.get_field(this, "areChoices")) {
            True -> {
            let l_choice_group = jr.call_inherited(this, "LoadGameForm", "get_1", [jr.JInt(0)])
            let l_value = jr.as_i(jr.call(jr.call_static("Integer", "valueOf_1", [jr.call(l_choice_group, "getString_1", [jr.call(l_choice_group, "getSelectedIndex_0", [])])]), "intValue_0", []))
            jr.ret(jr.as_i(l_value))
            Nil
        }
            False -> {
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("CommandForm", this, [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "LoadGameForm", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "LoadGameForm", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "LoadGameForm", "commonStrings"), "CONSTRUCTOR")])
        jr.call(this, "update_0", [])
        jr.call(this, "initCommands_1", [l_command_listener])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LoadGameForm",
        "org.allbinary.game.configuration.LoadGameForm",
        "CommandForm",
        [],
        False,
        [#("meUtil", jr.JNull), #("areChoices", jr.JBool(False))],
        [],
        [
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m4__initcommands), 
            jr.Method("update_0", [], False, c1_m5__update), 
            jr.Method("add_3", ["BasicArrayList", "String", "int"], False, c1_m6__add), 
            jr.Method("getChoiceGroup_3", ["BasicArrayList", "String", "int"], False, c1_m7__getchoicegroup), 
            jr.Method("getSelectedId_0", [], False, c1_m8__getselectedid), 
            jr.Method("getSelectedText_0", [], False, c1_m9__getselectedtext), 
            jr.Method("jinit_4", ["CommandListener", "String", "BasicColor", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

