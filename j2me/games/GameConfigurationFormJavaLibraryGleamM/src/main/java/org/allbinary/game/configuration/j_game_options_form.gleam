// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameOptionsForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "meUtil", jr.call_static("MIDPUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__closeclientinformation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call_super("CommandForm", this, "close_0", [])
        jr.call(this, "save_1", [l_abe_client_information])
    jr.JNull
}

fn c1_m4__addtextfieldsifsimulated(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_key = jr.get_field(jr.call_static("OrientationData", "getInstance_0", []), "ORIENTATION_SENSOR_INPUT")
        let l_hashtable = jr.call(jr.call_static("GameFeatureChoiceGroups", "getExclusiveInstance_0", []), "get_0", [])
        case jr.truth(jr.ne(l_hashtable, jr.JNull)) {
            True -> {
            let l_list_can_be_null = jr.call(l_hashtable, "get_1", [l_key])
            case jr.truth(jr.ne(l_list_can_be_null, jr.JNull)) {
                True -> {
                let l_list = l_list_can_be_null
                case jr.truth(jr.call(l_list, "contains_1", [jr.get_field(jr.call_static("SensorFeatureFactory", "getInstance_0", []), "SIMULATED_ORIENTATION_SENSORS")])) {
                    True -> {
                    jr.call(this, "addTextFields_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m5__addtextfields(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_hashtable = jr.call_static("GameConfigurationTextInput", "getHashtable_0", [])
        let l_size = jr.as_i(jr.call(l_hashtable, "size_0", []))
        let l_object_array = jr.call(jr.call_static("HashtableUtil", "getInstance_0", []), "getKeysAsArray_1", [l_hashtable])
        let l_game_configuration_text_input = jr.cell(jr.JNull)
        let l_text_field = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_game_configuration_text_input, jr.call(l_hashtable, "get_1", [jr.aget(l_object_array, jr.get(l_index))]))
            jr.set(l_text_field, jr.new("TextField", [jr.call(jr.get(l_game_configuration_text_input), "getLabel_0", []), jr.call(jr.get(l_game_configuration_text_input), "getText_0", []), jr.JInt(30), jr.get_static("TextField", "ANY")]))
            jr.call(jr.get_field(this, "meUtil"), "appendItem_2", [this, jr.get(l_text_field)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m6__addconfiguration(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("addConfiguration")
        let l__n_a_m_e = jr.JStr("Name: ")
        let l_list = jr.call(jr.call_static("GameConfigurationSingleton", "getInstance_0", []), "getOptionsBasicArrayList_0", [])
        let l__g_a_u_g_e___c_h_a_n_g_e = jr.get_field(jr.call_static("MyCommandsFactory", "getInstance_0", []), "GAUGE_CHANGE")
        let l_string_maker = jr.new("StringMaker", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_game_configuration = jr.cell(jr.JNull)
        let l_gauge = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_game_configuration, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
            jr.call(jr.get_inherited(this, "GameOptionsForm", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [l__n_a_m_e]), "append_1", [jr.call(jr.get(l_game_configuration), "toString_0", [])]), "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.set(l_gauge, jr.new("GameConfigurationGauge", [jr.get(l_game_configuration)]))
            jr.call(jr.get(l_gauge), "setDefaultCommand_1", [l__g_a_u_g_e___c_h_a_n_g_e])
            jr.call(jr.get(l_gauge), "setItemCommandListener_1", [jr.new("GameFeatureItemCommandListener", [this])])
            jr.call(jr.get_field(this, "meUtil"), "appendItem_2", [this, jr.get(l_gauge)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m7__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
        jr.call_inherited(this, "GameOptionsForm", "removeAllCommands_0", [])
        jr.call_inherited(this, "GameOptionsForm", "addCommand_1", [jr.get_field(l_game_commands_factory, "CLOSE_OPTIONS")])
        jr.call_inherited(this, "GameOptionsForm", "addCommand_1", [jr.get_field(l_game_commands_factory, "DEFAULT_OPTIONS")])
        jr.call_inherited(this, "GameOptionsForm", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m8__save(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        let l_size = jr.as_i(jr.call_inherited(this, "GameOptionsForm", "size_0", []))
        let l_item = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_item, jr.call_inherited(this, "GameOptionsForm", "get_1", [jr.get(l_index)]))
            case jr.truth(jr.instance_of(jr.get(l_item), "GameConfigurationGauge")) {
                True -> {
                jr.call(jr.call_static("GameConfigurationUtil", "getInstance_0", []), "update_1", [jr.get(l_item)])
                Nil
            }
                False -> case jr.truth(jr.instance_of(jr.get(l_item), "TextField")) {
                True -> {
                jr.call_static("GameConfigurationTextInput", "update_1", [jr.get(l_item)])
                Nil
            }
                False -> Nil
            }
            }
            Nil
        })
            Nil
        }
        jr.call(jr.call_static("GameConfigurationUtil", "getInstance_0", []), "updateCompetitionValue_0", [])
        let l_hashtable = jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", [])
        let l__s_c_a_l_e = jr.get_field(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "SCALE")
        jr.call(l_hashtable, "put_2", [jr.call(l__s_c_a_l_e, "getName_0", []), jr.call_static("Integer", "toString_1", [jr.call(jr.call(l__s_c_a_l_e, "getValue_0", []), "intValue_0", [])])])
        let l_key_value_persistance = jr.call_static("GameConfigurationPersistanceSingleton", "getInstance_0", [])
        jr.call(l_key_value_persistance, "clear_0", [])
        jr.call(l_key_value_persistance, "loadAll_1", [l_abe_client_information])
        let l_list = jr.call(l_key_value_persistance, "getIds_0", [])
        jr.call(l_key_value_persistance, "save_2", [l_abe_client_information, l_hashtable])
        let l_size2 = jr.as_i(jr.call(l_list, "size_0", []))
        let l_integer = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_integer, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.call(l_key_value_persistance, "delete_2", [l_abe_client_information, jr.call(jr.get(l_integer), "intValue_0", [])])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("CommandForm", this, [l_command_listener, l_title, l_backgroun_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "GameOptionsForm", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameOptionsForm", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "GameOptionsForm", "commonStrings"), "CONSTRUCTOR")])
        jr.call(this, "addConfiguration_0", [])
        let l_game_feature_form_util = jr.call_static("GameFeatureFormUtil", "getInstance_0", [])
        jr.call(l_game_feature_form_util, "addChoiceGroup_3", [this, jr.call(jr.call_static("GameFeatureChoiceGroups", "getExclusiveInstance_0", []), "get_0", []), jr.get_static("Choice", "EXCLUSIVE")])
        jr.call(l_game_feature_form_util, "addChoiceGroup_3", [this, jr.call(jr.call_static("GameFeatureChoiceGroups", "getMultipleInstance_0", []), "get_0", []), jr.get_static("Choice", "MULTIPLE")])
        jr.call(this, "initCommands_1", [l_command_listener])
        jr.call_inherited(this, "GameOptionsForm", "setItemStateListener_1", [jr.new("GameFeatureItemStateListener", [this])])
        jr.call(this, "addTextFieldsIfSimulated_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameOptionsForm",
        "org.allbinary.game.configuration.GameOptionsForm",
        "CommandForm",
        [],
        False,
        [#("meUtil", jr.JNull)],
        [],
        [
            jr.Method("closeClientInformation_1", ["AbeClientInformationInterface"], False, c1_m3__closeclientinformation), 
            jr.Method("addTextFieldsIfSimulated_0", [], False, c1_m4__addtextfieldsifsimulated), 
            jr.Method("addTextFields_0", [], False, c1_m5__addtextfields), 
            jr.Method("addConfiguration_0", [], False, c1_m6__addconfiguration), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m7__initcommands), 
            jr.Method("save_1", ["AbeClientInformationInterface"], False, c1_m8__save), 
            jr.Method("jinit_4", ["CommandListener", "String", "BasicColor", "BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

