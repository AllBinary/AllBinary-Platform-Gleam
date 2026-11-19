// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFeatureUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "enumerationUtil", jr.call_static("EnumerationUtil", "getInstance_0", []))
    jr.set_field(this, "ON_GAME_FEATURE_CHANGE", jr.JStr("onGameFeatureChange"))
    jr.set_field(this, "GAME_FEATURE_CHANGED", jr.JStr("Game Feature Changed: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameFeatureUtil", "instance", jr.new("GameFeatureUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameFeatureUtil", "instance")
}

fn c1_m8__setdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_choice_group] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("setDefault")
        let l__s_e_l_e_c_t_e_d___a_r_r_a_y___r_e_t_u_r_n = jr.JStr("selectedArray_return[")
        let l__s_e_l_e_c_t_e_d___s_e_p = jr.JStr("] = ")
        let l_selected_array__return = jr.new_array("Z", 1, [jr.call(l_choice_group, "size_0", [])])
        let l_total = jr.as_i(jr.call(l_choice_group, "getSelectedFlags_1", [l_selected_array__return]))
        jr.call(l_string_buffer, "append_1", [jr.JStr("Multiple Total Choices: ")])
        jr.call(l_string_buffer, "appendint_1", [l_total])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_selected_array__return)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_is_selected = jr.aget(l_selected_array__return, jr.get(l_index))
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.call(l_string_buffer, "append_1", [l__s_e_l_e_c_t_e_d___a_r_r_a_y___r_e_t_u_r_n])
            jr.call(l_string_buffer, "appendint_1", [jr.get(l_index)])
            jr.call(l_string_buffer, "append_1", [l__s_e_l_e_c_t_e_d___s_e_p])
            jr.call(l_string_buffer, "appendboolean_1", [l_is_selected])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            let l_selected_choice_label = jr.call(l_choice_group, "getString_1", [jr.get(l_index)])
            let l_game_feature = jr.call_static("Feature", "getInstance_1", [l_selected_choice_label])
            case jr.truth(jr.call(l_features, "isDefault_1", [l_game_feature])) {
                True -> {
                jr.call(l_features, "add_1", [l_game_feature])
                jr.call(l_choice_group, "setSelectedIndex_2", [jr.get(l_index), jr.JBool(True)])
                Nil
            }
                False -> {
                jr.call(l_features, "remove_1", [l_game_feature])
                jr.call(l_choice_group, "setSelectedIndex_2", [jr.get(l_index), jr.JBool(False)])
                Nil
            }
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__updatemultiple(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_choice_group] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("updateMultiple")
        let l__s_e_l_e_c_t_e_d___a_r_r_a_y___r_e_t_u_r_n = jr.JStr("selectedArray_return[")
        let l__s_e_l_e_c_t_e_d___s_e_p = jr.JStr("] = ")
        let l_selected_array__return = jr.new_array("Z", 1, [jr.call(l_choice_group, "size_0", [])])
        let l_total = jr.as_i(jr.call(l_choice_group, "getSelectedFlags_1", [l_selected_array__return]))
        jr.call(l_string_buffer, "append_1", [jr.JStr("Multiple Total Choices: ")])
        jr.call(l_string_buffer, "appendint_1", [l_total])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_selected_array__return)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_is_selected = jr.aget(l_selected_array__return, jr.get(l_index))
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.call(l_string_buffer, "append_1", [l__s_e_l_e_c_t_e_d___a_r_r_a_y___r_e_t_u_r_n])
            jr.call(l_string_buffer, "appendint_1", [jr.get(l_index)])
            jr.call(l_string_buffer, "append_1", [l__s_e_l_e_c_t_e_d___s_e_p])
            jr.call(l_string_buffer, "appendboolean_1", [l_is_selected])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            let l_selected_choice_label = jr.call(l_choice_group, "getString_1", [jr.get(l_index)])
            let l_game_feature = jr.call_static("Feature", "getInstance_1", [l_selected_choice_label])
            case jr.truth(case jr.truth(jr.not(l_is_selected)) { True -> jr.call(l_features, "isFeature_1", [l_game_feature]) False -> jr.JBool(False) }) {
                True -> {
                jr.call(l_features, "remove_1", [l_game_feature])
                Nil
            }
                False -> case jr.truth(case jr.truth(l_is_selected) { True -> jr.not(jr.call(l_features, "isFeature_1", [l_game_feature])) False -> jr.JBool(False) }) {
                True -> {
                jr.call(l_features, "add_1", [l_game_feature])
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

fn c1_m10__updateexclusiveforchoicegroup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_choice_group] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("updateExclusive")
        let l__s_e_l_e_c_t_e_d___a_r_r_a_y___r_e_t_u_r_n = jr.JStr("selectedArray_return[")
        let l__s_e_l_e_c_t_e_d___s_e_p = jr.JStr("] = ")
        let l_selected_array__return = jr.new_array("Z", 1, [jr.call(l_choice_group, "size_0", [])])
        let l_total = jr.as_i(jr.call(l_choice_group, "getSelectedFlags_1", [l_selected_array__return]))
        jr.call(l_string_buffer, "append_1", [jr.JStr("Exclusive Total Choices: 1==")])
        jr.call(l_string_buffer, "appendint_1", [l_total])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_selected_array__return)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_is_selected = jr.aget(l_selected_array__return, jr.get(l_index))
            jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
            jr.call(l_string_buffer, "append_1", [l__s_e_l_e_c_t_e_d___a_r_r_a_y___r_e_t_u_r_n])
            jr.call(l_string_buffer, "appendint_1", [jr.get(l_index)])
            jr.call(l_string_buffer, "append_1", [l__s_e_l_e_c_t_e_d___s_e_p])
            jr.call(l_string_buffer, "appendboolean_1", [l_is_selected])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            case jr.truth(l_is_selected) {
                True -> {
                let l_selected_choice_label = jr.call(l_choice_group, "getString_1", [jr.get(l_index)])
                jr.call(this, "updateExclusive_1", [l_selected_choice_label])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m11__isexclusive(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item_label] = jargs
    jr.method(fn() {
            let l_enumeration = jr.call(jr.call(jr.call_static("GameFeatureChoiceGroups", "getExclusiveInstance_0", []), "get_0", []), "keys_0", [])
            let l_name = jr.cell(jr.JNull)
            jr.while_loop("", fn() { jr.call(jr.get_field(this, "enumerationUtil"), "hasMoreElements_1", [l_enumeration]) }, fn() {
            jr.set(l_name, jr.call(jr.get_field(this, "enumerationUtil"), "nextElement_1", [l_enumeration]))
            case jr.truth(jr.eq(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [l_item_label, jr.get(l_name)]), jr.JInt(0))) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m12__updateexclusive(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_selected_choice_label] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "ITEM_LABEL")]), "append_1", [l_selected_choice_label]), "toString_0", []), this, jr.JStr("updateExclusive")])
        let l_game_feature = jr.call_static("Feature", "getInstance_1", [l_selected_choice_label])
        let l_hashtable = jr.call(jr.call_static("GameFeatureChoiceGroups", "getExclusiveInstance_0", []), "get_0", [])
        let l_object_array = jr.call(jr.call_static("HashtableUtil", "getInstance_0", []), "getKeysAsArray_1", [l_hashtable])
        let l_basic_array_list = jr.cell(jr.JNull)
        let l_any_type = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.alen(l_object_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_any_type, jr.aget(l_object_array, jr.get(l_index)))
            jr.set(l_basic_array_list, jr.call(l_hashtable, "get_1", [jr.get(l_any_type)]))
            jr.call(this, "updateExclusiveList_2", [l_game_feature, jr.get(l_basic_array_list)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m13__updateexclusivelist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature, l_list] = jargs
        case jr.truth(jr.call(l_list, "contains_1", [l_game_feature])) {
            True -> {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_add_index = jr.as_i(jr.call(l_list, "indexOf_1", [l_game_feature]))
            let l_size = jr.as_i(jr.call(l_list, "size_0", []))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                case jr.truth(jr.ne(l_add_index, jr.get(l_index))) {
                    True -> {
                    jr.call(l_features, "remove_1", [jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))])
                    Nil
                }
                    False -> {
                    jr.call(l_features, "add_1", [jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))])
                    Nil
                }
                }
                Nil
            })
                Nil
            }
            Nil
        }
            False -> Nil
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
        "GameFeatureUtil",
        "org.allbinary.game.configuration.feature.GameFeatureUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("tsUtil", jr.JNull), #("enumerationUtil", jr.JNull), #("ON_GAME_FEATURE_CHANGE", jr.JNull), #("GAME_FEATURE_CHANGED", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("setDefault_1", ["ChoiceGroup"], False, c1_m8__setdefault), 
            jr.Method("updateMultiple_1", ["ChoiceGroup"], False, c1_m9__updatemultiple), 
            jr.Method("updateExclusiveForChoiceGroup_1", ["ChoiceGroup"], False, c1_m10__updateexclusiveforchoicegroup), 
            jr.Method("isExclusive_1", ["String"], False, c1_m11__isexclusive), 
            jr.Method("updateExclusive_1", ["String"], False, c1_m12__updateexclusive), 
            jr.Method("updateExclusiveList_2", ["Feature", "BasicArrayList"], False, c1_m13__updateexclusivelist), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

