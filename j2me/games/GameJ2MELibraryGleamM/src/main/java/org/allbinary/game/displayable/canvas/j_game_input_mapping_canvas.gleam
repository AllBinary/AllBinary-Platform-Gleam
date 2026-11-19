// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInputMappingCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.get_field(jr.call_static("GameKeyFactory", "getInstance_0", []), "NONE"))
    jr.set_field(this, "selectedGameKey", jr.get_field(this, "NONE"))
    jr.set_field(this, "selectedInput", jr.get_field(this, "NONE"))
    jr.set_field(this, "inputFactory", jr.call_static("InputFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameInputMappingCanvas", "DISPLAY", jr.new("Command", [jr.JStr("Controls"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(2)]))
    jr.set_static("GameInputMappingCanvas", "DEFAULT", jr.new("Command", [jr.JStr("Default"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(2)]))
    jr.JNull
}

fn c1_m13__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("GameCommandCanvas", this, "close_0", [])
        jr.call(jr.get_field(this, "paintable"), "process_0", [])
        jr.set_field(this, "selectedGameKey", jr.get_field(this, "NONE"))
        jr.set_field(this, "selectedInput", jr.get_field(this, "NONE"))
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m14__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "GameInputMappingCanvas", "removeAllCommands_0", [])
        jr.call_inherited(this, "GameInputMappingCanvas", "addCommand_1", [jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "CLOSE_AND_SHOW_GAME_CANVAS")])
        jr.call_inherited(this, "GameInputMappingCanvas", "addCommand_1", [jr.get_static("GameInputMappingCanvas", "DEFAULT")])
        jr.call_inherited(this, "GameInputMappingCanvas", "addCommand_1", [jr.get_static("GameInputMappingInstructionsCanvas", "DISPLAY")])
        jr.call_inherited(this, "GameInputMappingCanvas", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m15__keypressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyPressedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m16__keyreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call_inherited(this, "GameInputMappingCanvas", "keyReleasedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m17__keyrepeated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call_inherited(this, "GameInputMappingCanvas", "keyRepeatedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m18__keypressedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(this, "addGameKey_2", [l_key_code, jr.JBool(False)])
        jr.call_super("GameCommandCanvas", this, "keyPressedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m20__addgamekey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.try_catch(fn() {
            jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Raw Device Key Code: ")]), "append_1", [jr.call_static("Integer", "toHexString_1", [l_key_code])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "GameInputMappingCanvas", "gameInputStrings"), "ADD_KEY_EVENT")])
            let l_game_key = jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "inputToGameKeyMapping"), "getInstanceForCanvas_2", [this, l_key_code])
            let l_input = jr.call(jr.get_field(this, "inputFactory"), "getInstanceById_1", [l_key_code])
            jr.call(this, "processInputMapping_2", [l_game_key, l_input])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "put_4", [jr.JStr("Key Event Error"), this, jr.get_field(jr.get_inherited(this, "GameInputMappingCanvas", "gameInputStrings"), "ADD_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m21__processinputmapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key, l_input] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Start Passed GameKey: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [l_game_key])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Input: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [l_input])])
        jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(jr.get_inherited(this, "GameInputMappingCanvas", "commonStrings"), "PROCESS")])
        case jr.truth(jr.ne(jr.get_field(this, "selectedGameKey"), jr.get_field(this, "NONE"))) {
            True -> {
            jr.call(this, "gameActionCrud_2", [l_game_key, l_input])
            Nil
        }
            False -> {
            jr.call(this, "setSelectedAction_1", [l_game_key])
            Nil
        }
        }
    jr.JNull
}

fn c1_m22__setselectedaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key] = jargs
        jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Selected GameKey: ")]), "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [l_game_key])]), "toString_0", []), this, jr.JStr("setSelectedAction")])
        jr.set_field(this, "selectedGameKey", l_game_key)
        jr.set_field(this, "selectedInput", jr.get_field(this, "NONE"))
        jr.call(jr.get_field(this, "helpPaintable"), "update_2", [jr.get_field(this, "selectedGameKey"), jr.get_field(this, "selectedInput")])
        jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "repaintBehavior"), "onChangeRepaint_1", [this])
    jr.JNull
}

