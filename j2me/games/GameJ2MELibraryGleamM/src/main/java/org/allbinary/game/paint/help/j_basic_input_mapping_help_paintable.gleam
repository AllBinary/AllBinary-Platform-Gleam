// Generated Code Do Not Modify
// package org.allbinary.game.paint.help
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicInputMappingHelpPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.get_field(jr.call_static("GameKeyFactory", "getInstance_0", []), "NONE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_selected_game_key, l_selected_input] = jargs
        let l_game_key_mapping = jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", [])
        let l__e_q_u_a_l = jr.JStr(" = ")
        let l_string_maker = jr.new("StringMaker", [])
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "gameInputMappingArray")))
        let l_key_info = jr.new_array("L", 1, [l_size])
        let l_game_input_mapping = jr.cell(jr.JNull)
        let l_game_key = jr.cell(jr.JNull)
        let l_list = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_game_input_mapping, jr.aget(jr.get_field(this, "gameInputMappingArray"), jr.get(l_index)))
            jr.set(l_game_key, jr.call(jr.get(l_game_input_mapping), "getGameKey_0", []))
            jr.set(l_list, jr.call(jr.call(l_game_key_mapping, "getInputMapping_0", []), "getMappedInput_1", [jr.get(l_game_key)]))
            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
            jr.aset(l_key_info, jr.get(l_index), jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.call(jr.get(l_game_input_mapping), "getName_0", [])]), "append_1", [l__e_q_u_a_l]), "append_1", [jr.call(this, "get_1", [jr.get(l_list)])]), "toString_0", []))
            Nil
        })
            Nil
        }
        jr.call_super("HelpPaintable", this, "setInputInfoP_1", [l_key_info])
    jr.JNull
}

fn c1_m5__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_list] = jargs
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_string_buffer = jr.new("StringMaker", [])
        let l__a_n_d = jr.JStr("and ")
        let l_key = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(l_key_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_key, jr.aget(jr.get_field(l_key_list, "objectArray"), jr.get(l_index)))
            jr.call(l_string_buffer, "append_1", [jr.call(jr.get(l_key), "getName_0", [])])
            case jr.truth(jr.lt(jr.add(jr.get(l_index), jr.JInt(1)), jr.call(l_key_list, "size_0", []))) {
                True -> {
                case jr.truth(jr.eq(jr.call(l_key_list, "size_0", []), jr.JInt(2))) {
                    True -> {
                    jr.call(jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")]), "append_1", [l__a_n_d])
                    Nil
                }
                    False -> {
                    case jr.truth(jr.eq(jr.add(jr.get(l_index), jr.JInt(2)), jr.call(l_key_list, "size_0", []))) {
                        True -> {
                        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
                        jr.call(l_string_buffer, "append_1", [l__a_n_d])
                        Nil
                    }
                        False -> {
                        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA_SEP")])
                        Nil
                    }
                    }
                    Nil
                }
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_input_mapping_array, l_basic_color] = jargs
        jr.super_init("HelpPaintable", this, [jr.JStr("Help Screen"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), l_basic_color])
        c1_jfields(this)
        jr.set_field(this, "gameInputMappingArray", l_game_input_mapping_array)
        jr.call(this, "update_2", [jr.get_field(this, "NONE"), jr.get_field(this, "NONE")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicInputMappingHelpPaintable",
        "org.allbinary.game.paint.help.BasicInputMappingHelpPaintable",
        "HelpPaintable",
        [],
        False,
        [#("gameInputMappingArray", jr.JNull), #("NONE", jr.JNull)],
        [],
        [
            jr.Method("update_2", ["GameKey", "Input"], False, c1_m4__update), 
            jr.Method("get_1", ["BasicArrayList"], False, c1_m5__get), 
            jr.Method("jinit_2", ["GameInputMappingArr", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

