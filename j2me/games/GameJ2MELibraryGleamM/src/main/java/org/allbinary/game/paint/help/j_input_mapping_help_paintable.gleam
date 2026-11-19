// Generated Code Do Not Modify
// package org.allbinary.game.paint.help
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InputMappingHelpPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "commonSeps", jr.call_static("CommonSeps", "getInstance_0", []))
    jr.set_field(this, "stringUtil", jr.call_static("StringUtil", "getInstance_0", []))
    jr.set_field(this, "basicColorFactory", jr.call_static("BasicColorFactory", "getInstance_0", []))
    jr.set_field(this, "NONE", jr.get_field(jr.call_static("GameKeyFactory", "getInstance_0", []), "NONE"))
    jr.set_field(this, "EMPTY_STRING", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "keyMappingArray", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.set_field(this, "actionBasicColor", jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ZERO_ARRAY"))
    jr.set_field(this, "inputBasicColorArray", jr.new_array("L", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "updateMyFontProperties", jr.new("UpdateMyFontProperties", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m18__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        let l_update_my_font_properties = jr.new("UpdateMyFontProperties", [])
        jr.set_field(l_update_my_font_properties, "charHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        let l_string_maker = jr.new("StringMaker", [])
        let l_input_info = jr.get_inherited(this, "InputMappingHelpPaintable", "inputInfo")
        let l_size = jr.as_i(jr.alen(l_input_info))
        jr.set_field(l_update_my_font_properties, "actionStringArray", jr.new_array("L", 1, [l_size]))
        jr.set_field(l_update_my_font_properties, "keymappingBeginWidthArray", jr.new_array("I", 1, [l_size]))
        jr.set_field(l_update_my_font_properties, "actionStringDeltaXArray", jr.new_array("I", 1, [l_size]))
        jr.set_field(l_update_my_font_properties, "inputDeltaXArray", jr.new_array("I", 2, [l_size, jr.JInt(0)]))
        jr.set_field(l_update_my_font_properties, "sepArray", jr.new_array("L", 2, [l_size, jr.JInt(0)]))
        jr.set_field(l_update_my_font_properties, "sepWidthArray", jr.new_array("I", 2, [l_size, jr.JInt(0)]))
        let l_list = jr.cell(jr.JNull)
        let l_key_mappings = jr.cell(jr.JNull)
        let l_action_string = jr.cell(jr.JNull)
        let l_input = jr.cell(jr.JNull)
        let l_size2 = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_list, jr.aget(jr.get_field(this, "keyMappingArray"), jr.get(l_index)))
            jr.set(l_key_mappings, jr.call(this, "get_1", [jr.get(l_list)]))
            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
            jr.set(l_action_string, jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.aget(l_input_info, jr.get(l_index))]), "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "COLON")]), "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")]), "append_1", [jr.get_field(jr.get_field(this, "commonSeps"), "SPACE")]), "toString_0", []))
            jr.aset(jr.get_field(l_update_my_font_properties, "actionStringArray"), jr.get(l_index), jr.get(l_action_string))
            jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
            jr.aset(jr.get_field(l_update_my_font_properties, "keymappingBeginWidthArray"), jr.get(l_index), jr.shr(jr.call(l_font, "stringWidth_1", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.aget(jr.get_field(l_update_my_font_properties, "actionStringArray"), jr.get(l_index))]), "append_1", [jr.get(l_key_mappings)]), "toString_0", [])]), jr.JInt(1)))
            jr.aset(jr.get_field(l_update_my_font_properties, "actionStringDeltaXArray"), jr.get(l_index), jr.call(l_font, "stringWidth_1", [jr.get(l_action_string)]))
            jr.set(l_size2, jr.as_i(jr.call(jr.get(l_list), "size_0", [])))
            jr.aset(jr.get_field(l_update_my_font_properties, "inputDeltaXArray"), jr.get(l_index), jr.new_array("I", 1, [jr.get(l_size2)]))
            jr.aset(jr.get_field(l_update_my_font_properties, "sepArray"), jr.get(l_index), jr.new_array("L", 1, [jr.get(l_size2)]))
            jr.aset(jr.get_field(l_update_my_font_properties, "sepWidthArray"), jr.get(l_index), jr.new_array("I", 1, [jr.get(l_size2)]))
            {
                let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index2), jr.get(l_size2)) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                jr.set(l_input, jr.aget(jr.get_field(jr.get(l_list), "objectArray"), jr.get(l_index2)))
                jr.aset(jr.aget(jr.get_field(l_update_my_font_properties, "inputDeltaXArray"), jr.get(l_index)), jr.get(l_index2), jr.call(l_font, "stringWidth_1", [jr.call(jr.get(l_input), "getName_0", [])]))
                jr.aset(jr.aget(jr.get_field(l_update_my_font_properties, "sepArray"), jr.get(l_index)), jr.get(l_index2), jr.get_field(this, "EMPTY_STRING"))
                case jr.truth(jr.lt(jr.add(jr.get(l_index2), jr.JInt(1)), jr.call(jr.get(l_list), "size_0", []))) {
                    True -> {
                    case jr.truth(jr.eq(jr.call(jr.get(l_list), "size_0", []), jr.JInt(2))) {
                        True -> {
                        jr.aset(jr.aget(jr.get_field(l_update_my_font_properties, "sepArray"), jr.get(l_index)), jr.get(l_index2), jr.get_static("InputMappingHelpPaintable", "AND"))
                        Nil
                    }
                        False -> {
                        case jr.truth(jr.eq(jr.add(jr.get(l_index2), jr.JInt(2)), jr.call(jr.get(l_list), "size_0", []))) {
                            True -> {
                            jr.aset(jr.aget(jr.get_field(l_update_my_font_properties, "sepArray"), jr.get(l_index)), jr.get(l_index2), jr.get_static("InputMappingHelpPaintable", "MORE_THAN_TWO_IN_LIST_AND"))
                            Nil
                        }
                            False -> {
                            jr.aset(jr.aget(jr.get_field(l_update_my_font_properties, "sepArray"), jr.get(l_index)), jr.get(l_index2), jr.get_static("InputMappingHelpPaintable", "SEP"))
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
                case jr.truth(jr.ne(jr.aget(jr.aget(jr.get_field(l_update_my_font_properties, "sepArray"), jr.get(l_index)), jr.get(l_index2)), jr.get_field(this, "EMPTY_STRING"))) {
                    True -> {
                    jr.aset(jr.aget(jr.get_field(l_update_my_font_properties, "sepWidthArray"), jr.get(l_index)), jr.get(l_index2), jr.call(l_font, "stringWidth_1", [jr.aget(jr.aget(jr.get_field(l_update_my_font_properties, "sepArray"), jr.get(l_index)), jr.get(l_index2))]))
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
        jr.set_field(this, "updateMyFontProperties", l_update_my_font_properties)
        jr.call_super("HelpPaintable", this, "updateMeasurement_1", [l_graphics])
    jr.JNull
}

fn c1_m19__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_selected_game_key, l_selected_input] = jargs
        let l_string_maker = jr.new("StringMaker", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.JStr("selected GameKey: ")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [l_selected_game_key])]), "append_1", [jr.JStr(" Input: ")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [l_selected_input])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
        let l_game_key_mapping = jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", [])
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "gameInputMappingArray")))
        let l_key_info = jr.new_array("L", 1, [l_size])
        let l_key_mapping_array = jr.new_array("L", 1, [l_size])
        let l_action_basic_color = jr.new_array("L", 1, [l_size])
        let l_input_basic_color_array = jr.new_array("L", 2, [l_size])
        let l_game_input_mapping = jr.cell(jr.JNull)
        let l_game_key = jr.cell(jr.JNull)
        let l_list = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_game_input_mapping, jr.aget(jr.get_field(this, "gameInputMappingArray"), jr.get(l_index)))
            jr.set(l_game_key, jr.call(jr.get(l_game_input_mapping), "getGameKey_0", []))
            jr.set(l_list, jr.call(jr.call(l_game_key_mapping, "getInputMapping_0", []), "getMappedInput_1", [jr.get(l_game_key)]))
            let l_size2 = jr.as_i(jr.call(jr.get(l_list), "size_0", []))
            jr.aset(l_input_basic_color_array, jr.get(l_index), jr.new_array("L", 1, [l_size2]))
            {
                let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index2), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                jr.aset(jr.aget(l_input_basic_color_array, jr.get(l_index)), jr.get(l_index2), jr.get_inherited(this, "InputMappingHelpPaintable", "basicColor"))
                Nil
            })
                Nil
            }
            case jr.truth(jr.eq(jr.get(l_game_key), l_selected_game_key)) {
                True -> {
                jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.JStr("Found: selected GameKey: ")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [l_selected_game_key])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                jr.aset(l_action_basic_color, jr.get(l_index), jr.get_field(this, "selectedBasicColor"))
                let l_index_of_selected_input = jr.as_i(jr.call(jr.get(l_list), "indexOf_1", [l_selected_input]))
                case jr.truth(jr.ge(l_index_of_selected_input, jr.JInt(0))) {
                    True -> {
                    jr.call(l_string_maker, "delete_2", [jr.JInt(0), jr.call(l_string_maker, "length_0", [])])
                    jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(l_string_maker, "append_1", [jr.JStr("Found: selected Input: ")]), "append_1", [jr.call(jr.get_field(this, "stringUtil"), "toString_1", [l_selected_input])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
                    jr.aset(jr.aget(l_input_basic_color_array, jr.get(l_index)), l_index_of_selected_input, jr.get_field(this, "selectedBasicColor"))
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> {
                jr.aset(l_action_basic_color, jr.get(l_index), jr.get_inherited(this, "InputMappingHelpPaintable", "basicColor"))
                Nil
            }
            }
            jr.aset(l_key_info, jr.get(l_index), jr.call(jr.get(l_game_input_mapping), "getName_0", []))
            jr.aset(l_key_mapping_array, jr.get(l_index), jr.get(l_list))
            Nil
        })
            Nil
        }
        jr.set_field(this, "keyMappingArray", l_key_mapping_array)
        jr.set_field(this, "actionBasicColor", l_action_basic_color)
        jr.set_field(this, "inputBasicColorArray", l_input_basic_color_array)
        jr.call_super("HelpPaintable", this, "setInputInfoP_1", [l_key_info])
        jr.set_inherited(this, "InputMappingHelpPaintable", "myFontProcessor", jr.get_inherited(this, "InputMappingHelpPaintable", "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m20__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_list] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
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
                    jr.call(l_string_buffer, "append_1", [jr.get_static("InputMappingHelpPaintable", "AND")])
                    Nil
                }
                    False -> {
                    case jr.truth(jr.eq(jr.add(jr.get(l_index), jr.JInt(2)), jr.call(l_key_list, "size_0", []))) {
                        True -> {
                        jr.call(l_string_buffer, "append_1", [jr.get_static("InputMappingHelpPaintable", "MORE_THAN_TWO_IN_LIST_AND")])
                        Nil
                    }
                        False -> {
                        jr.call(l_string_buffer, "append_1", [jr.get_static("InputMappingHelpPaintable", "SEP")])
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

fn c1_m21__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_inherited(this, "InputMappingHelpPaintable", "myFontProcessor"), "process_1", [l_graphics])
        let l_half_width = jr.as_i(jr.call(jr.get_inherited(this, "InputMappingHelpPaintable", "displayInfo"), "getLastHalfWidth_0", []))
        jr.call(l_graphics, "setColor_1", [jr.call(jr.get_inherited(this, "InputMappingHelpPaintable", "basicColor"), "intValue_0", [])])
        jr.call(l_graphics, "drawString_4", [jr.get_inherited(this, "InputMappingHelpPaintable", "title"), jr.sub(l_half_width, jr.get_inherited(this, "InputMappingHelpPaintable", "titleBeginWidth")), jr.get_field(jr.get_field(this, "updateMyFontProperties"), "charHeight"), jr.get_inherited(this, "InputMappingHelpPaintable", "anchor")])
        let l_input_info = jr.get_inherited(this, "InputMappingHelpPaintable", "inputInfo")
        let l_size = jr.as_i(jr.alen(l_input_info))
        let l_y = jr.cell(jr.as_i(jr.JInt(0)))
        let l_delta_x = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size2 = jr.cell(jr.as_i(jr.JInt(0)))
        let l_action_string = jr.cell(jr.JNull)
        let l_input = jr.cell(jr.JNull)
        let l_list = jr.cell(jr.JNull)
        let l_sep = jr.cell(jr.JNull)
        let l_begin_width = jr.cell(jr.as_i(jr.JInt(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_y, jr.as_i(jr.mul(jr.add(jr.get(l_index), jr.JInt(3)), jr.get_field(jr.get_field(this, "updateMyFontProperties"), "charHeight"))))
            jr.set(l_delta_x, jr.as_i(jr.JInt(0)))
            jr.set(l_list, jr.aget(jr.get_field(this, "keyMappingArray"), jr.get(l_index)))
            jr.set(l_size2, jr.as_i(jr.call(jr.get(l_list), "size_0", [])))
            jr.set(l_begin_width, jr.as_i(jr.aget(jr.get_field(jr.get_field(this, "updateMyFontProperties"), "keymappingBeginWidthArray"), jr.get(l_index))))
            jr.call(l_graphics, "setColor_1", [jr.call(jr.aget(jr.get_field(this, "actionBasicColor"), jr.get(l_index)), "intValue_0", [])])
            jr.set(l_action_string, jr.aget(jr.get_field(jr.get_field(this, "updateMyFontProperties"), "actionStringArray"), jr.get(l_index)))
            jr.call(l_graphics, "drawString_4", [jr.get(l_action_string), jr.add(jr.sub(l_half_width, jr.get(l_begin_width)), jr.get(l_delta_x)), jr.get(l_y), jr.get_inherited(this, "InputMappingHelpPaintable", "anchor")])
            jr.compound(fn() { jr.get(l_delta_x) }, fn(jv) { jr.add(jv, jr.aget(jr.get_field(jr.get_field(this, "updateMyFontProperties"), "actionStringDeltaXArray"), jr.get(l_index))) }, fn(jv) { jr.set(l_delta_x, jv) })
            {
                let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index2), jr.get(l_size2)) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                jr.set(l_input, jr.aget(jr.get_field(jr.get(l_list), "objectArray"), jr.get(l_index2)))
                jr.call(l_graphics, "setColor_1", [jr.call(jr.aget(jr.aget(jr.get_field(this, "inputBasicColorArray"), jr.get(l_index)), jr.get(l_index2)), "intValue_0", [])])
                jr.call(l_graphics, "drawString_4", [jr.call(jr.get(l_input), "getName_0", []), jr.add(jr.sub(l_half_width, jr.get(l_begin_width)), jr.get(l_delta_x)), jr.get(l_y), jr.get_inherited(this, "InputMappingHelpPaintable", "anchor")])
                jr.compound(fn() { jr.get(l_delta_x) }, fn(jv) { jr.add(jv, jr.aget(jr.aget(jr.get_field(jr.get_field(this, "updateMyFontProperties"), "inputDeltaXArray"), jr.get(l_index)), jr.get(l_index2))) }, fn(jv) { jr.set(l_delta_x, jv) })
                jr.set(l_sep, jr.aget(jr.aget(jr.get_field(jr.get_field(this, "updateMyFontProperties"), "sepArray"), jr.get(l_index)), jr.get(l_index2)))
                jr.call(l_graphics, "setColor_1", [jr.call(jr.get_inherited(this, "InputMappingHelpPaintable", "basicColor"), "intValue_0", [])])
                jr.call(l_graphics, "drawString_4", [jr.get(l_sep), jr.add(jr.sub(l_half_width, jr.get(l_begin_width)), jr.get(l_delta_x)), jr.get(l_y), jr.get_inherited(this, "InputMappingHelpPaintable", "anchor")])
                jr.compound(fn() { jr.get(l_delta_x) }, fn(jv) { jr.add(jv, jr.aget(jr.aget(jr.get_field(jr.get_field(this, "updateMyFontProperties"), "sepWidthArray"), jr.get(l_index)), jr.get(l_index2))) }, fn(jv) { jr.set(l_delta_x, jv) })
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit17(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_input_mapping_array, l_background_basic_color, l_basic_color] = jargs
        jr.super_init("HelpPaintable", this, [jr.JStr("Input Mapping"), l_background_basic_color, l_basic_color])
        c1_jfields(this)
        jr.set_field(this, "gameInputMappingArray", l_game_input_mapping_array)
        jr.call(this, "update_2", [jr.get_field(this, "NONE"), jr.get_field(this, "NONE")])
        case jr.truth(case jr.truth(jr.eq(l_background_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "WHITE"))) { True -> jr.JBool(True) False -> jr.eq(l_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "WHITE")) }) {
            True -> {
            jr.set_field(this, "selectedBasicColor", jr.get_field(jr.get_field(this, "basicColorFactory"), "RED"))
            Nil
        }
            False -> {
            jr.set_field(this, "selectedBasicColor", jr.get_field(jr.get_field(this, "basicColorFactory"), "WHITE"))
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InputMappingHelpPaintable",
        "org.allbinary.game.paint.help.InputMappingHelpPaintable",
        "HelpPaintable",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("commonSeps", jr.JNull), #("stringUtil", jr.JNull), #("basicColorFactory", jr.JNull), #("NONE", jr.JNull), #("EMPTY_STRING", jr.JNull), #("gameInputMappingArray", jr.JNull), #("keyMappingArray", jr.JNull), #("actionBasicColor", jr.JNull), #("inputBasicColorArray", jr.JNull), #("selectedBasicColor", jr.JNull), #("updateMyFontProperties", jr.JNull)],
        [#("AND", jr.JStr(" and ")), #("SEP", jr.JStr(", ")), #("MORE_THAN_TWO_IN_LIST_AND", jr.JStr(", and "))],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m18__updatemeasurement), 
            jr.Method("update_2", ["GameKey", "Input"], False, c1_m19__update), 
            jr.Method("get_1", ["BasicArrayList"], False, c1_m20__get), 
            jr.Method("paint_1", ["Graphics"], False, c1_m21__paint), 
            jr.Method("jinit_3", ["GameInputMappingArr", "BasicColor", "BasicColor"], False, c1_jinit17)],
        c1_jfields,
        c1_jclinit,
    )
}