fn c1_m23__gameactioncrud(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key, l_input] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Start GameKey: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [jr.get_field(this, "selectedGameKey")])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Input: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [jr.get_field(this, "selectedInput")])])
        jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.JStr("gameActionCrud")])
        case jr.truth(jr.eq(jr.get_field(this, "selectedInput"), jr.get_field(this, "NONE"))) {
            True -> {
            let l_list = jr.call(jr.call(jr.get_field(this, "inputMapping"), "getInputMapping_0", []), "getMappedInput_1", [jr.get_field(this, "selectedGameKey")])
            let l_is_input_already_mapped_to_selected_action = jr.call(l_list, "contains_1", [l_input])
            case jr.truth(l_is_input_already_mapped_to_selected_action) {
                True -> {
                jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Already Mapped Input: ")]), "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [l_input])]), "toString_0", []), this, jr.JStr("gameActionCrud")])
                jr.set_field(this, "selectedInput", l_input)
                jr.call(jr.get_field(this, "helpPaintable"), "update_2", [jr.get_field(this, "selectedGameKey"), jr.get_field(this, "selectedInput")])
                jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "repaintBehavior"), "onChangeRepaint_1", [this])
                Nil
            }
                False -> {
                jr.call(this, "addNewMapping_2", [l_game_key, l_input])
                Nil
            }
            }
            Nil
        }
            False -> case jr.truth(jr.call(jr.get_field(this, "inputMapping"), "isDelete_1", [l_input])) {
            True -> {
            jr.call(this, "deleteCurrentMapping_0", [])
            Nil
        }
            False -> {
            jr.call(this, "setSelectedAction_1", [l_game_key])
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_m24__addnewmapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key, l_input] = jargs
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("addNewMapping")
        jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameInputMappingCanvas", "commonStrings"), "START"), this, l__m_e_t_h_o_d___n_a_m_e])
        let l_is_input_already_mapped = jr.call(jr.call(jr.get_field(this, "inputMapping"), "getInputMapping_0", []), "isMapped_1", [l_input])
        case jr.truth(case jr.truth(jr.not(l_is_input_already_mapped)) { True -> jr.not(jr.call(jr.get_field(this, "inputMapping"), "isSystemInput_1", [l_input])) False -> jr.JBool(False) }) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.JStr("Add Key Mapping : GameKey: ")])
            jr.call(l_string_buffer, "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [jr.get_field(this, "selectedGameKey")])])
            jr.call(l_string_buffer, "append_1", [jr.JStr(" Input: ")])
            jr.call(l_string_buffer, "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [jr.get_field(this, "selectedInput")])])
            jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call(jr.call(jr.get_field(this, "inputMapping"), "getInputMapping_0", []), "add_2", [jr.get_field(this, "selectedGameKey"), l_input])
            jr.set_field(this, "selectedInput", l_input)
            jr.call(this, "update_0", [])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.JStr("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to"), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call(this, "setSelectedAction_1", [l_game_key])
            Nil
        }
        }
    jr.JNull
}

fn c1_m25__deletecurrentmapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("deleteCurrentMapping")
        let l_list = jr.call(jr.call(jr.get_field(this, "inputMapping"), "getInputMapping_0", []), "getMappedInput_1", [jr.get_field(this, "selectedGameKey")])
        case jr.truth(jr.gt(jr.call(l_list, "size_0", []), jr.JInt(1))) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.JStr("Start GameKey: ")])
            jr.call(l_string_buffer, "append_1", [jr.JStr("Remove Key Mapping: GameKey: ")])
            jr.call(l_string_buffer, "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [jr.get_field(this, "selectedGameKey")])])
            jr.call(l_string_buffer, "append_1", [jr.JStr(" Input: ")])
            jr.call(l_string_buffer, "append_1", [jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "stringUtil"), "toString_1", [jr.get_field(this, "selectedInput")])])
            jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call(jr.call(jr.get_field(this, "inputMapping"), "getInputMapping_0", []), "remove_2", [jr.get_field(this, "selectedGameKey"), jr.get_field(this, "selectedInput")])
            jr.set_field(this, "selectedInput", jr.get_field(this, "NONE"))
            jr.call(this, "update_0", [])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.JStr("Can't Remove Last Key Mapping"), this, l__m_e_t_h_o_d___n_a_m_e])
            Nil
        }
        }
    jr.JNull
}

