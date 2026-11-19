// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryGameLayerManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "playerGameInputCompositeInterface", jr.get_static("NullPlayerGameInputComposite", "NULL_PLAYER_GAME_INPUT_COMPOSITE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryGameLayerManager", "NULL_ALLBINARY_LAYER_MANAGER", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.set_static("AllBinaryGameLayerManager", "ID", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(22)]))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("AllBinaryGameLayerManager", "NULL_ALLBINARY_LAYER_MANAGER"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("AllBinaryGameLayerManager", "NULL_ALLBINARY_LAYER_MANAGER", jr.new("AllBinaryGameLayerManager", [jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"), jr.get_static("GameInfo", "NONE")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("AllBinaryGameLayerManager", "NULL_ALLBINARY_LAYER_MANAGER")
}

fn c1_m9__getlayermanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
    this
}

fn c1_m10__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__getbackgroundbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "backgroundBasicColor")
}

fn c1_m12__setbackgroundbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_background_basic_color] = jargs
        jr.set_field(this, "backgroundBasicColor", l_background_basic_color)
        jr.set_field(jr.call_static("ItemColorFactory", "getInstance_0", []), "INVERT_PAINT", jr.as_i(jr.call(jr.get_field(this, "backgroundBasicColor"), "intValue_0", [])))
    jr.JNull
}

fn c1_m13__getforegroundbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "foregroundBasicColor")
}

fn c1_m14__setforegroundbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_foreground_basic_color] = jargs
        jr.set_field(this, "foregroundBasicColor", l_foreground_basic_color)
        jr.set_field(jr.call_static("ItemColorFactory", "getInstance_0", []), "PAINT", jr.as_i(jr.call(jr.get_field(this, "foregroundBasicColor"), "intValue_0", [])))
    jr.JNull
}

fn c1_m15__getgameinfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameInfo")
}

fn c1_m16__setgameinfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_info] = jargs
        jr.set_field(this, "gameInfo", l_game_info)
    jr.JNull
}

fn c1_m17__setlayerprocessorlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l_layer_processor_interface_array = jr.new_array("L", 1, [jr.call(l_list, "size_0", [])])
        let l_size = jr.as_i(jr.alen(l_layer_processor_interface_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_layer_processor_interface_array, jr.get(l_index), jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            Nil
        })
            Nil
        }
        jr.call_inherited(this, "AllBinaryGameLayerManager", "setLayerProcessorArray_1", [l_layer_processor_interface_array])
    jr.JNull
}

fn c1_m18__setplayergameinputcompositeinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_game_input_composite_interface] = jargs
        jr.set_field(this, "playerGameInputCompositeInterface", l_player_game_input_composite_interface)
    jr.JNull
}

fn c1_m19__getplayergameinputcompositeinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "playerGameInputCompositeInterface")
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_background_basic_color, l_foreground_basic_color, l_game_info] = jargs
    jr.super_init("AllBinaryLayerManager", this, [])
    c1_jfields(this)
        jr.set_field(this, "backgroundBasicColor", l_background_basic_color)
        jr.set_field(this, "foregroundBasicColor", l_foreground_basic_color)
        let l_item_color_factory = jr.call_static("ItemColorFactory", "getInstance_0", [])
        jr.set_field(l_item_color_factory, "INVERT_PAINT", jr.as_i(jr.call(jr.get_field(this, "backgroundBasicColor"), "intValue_0", [])))
        jr.set_field(l_item_color_factory, "PAINT", jr.as_i(jr.call(jr.get_field(this, "foregroundBasicColor"), "intValue_0", [])))
        jr.set_field(this, "gameInfo", l_game_info)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryGameLayerManager",
        "org.allbinary.game.layer.AllBinaryGameLayerManager",
        "AllBinaryLayerManager",
        [],
        False,
        [#("backgroundBasicColor", jr.JNull), #("foregroundBasicColor", jr.JNull), #("gameInfo", jr.JNull), #("playerGameInputCompositeInterface", jr.JNull)],
        [#("NULL_ALLBINARY_LAYER_MANAGER", jr.JNull), #("ID", jr.JNull)],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("getLayerManager_0", [], False, c1_m9__getlayermanager), 
            jr.Method("init_0", [], False, c1_m10__init), 
            jr.Method("getBackgroundBasicColor_0", [], False, c1_m11__getbackgroundbasiccolor), 
            jr.Method("setBackgroundBasicColor_1", ["BasicColor"], False, c1_m12__setbackgroundbasiccolor), 
            jr.Method("getForegroundBasicColor_0", [], False, c1_m13__getforegroundbasiccolor), 
            jr.Method("setForegroundBasicColor_1", ["BasicColor"], False, c1_m14__setforegroundbasiccolor), 
            jr.Method("getGameInfo_0", [], False, c1_m15__getgameinfo), 
            jr.Method("setGameInfo_1", ["GameInfo"], False, c1_m16__setgameinfo), 
            jr.Method("setLayerProcessorList_1", ["BasicArrayList"], False, c1_m17__setlayerprocessorlist), 
            jr.Method("setPlayerGameInputCompositeInterface_1", ["PlayerGameInputCompositeInterface"], False, c1_m18__setplayergameinputcompositeinterface), 
            jr.Method("getPlayerGameInputCompositeInterface_0", [], False, c1_m19__getplayergameinputcompositeinterface), 
            jr.Method("jinit_3", ["BasicColor", "BasicColor", "GameInfo"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

