// Generated Code Do Not Modify
// package org.allbinary.game.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseGameInitialization

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EARLY_RESOURCES", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "GAME_RESOURCES", jr.as_i(jr.JInt(1)))
    jr.set_field(this, "EARLY_CHANGABLE_RESOURCES", jr.as_i(jr.JInt(2)))
    jr.set_field(this, "GAME_CHANGABLE_RESOURCES", jr.as_i(jr.JInt(3)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BaseGameInitialization", "NULL_BASE_GAME_INITIALIZATION", jr.new("BaseGameInitialization", [jr.new_array("L", 1, [jr.JInt(0)]), jr.JInt(0)]))
    jr.JNull
}

fn c1_m10__initkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_portion] = jargs
    let l_portion = jr.as_i(l_portion)
    jr.JNull
}

fn c1_m11__initkeymapping(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_portion] = jargs
    let l_portion = jr.as_i(l_portion)
        case jr.truth(jr.call(jr.call_static("ChangedGameFeatureListener", "getInstance_0", []), "isChangedFeature_1", [jr.get_field(jr.call_static("InputFeatureFactory", "getInstance_0", []), "INPUT_MAPPING")])) {
            True -> {
            jr.call(jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []), "init_1", [l_abe_client_information])
            jr.call(jr.call_static("ProgressCanvasFactory", "getInstance_0", []), "addNormalPortion_2", [jr.JInt(50), jr.JStr("Game Keys")])
            jr.call(jr.call_static("ChangedGameFeatureListener", "getInstance_0", []), "remove_1", [jr.get_field(jr.call_static("InputFeatureFactory", "getInstance_0", []), "INPUT_MAPPING")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m12__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_command_listener, l_level] = jargs
    let l_level = jr.as_i(l_level)
        let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
        case jr.truth(case jr.truth(jr.not(jr.call(this, "isInitialized_0", []))) { True -> case jr.truth(jr.eq(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_ALL"), "getLevel_0", []))) { True -> jr.JBool(True) False -> jr.eq(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_EARLY"), "getLevel_0", [])) } False -> jr.JBool(False) }) {
            True -> {
            let l_local_portion = jr.cell(jr.as_i(jr.JInt(40)))
            case jr.truth(jr.eq(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_EARLY"), "getLevel_0", []))) {
                True -> {
                jr.set(l_local_portion, jr.as_i(jr.JInt(8)))
                Nil
            }
                False -> Nil
            }
            jr.call(this, "setInitialized_1", [jr.JBool(True)])
            jr.call(this, "initKey_1", [jr.call(this, "getPortion_0", [])])
            jr.call(this, "initKeyMapping_2", [l_abe_client_information, jr.call(this, "getPortion_0", [])])
            jr.call(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "init_0", [])
            let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.get(l_local_portion), jr.JStr("Game Key Events")])
            jr.call(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "init_1", [jr.call(jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []), "getInputMapping_0", [])])
            jr.call_static("CancelTouchButtonInputFactory", "getInstance_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.get(l_local_portion), jr.JStr("Touch Input")])
            jr.call(jr.call_static("CompleteMotionGestureInputToGameMotionGestureInput", "getInstance_0", []), "init_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.get(l_local_portion), jr.JStr("Motion Input")])
            jr.call_static("GameFeatureImageCacheFactory", "init_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.get(l_local_portion), jr.JStr("Image Cache")])
            jr.call(jr.aget(jr.get_field(this, "resourceInitializationArray"), jr.get_field(this, "EARLY_RESOURCES")), "init_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__resourceinitialization(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
        case jr.truth(case jr.truth(jr.call(this, "resourceAnimationChange_0", [])) { True -> jr.eq(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_EARLY"), "getLevel_0", [])) False -> jr.JBool(False) }) {
            True -> {
            jr.call(this, "clearResources_0", [])
            jr.call(jr.aget(jr.get_field(this, "resourceInitializationArray"), jr.get_field(this, "EARLY_CHANGABLE_RESOURCES")), "init_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(case jr.truth(jr.call(this, "resourceAnimationChange_0", [])) { True -> jr.eq(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_ALL"), "getLevel_0", [])) False -> jr.JBool(False) }) {
            True -> {
            case jr.truth(jr.get_field(this, "allLoaded")) {
                True -> {
                jr.call(this, "clearResources_0", [])
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.eq(jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "getList_0", []), "size_0", []), jr.JInt(0))) {
                True -> {
                jr.call(jr.aget(jr.get_field(this, "resourceInitializationArray"), jr.get_field(this, "EARLY_CHANGABLE_RESOURCES")), "init_0", [])
                Nil
            }
                False -> Nil
            }
            jr.call(jr.aget(jr.get_field(this, "resourceInitializationArray"), jr.get_field(this, "GAME_CHANGABLE_RESOURCES")), "init_0", [])
            jr.set_field(this, "allLoaded", jr.JBool(True))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m16__resourceanimationchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_changed_game_feature_listener = jr.call_static("ChangedGameFeatureListener", "getInstance_0", [])
            let l_game_configuration_central = jr.call_static("GameConfigurationCentral", "getInstance_0", [])
            case jr.truth(jr.call(l_changed_game_feature_listener, "isChangedGameConfiguration_1", [jr.get_field(l_game_configuration_central, "SCALE")])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.call(jr.call_static("ChangedGameFeatureListener", "getInstance_0", []), "isChangedFeature_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "STATIC")])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m17__clearresources(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "allLoaded", jr.JBool(False))
        jr.call_static("GameFeatureImageCacheFactory", "releaseAll_0", [])
        let l_featured_animation_interface_factory_interface_factory = jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", [])
        jr.call(l_featured_animation_interface_factory_interface_factory, "clear_0", [])
        jr.call(jr.call_static("FeaturedResourceRelativeRelationshipFactory", "getInstance_0", []), "clear_0", [])
    jr.JNull
}

fn c1_m18__setgameinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_initialized] = jargs
        jr.set_field(this, "gameInitialized", l_game_initialized)
    jr.JNull
}

fn c1_m19__isgameinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameInitialized")
}

fn c1_m20__getportion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "portion"))
}

