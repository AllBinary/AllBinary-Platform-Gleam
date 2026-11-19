// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFeatureItemStateListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameFeatureItemStateListener", "toggleList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_m5__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        case jr.truth(jr.not(jr.call(jr.get_static("GameFeatureItemStateListener", "toggleList"), "contains_1", [l_game_feature]))) {
            True -> {
            jr.call(jr.get_static("GameFeatureItemStateListener", "toggleList"), "add_1", [l_game_feature])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__itemstatechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
        jr.try_catch(fn() {
            let l_item_label = jr.call(l_item, "getLabel_0", [])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "ITEM_LABEL")]), "append_1", [l_item_label]), "toString_0", []), this, jr.JStr("itemStateChanged")])
            case jr.truth(jr.instance_of(l_item, "GameConfigurationGauge")) {
                True -> {
                jr.call(jr.call_static("GameConfigurationUtil", "getInstance_0", []), "change_2", [jr.get_field(this, "gameOptionsForm"), l_item])
                Nil
            }
                False -> case jr.truth(jr.instance_of(l_item, "ChoiceGroup")) {
                True -> {
                let l_game_feature_util = jr.call_static("GameFeatureUtil", "getInstance_0", [])
                case jr.truth(jr.call(l_game_feature_util, "isExclusive_1", [l_item_label])) {
                    True -> {
                    jr.call(l_game_feature_util, "updateExclusiveForChoiceGroup_1", [l_item])
                    Nil
                }
                    False -> {
                    jr.call(l_game_feature_util, "updateMultiple_1", [l_item])
                    Nil
                }
                }
                Nil
            }
                False -> Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("itemStateChanged"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_options_form] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "gameOptionsForm", l_game_options_form)
        let l_game_feature_factory = jr.call_static("GameFeatureFactory", "getInstance_0", [])
        jr.call_static("GameFeatureItemStateListener", "add_1", [jr.get_field(l_game_feature_factory, "ARTIFICIAL_INTELLEGENCE_PROCESSOR")])
        jr.call_static("GameFeatureItemStateListener", "add_1", [jr.get_field(l_game_feature_factory, "COLLIDABLE_INTERFACE_LAYER_PROCESSOR")])
        jr.call_static("GameFeatureItemStateListener", "add_1", [jr.get_field(l_game_feature_factory, "DAMAGE_FLOATERS")])
        jr.call_static("GameFeatureItemStateListener", "add_1", [jr.get_field(l_game_feature_factory, "DROPPED_ITEMS")])
        jr.call_static("GameFeatureItemStateListener", "add_1", [jr.get_field(l_game_feature_factory, "GAME_INPUT_LAYER_PROCESSOR")])
        jr.call_static("GameFeatureItemStateListener", "add_1", [jr.get_field(l_game_feature_factory, "HEALTH_BARS")])
        jr.call_static("GameFeatureItemStateListener", "add_1", [jr.get_field(l_game_feature_factory, "SOUND")])
        jr.call_static("GameFeatureItemStateListener", "add_1", [jr.get_field(l_game_feature_factory, "TICKABLE_LAYER_PROCESSOR")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameFeatureItemStateListener",
        "org.allbinary.game.configuration.feature.GameFeatureItemStateListener",
        "Object",
        ["ItemStateListener"],
        False,
        [#("logUtil", jr.JNull), #("gameOptionsForm", jr.JNull)],
        [#("toggleList", jr.JNull)],
        [
            jr.Method("add_1", ["GameFeature"], True, c1_m5__add), 
            jr.Method("itemStateChanged_1", ["LcduiItem"], False, c1_m6__itemstatechanged), 
            jr.Method("jinit_1", ["GameOptionsForm"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

