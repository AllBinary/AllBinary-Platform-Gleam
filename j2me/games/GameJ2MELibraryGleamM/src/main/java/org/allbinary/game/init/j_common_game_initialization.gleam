// Generated Code Do Not Modify
// package org.allbinary.game.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommonGameInitialization

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_command_listener, l_level] = jargs
    let l_level = jr.as_i(l_level)
        jr.call_super("BaseGameInitialization", this, "init_3", [l_abe_client_information, l_command_listener, l_level])
        let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
        case jr.truth(case jr.truth(jr.not(jr.call_inherited(this, "CommonGameInitialization", "isGameInitialized_0", []))) { True -> jr.eq(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_ALL"), "getLevel_0", [])) False -> jr.JBool(False) }) {
            True -> {
            jr.call_inherited(this, "CommonGameInitialization", "setGameInitialized_1", [jr.JBool(True)])
            let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
            jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "init_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Integers")])
            jr.call(jr.call_static("PointFactory", "getInstance_0", []), "init_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Points")])
            jr.call_static("AngleFactory", "getInstance_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Angles")])
            jr.call(this, "initGame_0", [])
            jr.call(jr.aget(jr.get_inherited(this, "CommonGameInitialization", "resourceInitializationArray"), jr.get_inherited(this, "CommonGameInitialization", "GAME_RESOURCES")), "init_0", [])
            Nil
        }
            False -> Nil
        }
        jr.call_super("BaseGameInitialization", this, "resourceInitialization_1", [l_level])
    jr.JNull
}

fn c1_m4__initgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource_initialization_array, l_portion] = jargs
    let l_portion = jr.as_i(l_portion)
        jr.super_init("BaseGameInitialization", this, [l_resource_initialization_array, l_portion])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommonGameInitialization",
        "org.allbinary.game.init.CommonGameInitialization",
        "BaseGameInitialization",
        [],
        False,
        [#("commonStrings", jr.JNull)],
        [],
        [
            jr.Method("init_3", ["AbeClientInformationInterface", "CommandListener", "int"], False, c1_m3__init), 
            jr.Method("initGame_0", [], False, c1_m4__initgame), 
            jr.Method("jinit_2", ["ResourceInitializationArr", "int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

