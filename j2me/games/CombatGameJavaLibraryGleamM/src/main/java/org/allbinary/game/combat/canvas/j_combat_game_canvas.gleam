// Generated Code Do Not Modify
// package org.allbinary.game.combat.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CombatGameCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CombatGameCanvas", "basicLayerProcessor", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_m3__combatgamecanvas__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DestroyEventCircularStaticPool", "getInstance_0", []), "init_1", [this])
        jr.call(jr.call_static("ProgressCanvasFactory", "getInstance_0", []), "addNormalPortion_2", [jr.JInt(50), jr.JStr("Destroy Events")])
    jr.JNull
}

fn c1_m4__initapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call(this, "CombatGameCanvas_init_0", [])
        jr.call_super("AllBinaryGameCanvas", this, "initApp_1", [l_abe_client_information])
    jr.JNull
}

fn c1_m5__initconfigurableportion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_portion] = jargs
    let l_portion = jr.as_i(l_portion)
        jr.call_static("DestroyedLayerProcessor", "init_0", [])
        jr.call(jr.call_static("ProgressCanvasFactory", "getInstance_0", []), "addNormalPortion_2", [l_portion, jr.JStr("Basic Processors")])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        let l_game_feature_factory = jr.call_static("GameFeatureFactory", "getInstance_0", [])
        case jr.truth(case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_game_feature_factory, "DROPPED_ITEMS")])) { True -> jr.call(l_features, "isFeature_1", [jr.get_field(l_game_feature_factory, "DROPPED_ITEMS_FROM_DEATH")]) False -> jr.JBool(False) }) {
            True -> {
            jr.set_static("CombatGameCanvas", "basicLayerProcessor", jr.new_array("L", 1, [jr.JInt(2)]))
            jr.aset(jr.get_static("CombatGameCanvas", "basicLayerProcessor"), jr.JInt(0), jr.call_static("DestroyedLayerProcessor", "getInstance_0", []))
            jr.aset(jr.get_static("CombatGameCanvas", "basicLayerProcessor"), jr.JInt(1), jr.call_static("DropLayerProcessor", "getInstance_0", []))
            Nil
        }
            False -> {
            jr.set_static("CombatGameCanvas", "basicLayerProcessor", jr.new_array("L", 1, [jr.JInt(1)]))
            jr.aset(jr.get_static("CombatGameCanvas", "basicLayerProcessor"), jr.JInt(0), jr.call_static("DestroyedLayerProcessor", "getInstance_0", []))
            Nil
        }
        }
    jr.JNull
}

fn c1_m6__processplayinggame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("AllBinaryGameCanvas", this, "processPlayingGame_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_static("CombatGameCanvas", "basicLayerProcessor"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.call(jr.aget(jr.get_static("CombatGameCanvas", "basicLayerProcessor"), jr.get(l_index)), "process_1", [jr.get_inherited(this, "CombatGameCanvas", "gameLayerManager")])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m7__cleanupgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("AllBinaryGameCanvas", this, "cleanupGame_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_static("CombatGameCanvas", "basicLayerProcessor"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.call(jr.call(jr.aget(jr.get_static("CombatGameCanvas", "basicLayerProcessor"), jr.get(l_index)), "getList_0", []), "clear_0", [])
            Nil
        })
            Nil
        }
        jr.call(jr.call_static("GroupLayerManagerListener", "getInstance_0", []), "clear_0", [])
        jr.call(jr.call_static("GroupLayerManagerListener", "getInstance_0", []), "log_0", [])
        jr.call(jr.call_static("DestroyedEventHandler", "getInstance_0", []), "removeAllListeners_0", [])
        jr.call(this, "cleanupManager_0", [])
    jr.JNull
}

fn c1_m8__cleanupmanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "CombatGameCanvas", "gameLayerManager"), "cleanup_0", [])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener, l_game_layer_manager, l_high_scores_factory_interface, l_game_initialization_interface_factory_interface, l_buffered] = jargs
        jr.super_init("AllBinaryGameCanvas", this, [l_cmd_listener, l_game_layer_manager, l_high_scores_factory_interface, l_game_initialization_interface_factory_interface, l_buffered])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CombatGameCanvas",
        "org.allbinary.game.combat.canvas.CombatGameCanvas",
        "AllBinaryGameCanvas",
        [],
        False,
        [],
        [#("basicLayerProcessor", jr.JNull)],
        [
            jr.Method("CombatGameCanvas_init_0", [], False, c1_m3__combatgamecanvas__init), 
            jr.Method("initApp_1", ["AbeClientInformationInterface"], False, c1_m4__initapp), 
            jr.Method("initConfigurablePortion_1", ["int"], False, c1_m5__initconfigurableportion), 
            jr.Method("processPlayingGame_0", [], False, c1_m6__processplayinggame), 
            jr.Method("cleanupGame_0", [], False, c1_m7__cleanupgame), 
            jr.Method("cleanupManager_0", [], False, c1_m8__cleanupmanager), 
            jr.Method("jinit_5", ["CommandListener", "AllBinaryGameLayerManager", "HighScoresFactoryInterface", "BasicBuildGameInitializerFactory", "boolean"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