fn c1_m21__setinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialized] = jargs
        jr.set_field(this, "initialized", l_initialized)
    jr.JNull
}

fn c1_m22__isinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "initialized")
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource_initialization_array, l_portion] = jargs
    let l_portion = jr.as_i(l_portion)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "resourceInitializationArray", l_resource_initialization_array)
        jr.set_field(this, "portion", jr.as_i(l_portion))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseGameInitialization",
        "org.allbinary.game.init.BaseGameInitialization",
        "Object",
        ["GameInitializationInterface"],
        False,
        [#("resourceInitializationArray", jr.JNull), #("portion", jr.JInt(0)), #("initialized", jr.JBool(False)), #("EARLY_RESOURCES", jr.JInt(0)), #("GAME_RESOURCES", jr.JInt(0)), #("EARLY_CHANGABLE_RESOURCES", jr.JInt(0)), #("GAME_CHANGABLE_RESOURCES", jr.JInt(0)), #("gameInitialized", jr.JBool(False)), #("allLoaded", jr.JBool(False))],
        [#("NULL_BASE_GAME_INITIALIZATION", jr.JNull)],
        [
            jr.Method("initKey_1", ["int"], False, c1_m10__initkey), 
            jr.Method("initKeyMapping_2", ["AbeClientInformationInterface", "int"], False, c1_m11__initkeymapping), 
            jr.Method("init_3", ["AbeClientInformationInterface", "CommandListener", "int"], False, c1_m12__init), 
            jr.Method("resourceInitialization_1", ["int"], False, c1_m15__resourceinitialization), 
            jr.Method("resourceAnimationChange_0", [], False, c1_m16__resourceanimationchange), 
            jr.Method("clearResources_0", [], False, c1_m17__clearresources), 
            jr.Method("setGameInitialized_1", ["boolean"], False, c1_m18__setgameinitialized), 
            jr.Method("isGameInitialized_0", [], False, c1_m19__isgameinitialized), 
            jr.Method("getPortion_0", [], False, c1_m20__getportion), 
            jr.Method("setInitialized_1", ["boolean"], False, c1_m21__setinitialized), 
            jr.Method("isInitialized_0", [], False, c1_m22__isinitialized), 
            jr.Method("jinit_2", ["ResourceInitializationArr", "int"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

