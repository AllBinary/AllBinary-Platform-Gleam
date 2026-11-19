// Generated Code Do Not Modify
// package org.allbinary.game.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInitializationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EVENT", jr.new("GameInitializedEvent", [this]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameInitializationUtil", "instance", jr.new("GameInitializationUtil", []))
    jr.JNull
}

fn c1_m3__initdemo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_canvas, l_game_initialization_interface_factory_interface] = jargs
        let l_main_feature_factory = jr.call_static("MainFeatureFactory", "getInstance_0", [])
        case jr.truth(jr.call(jr.call_static("ChangedGameFeatureListener", "getInstance_0", []), "isChangedFeature_1", [jr.get_field(l_main_feature_factory, "STATIC")])) {
            True -> {
            let l_game_initialization_interface = jr.call(l_game_initialization_interface_factory_interface, "getInstance_0", [])
            let l_features = jr.call_static("Features", "getInstance_0", [])
            case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_main_feature_factory, "LOAD_ALL")])) {
                True -> {
                jr.call(this, "initGame_3", [l_abe_client_information, l_canvas, l_game_initialization_interface_factory_interface])
                Nil
            }
                False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_main_feature_factory, "LOAD_ONDEMAND")])) {
                True -> {
                let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
                jr.call(l_game_initialization_interface, "init_3", [l_abe_client_information, jr.call(l_canvas, "getCustomCommandListener_0", []), jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_EARLY"), "getLevel_0", [])])
                jr.call(jr.get_field(this, "EVENT"), "setResourceLoadingLevel_1", [jr.get_field(l_resource_loading_level_factory, "LOAD_EARLY")])
                Nil
            }
                False -> {
                jr.throw(jr.new("Exception", [jr.JStr("No Loading Feature Available")]))
                Nil
            }
            }
            }
            jr.call(jr.call_static("GameInitializedEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "EVENT")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m4__initgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_canvas, l_game_initialization_interface_factory_interface] = jargs
        case jr.truth(jr.call(jr.call_static("ChangedGameFeatureListener", "getInstance_0", []), "isChangedFeature_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "STATIC")])) {
            True -> {
            let l_game_initialization_interface = jr.call(l_game_initialization_interface_factory_interface, "getInstance_0", [])
            let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
            jr.call(l_game_initialization_interface, "init_3", [l_abe_client_information, jr.call(l_canvas, "getCustomCommandListener_0", []), jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_ALL"), "getLevel_0", [])])
            jr.call(jr.get_field(this, "EVENT"), "setResourceLoadingLevel_1", [jr.get_field(l_resource_loading_level_factory, "LOAD_ALL")])
            jr.call(jr.call_static("GameInitializedEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "EVENT")])
            jr.call(jr.call_static("ChangedGameFeatureListener", "getInstance_0", []), "remove_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "STATIC")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameInitializationUtil", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInitializationUtil",
        "org.allbinary.game.init.GameInitializationUtil",
        "Object",
        [],
        False,
        [#("EVENT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("initDemo_3", ["AbeClientInformationInterface", "MyCanvas", "BasicBuildGameInitializerFactory"], False, c1_m3__initdemo), 
            jr.Method("initGame_3", ["AbeClientInformationInterface", "MyCanvas", "BasicBuildGameInitializerFactory"], False, c1_m4__initgame), 
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

