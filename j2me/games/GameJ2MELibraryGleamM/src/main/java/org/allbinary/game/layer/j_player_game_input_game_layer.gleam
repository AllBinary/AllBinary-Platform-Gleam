// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlayerGameInputGameLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getplayergameinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "playerGameInput")
}

fn c1_m4__initinputprocessors(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__processinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_my_manager] = jargs
    jr.JNull
}

fn c1_m6__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.super_init("AllBinaryGameLayer", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.JInt(0), jr.JInt(0)]), jr.new("StaticViewPosition", [jr.JInt(0), jr.JInt(0), jr.JInt(0)])])
        c1_jfields(this)
        jr.set_field(this, "playerGameInput", jr.new("PlayerGameInput", [jr.call_inherited(this, "PlayerGameInputGameLayer", "getGameKeyEventList_0", []), jr.new("BasicArrayListD", []), l_player_input_id]))
        let l_canvas_strings = jr.call_static("CanvasStrings", "getInstance_0", [])
        jr.call(jr.get_inherited(this, "PlayerGameInputGameLayer", "logUtil"), "putF_3", [jr.JStr("Danger Danger Danger: Should Not Be Called Except For Testing Input"), this, jr.get_field(l_canvas_strings, "PAINT")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlayerGameInputGameLayer",
        "org.allbinary.game.layer.PlayerGameInputGameLayer",
        "AllBinaryGameLayer",
        ["PlayerGameInputCompositeInterface"],
        False,
        [#("playerGameInput", jr.JNull)],
        [],
        [
            jr.Method("getPlayerGameInput_0", [], False, c1_m3__getplayergameinput), 
            jr.Method("initInputProcessors_0", [], False, c1_m4__initinputprocessors), 
            jr.Method("processInput_1", ["AllBinaryLayerManager"], False, c1_m5__processinput), 
            jr.Method("paint_1", ["Graphics"], False, c1_m6__paint), 
            jr.Method("jinit_1", ["int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

