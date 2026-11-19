// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFeatureFormUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "meUtil", jr.call_static("MIDPUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameFeatureFormUtil", "instance", jr.new("GameFeatureFormUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameFeatureFormUtil", "instance")
}

fn c1_m5__getchoicegroup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_name, l_option] = jargs
    let l_option = jr.as_i(l_option)
        let l_string_maker = jr.new("StringMaker", [])
        let l_choice_group = jr.new("ChoiceGroup", [l_name, l_option, jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []), jr.get_static("NullImage", "NULL_IMAGE_ARRAY")])
        let l_list = jr.call(l_hashtable, "get_1", [l_name])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        let l__a_d_d___c_h_o_i_c_e = jr.JStr(": Adding Choice: ")
        let l__g_e_t___c_h_o_i_c_e___g_r_o_u_p = jr.JStr("getChoiceGroup")
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_game_feature = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [l_name]), "append_1", [l__a_d_d___c_h_o_i_c_e]), "append_1", [jr.call(l_game_feature, "toString_0", [])]), "toString_0", []), this, l__g_e_t___c_h_o_i_c_e___g_r_o_u_p])
            jr.call(l_choice_group, "append_2", [jr.call(l_game_feature, "toString_0", []), jr.get_static("NullImage", "NULL_IMAGE")])
            case jr.truth(jr.call(l_features, "isFeature_1", [l_game_feature])) {
                True -> {
                jr.call(l_choice_group, "setSelectedIndex_2", [jr.get(l_index), jr.JBool(True)])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    l_choice_group
}

fn c1_m6__addchoicegroup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_form, l_hashtable, l_option] = jargs
    let l_option = jr.as_i(l_option)
        let l_string_maker = jr.new("StringMaker", [])
        let l__a_d_d_i_n_g___c_h_o_i_c_e___g_r_o_u_p = jr.JStr("Adding Choice Group: ")
        let l__a_d_d___c_h_o_i_c_e___g_r_o_u_p = jr.JStr("addChoiceGroup")
        let l_size = jr.as_i(jr.call(l_hashtable, "size_0", []))
        let l_object_array = jr.call(jr.call_static("HashtableUtil", "getInstance_0", []), "getKeysAsArray_1", [l_hashtable])
        let l_name = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_name, jr.aget(l_object_array, jr.get(l_index)))
            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [l__a_d_d_i_n_g___c_h_o_i_c_e___g_r_o_u_p]), "append_1", [jr.get(l_name)]), "toString_0", []), this, l__a_d_d___c_h_o_i_c_e___g_r_o_u_p])
            jr.call(jr.get_field(this, "meUtil"), "appendItem_2", [l_form, jr.call(this, "getChoiceGroup_3", [l_hashtable, jr.get(l_name), l_option])])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m7__setdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_form] = jargs
        let l_size = jr.as_i(jr.call(l_form, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_item = jr.call(l_form, "get_1", [jr.get(l_index)])
            case jr.truth(jr.instance_of(l_item, "GameConfigurationGauge")) {
                True -> {
                jr.call(jr.call_static("GameConfigurationUtil", "getInstance_0", []), "setDefault_1", [l_item])
                Nil
            }
                False -> case jr.truth(jr.instance_of(l_item, "ChoiceGroup")) {
                True -> {
                jr.call(jr.call_static("GameFeatureUtil", "getInstance_0", []), "setDefault_1", [l_item])
                Nil
            }
                False -> Nil
            }
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameFeatureFormUtil",
        "org.allbinary.game.configuration.feature.GameFeatureFormUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("meUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getChoiceGroup_3", ["ABHashtable", "String", "int"], False, c1_m5__getchoicegroup), 
            jr.Method("addChoiceGroup_3", ["CommandForm", "ABHashtable", "int"], False, c1_m6__addchoicegroup), 
            jr.Method("setDefault_1", ["CommandForm"], False, c1_m7__setdefault), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

