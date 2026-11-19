// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InGameFeatures

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__l_a_b_e_l = jr.JStr("Screen Buttons")
        let l_orientation_data = jr.call_static("OrientationData", "getInstance_0", [])
        let l_exclusive_orientation_sensor_vector = jr.call(jr.call(jr.call_static("GameFeatureChoiceGroups", "getExclusiveInstance_0", []), "get_0", []), "get_1", [jr.get_field(l_orientation_data, "ORIENTATION_SENSOR_INPUT")])
        let l_in_game_feature_choice_groups = jr.call_static("InGameFeatureChoiceGroups", "getExclusiveInstance_0", [])
        case jr.truth(jr.ne(l_exclusive_orientation_sensor_vector, jr.JNull)) {
            True -> {
            let l_in_game_exclusive_orientation_sensor_vector_can_be_null = jr.call(jr.call(l_in_game_feature_choice_groups, "get_0", []), "get_1", [jr.get_field(l_orientation_data, "ORIENTATION_SENSOR_INPUT")])
            case jr.truth(jr.eq(l_in_game_exclusive_orientation_sensor_vector_can_be_null, jr.JNull)) {
                True -> {
                jr.call(this, "addToInGameMenu_0", [])
                Nil
            }
                False -> {
                let l_in_game_exclusive_orientation_sensor_vector = l_in_game_exclusive_orientation_sensor_vector_can_be_null
                case jr.truth(jr.eq(jr.call(l_in_game_exclusive_orientation_sensor_vector, "size_0", []), jr.JInt(0))) {
                    True -> {
                    jr.call(this, "addToInGameMenu_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(case jr.truth(case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.call_static("TouchFeatureFactory", "getInstance_0", []), "SHOW_SCREEN_BUTTONS")])) { True -> jr.JBool(True) False -> jr.call(l_features, "isFeature_1", [jr.get_field(jr.call_static("TouchFeatureFactory", "getInstance_0", []), "AUTO_HIDE_SHOW_SCREEN_BUTTONS")]) }) { True -> jr.JBool(True) False -> jr.call(l_features, "isFeature_1", [jr.get_field(jr.call_static("TouchFeatureFactory", "getInstance_0", []), "HIDE_SCREEN_BUTTONS")]) }) {
            True -> {
            let l_exclusive_screen_buttons_vector = jr.new("BasicArrayListD", [])
            let l_touch_feature_factory = jr.call_static("TouchFeatureFactory", "getInstance_0", [])
            jr.call(l_exclusive_screen_buttons_vector, "add_1", [jr.get_field(l_touch_feature_factory, "AUTO_HIDE_SHOW_SCREEN_BUTTONS")])
            jr.call(l_exclusive_screen_buttons_vector, "add_1", [jr.get_field(l_touch_feature_factory, "SHOW_SCREEN_BUTTONS")])
            jr.call(l_exclusive_screen_buttons_vector, "add_1", [jr.get_field(l_touch_feature_factory, "HIDE_SCREEN_BUTTONS")])
            jr.call(l_in_game_feature_choice_groups, "add_2", [l__l_a_b_e_l, l_exclusive_screen_buttons_vector])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m2__addtoingamemenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_orientation_data = jr.call_static("OrientationData", "getInstance_0", [])
        let l_in_game_exclusive_orientation_sensor_vector = jr.new("BasicArrayListD", [])
        jr.call(l_in_game_exclusive_orientation_sensor_vector, "add_1", [jr.get_field(jr.call_static("SensorFeatureFactory", "getInstance_0", []), "ORIENTATION_SENSORS")])
        jr.call(l_in_game_exclusive_orientation_sensor_vector, "add_1", [jr.get_field(jr.call_static("SensorFeatureFactory", "getInstance_0", []), "NO_ORIENTATION")])
        jr.call(jr.call_static("InGameFeatureChoiceGroups", "getExclusiveInstance_0", []), "add_2", [jr.get_field(l_orientation_data, "ORIENTATION_SENSOR_INPUT"), l_in_game_exclusive_orientation_sensor_vector])
    jr.JNull
}

fn c1_m3__isany(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_touch_feature_factory = jr.call_static("TouchFeatureFactory", "getInstance_0", [])
            case jr.truth(case jr.truth(case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(l_touch_feature_factory, "SHOW_SCREEN_BUTTONS")])) { True -> jr.JBool(True) False -> jr.call(l_features, "isFeature_1", [jr.get_field(l_touch_feature_factory, "AUTO_HIDE_SHOW_SCREEN_BUTTONS")]) }) { True -> jr.JBool(True) False -> jr.call(l_features, "isFeature_1", [jr.get_field(l_touch_feature_factory, "HIDE_SCREEN_BUTTONS")]) }) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            let l_exclusive_orientation_sensor_vector = jr.call(jr.call(jr.call_static("GameFeatureChoiceGroups", "getExclusiveInstance_0", []), "get_0", []), "get_1", [jr.get_field(jr.call_static("OrientationData", "getInstance_0", []), "ORIENTATION_SENSOR_INPUT")])
            case jr.truth(jr.ne(l_exclusive_orientation_sensor_vector, jr.JNull)) {
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

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Init", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InGameFeatures",
        "org.allbinary.game.configuration.InGameFeatures",
        "Init",
        [],
        False,
        [],
        [],
        [
            jr.Method("init_0", [], False, c1_m1__init), 
            jr.Method("addToInGameMenu_0", [], False, c1_m2__addtoingamemenu), 
            jr.Method("isAny_0", [], False, c1_m3__isany), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

