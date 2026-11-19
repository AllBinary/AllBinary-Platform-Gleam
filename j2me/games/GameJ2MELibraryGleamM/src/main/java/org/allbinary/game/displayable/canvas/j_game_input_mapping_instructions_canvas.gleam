// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInputMappingInstructionsCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "drawStringUtil", jr.call_static("DrawStringUtil", "getInstance_0", []))
    jr.set_field(this, "TITLE", jr.JStr("Input Instructions"))
    jr.set_field(this, "instructions", jr.array_of("L", [jr.JStr("Add Input Mapping:"), jr.JStr("1. Select the desired action by generating a currently defined input for a given action."), jr.JStr("(Example: Press the '1' key to select the Fire action)"), jr.JStr("2. Make the newly desired input for the selected action."), jr.JStr("(Example: Press 'f' to add it to the selected action)"), jr.JStr("Note: If the input is already mapped to another action then it will not be added. You"), jr.JStr("will need to deleted from the other action before adding it to another."), jr.JStr("Warning: Not all keys map for a given platform and show as Unknown."), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.JStr("Remove Input Mapping:"), jr.JStr("1. Select the desired action by generating a currently defined input for a given action."), jr.JStr("(Example: Press the key '1' to select the Fire action)"), jr.JStr("2. Select a mapped input for the selected action."), jr.JStr("(Example: Press the key '1' to select the '1' key input for the selected Fire action)"), jr.JStr("3. Press the Delete Key.")]))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameInputMappingInstructionsCanvas", "DISPLAY", jr.new("Command", [jr.JStr("Help"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.set_static("GameInputMappingInstructionsCanvas", "CLOSE", jr.new("Command", [jr.JStr("Close"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(1)]))
    jr.JNull
}

fn c1_m10__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "GameInputMappingInstructionsCanvas", "removeAllCommands_0", [])
        jr.call_inherited(this, "GameInputMappingInstructionsCanvas", "addCommand_1", [jr.get_static("GameInputMappingInstructionsCanvas", "CLOSE")])
        jr.call_inherited(this, "GameInputMappingInstructionsCanvas", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m11__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "colorFillPaintable"), "paint_1", [l_graphics])
        let l_half_width = jr.as_i(jr.call(jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "displayInfo"), "getLastHalfWidth_0", []))
        let l_begin_width = jr.as_i(jr.shr(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [jr.get_field(this, "TITLE")]), jr.JInt(1)))
        jr.call(l_graphics, "setColor_1", [jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "foregroundColor")])
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "TITLE"), jr.sub(l_half_width, l_begin_width), jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "fontHeight"), jr.get_field(this, "anchor")])
        jr.call(jr.get_field(this, "drawStringUtil"), "drawCenterStrings_6", [l_graphics, jr.get_field(this, "instructions"), jr.call(jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "displayInfo"), "getLastWidth_0", []), jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "fontHeight"), l_half_width, jr.mul(jr.JInt(3), jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "fontHeight"))])
        jr.call_super("GameCommandCanvas", this, "paint_1", [l_graphics])
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_all_binary_game_layer_manager] = jargs
        jr.super_init("GameCommandCanvas", this, [l_command_listener, jr.get_static("GameInputMappingInstructionsCanvas", "NAME"), jr.call(l_all_binary_game_layer_manager, "getBackgroundBasicColor_0", []), jr.call(l_all_binary_game_layer_manager, "getForegroundBasicColor_0", [])])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "GameInputMappingInstructionsCanvas", "commonStrings"), "CONSTRUCTOR")])
        jr.set_field(this, "colorFillPaintable", jr.call(jr.call_static("ColorFillPaintableFactory", "getInstance_0", []), "getInstance_2", [jr.call(l_all_binary_game_layer_manager, "getBackgroundBasicColor_0", []), jr.JBool(False)]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInputMappingInstructionsCanvas",
        "org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas",
        "GameCommandCanvas",
        [],
        False,
        [#("drawStringUtil", jr.JNull), #("TITLE", jr.JNull), #("instructions", jr.JNull), #("colorFillPaintable", jr.JNull), #("anchor", jr.JInt(0))],
        [#("DISPLAY", jr.JNull), #("CLOSE", jr.JNull), #("NAME", jr.JStr("GameInputMappingInstructionsCanvas"))],
        [
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m10__initcommands), 
            jr.Method("paint_1", ["Graphics"], False, c1_m11__paint), 
            jr.Method("jinit_2", ["CommandListener", "AllBinaryGameLayerManager"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