fn c1_m26__setdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "inputMapping"), "setDefault_1", [jr.get_field(this, "abeClientInformation")])
        jr.call(jr.get_field(this, "helpPaintable"), "update_2", [jr.get_field(this, "NONE"), jr.get_field(this, "NONE")])
        jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "repaintBehavior"), "onChangeRepaint_1", [this])
    jr.JNull
}

fn c1_m27__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "inputMapping"), "update_1", [jr.get_field(this, "abeClientInformation")])
        jr.call(jr.get_field(this, "helpPaintable"), "update_2", [jr.get_field(this, "selectedGameKey"), jr.get_field(this, "selectedInput")])
        jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "repaintBehavior"), "onChangeRepaint_1", [this])
    jr.JNull
}

fn c1_m28__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "colorFillPaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "helpPaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "paintable"), "paint_1", [l_graphics])
        jr.call_super("GameCommandCanvas", this, "paint_1", [l_graphics])
    jr.JNull
}

fn c1_jinit12(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_command_listener, l_all_binary_game_layer_manager, l_help_paintable] = jargs
        jr.super_init("GameCommandCanvas", this, [l_command_listener, jr.get_static("GameInputMappingCanvas", "NAME"), jr.call(l_all_binary_game_layer_manager, "getBackgroundBasicColor_0", []), jr.call(l_all_binary_game_layer_manager, "getForegroundBasicColor_0", [])])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "GameInputMappingCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameInputMappingCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "GameInputMappingCanvas", "commonStrings"), "CONSTRUCTOR")])
        case jr.truth(jr.eq(l_help_paintable, jr.JNull)) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Help Paintable Exception")]))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "abeClientInformation", l_abe_client_information)
        jr.set_field(this, "helpPaintable", l_help_paintable)
        jr.set_field(this, "inputMapping", jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []))
        jr.set_field(this, "paintable", jr.new("ProcessPaintable", []))
        jr.set_field(this, "colorFillPaintable", jr.call(jr.call_static("ColorFillPaintableFactory", "getInstance_0", []), "getInstance_2", [jr.call(l_all_binary_game_layer_manager, "getBackgroundBasicColor_0", []), jr.JBool(False)]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInputMappingCanvas",
        "org.allbinary.game.displayable.canvas.GameInputMappingCanvas",
        "GameCommandCanvas",
        ["InputMappingInterface"],
        False,
        [#("paintable", jr.JNull), #("helpPaintable", jr.JNull), #("colorFillPaintable", jr.JNull), #("inputMapping", jr.JNull), #("NONE", jr.JNull), #("abeClientInformation", jr.JNull), #("selectedGameKey", jr.JNull), #("selectedInput", jr.JNull), #("inputFactory", jr.JNull)],
        [#("NAME", jr.JStr("GameInputMappingCanvas")), #("DISPLAY", jr.JNull), #("DEFAULT", jr.JNull)],
        [
            jr.Method("close_0", [], False, c1_m13__close), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m14__initcommands), 
            jr.Method("keyPressed_1", ["int"], False, c1_m15__keypressed), 
            jr.Method("keyReleased_1", ["int"], False, c1_m16__keyreleased), 
            jr.Method("keyRepeated_1", ["int"], False, c1_m17__keyrepeated), 
            jr.Method("keyPressedByDevice_2", ["int", "int"], False, c1_m18__keypressedbydevice), 
            jr.Method("addGameKey_2", ["int", "boolean"], False, c1_m20__addgamekey), 
            jr.Method("processInputMapping_2", ["GameKey", "Input"], False, c1_m21__processinputmapping), 
            jr.Method("setSelectedAction_1", ["GameKey"], False, c1_m22__setselectedaction), 
            jr.Method("gameActionCrud_2", ["GameKey", "Input"], False, c1_m23__gameactioncrud), 
            jr.Method("addNewMapping_2", ["GameKey", "Input"], False, c1_m24__addnewmapping), 
            jr.Method("deleteCurrentMapping_0", [], False, c1_m25__deletecurrentmapping), 
            jr.Method("setDefault_0", [], False, c1_m26__setdefault), 
            jr.Method("update_0", [], False, c1_m27__update), 
            jr.Method("paint_1", ["Graphics"], False, c1_m28__paint), 
            jr.Method("jinit_4", ["AbeClientInformationInterface", "CommandListener", "AllBinaryGameLayerManager", "HelpPaintable"], False, c1_jinit12)],
        c1_jfields,
        c1_jclinit,
    )
}

