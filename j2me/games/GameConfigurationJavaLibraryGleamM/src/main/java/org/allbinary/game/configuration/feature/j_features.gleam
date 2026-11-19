// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Features

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Features", "SINGLETON", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("Features", "SINGLETON"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("Features", "SINGLETON", jr.new("Features", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("Features", "SINGLETON")
}

fn c1_m8__adddefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        jr.call(this, "add_1", [l_game_feature])
        case jr.truth(jr.not(jr.call(jr.get_field(this, "defaultList"), "contains_1", [l_game_feature]))) {
            True -> {
            jr.call(jr.get_field(this, "defaultList"), "add_1", [l_game_feature])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m9__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "list"), "contains_1", [l_game_feature]))) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.call(l_game_feature, "toString_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD")])
            jr.call(jr.get_field(this, "list"), "add_1", [l_game_feature])
            jr.call(jr.call_static("GameFeatureEventHandler", "getInstance_0", []), "fireEvent_1", [jr.new("GameFeatureEvent", [l_game_feature, jr.call(l_game_feature, "toString_0", [])])])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m10__removedefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.call(l_game_feature, "toString_0", [])]), "toString_0", []), this, jr.JStr("removeDefault")])
        jr.call(this, "remove_1", [l_game_feature])
        jr.call(jr.get_field(this, "defaultList"), "remove_1", [l_game_feature])
    jr.JNull
}

fn c1_m11__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        case jr.truth(jr.call(jr.get_field(this, "list"), "contains_1", [l_game_feature])) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "commonStrings"), "REMOVE")])
            jr.call(jr.get_field(this, "list"), "remove_1", [l_game_feature])
            jr.call(jr.call_static("GameFeatureEventHandler", "getInstance_0", []), "fireEvent_1", [jr.new("GameFeatureEvent", [l_game_feature, jr.call(l_game_feature, "toString_0", [])])])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m12__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_game_feature_factory = jr.call_static("GameFeatureFactory", "getInstance_0", [])
            let l_input_feature_factory = jr.call_static("InputFeatureFactory", "getInstance_0", [])
            let l_sensor_feature_factory = jr.call_static("SensorFeatureFactory", "getInstance_0", [])
            let l_touch_feature_factory = jr.call_static("TouchFeatureFactory", "getInstance_0", [])
            jr.call(this, "addDefault_1", [jr.get_field(l_game_feature_factory, "ARTIFICIAL_INTELLEGENCE_PROCESSOR")])
            jr.call(this, "addDefault_1", [jr.get_field(l_game_feature_factory, "COLLIDABLE_INTERFACE_LAYER_PROCESSOR")])
            jr.call(this, "addDefault_1", [jr.get_field(l_game_feature_factory, "GAME_INPUT_LAYER_PROCESSOR")])
            jr.call(this, "addDefault_1", [jr.get_field(l_game_feature_factory, "TICKABLE_LAYER_PROCESSOR")])
            jr.call(this, "addDefault_1", [jr.get_field(l_input_feature_factory, "MULTI_KEY_PRESS")])
            jr.call(this, "addDefault_1", [jr.get_field(l_input_feature_factory, "REMOVE_DUPLICATE_KEY_PRESSES")])
            jr.call(this, "addDefault_1", [jr.get_field(l_game_feature_factory, "SCREEN_SHAKE")])
            jr.call(this, "addDefault_1", [jr.get_field(l_game_feature_factory, "POST_IMAGE_LOADING_MODIFICATION")])
            let l_operating_system_interface = jr.call(jr.call_static("OperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", [])
            case jr.truth(jr.call(l_operating_system_interface, "isOverScan_0", [])) {
                True -> {
                jr.call(this, "addDefault_1", [jr.get_field(l_sensor_feature_factory, "NO_ORIENTATION")])
                jr.call(this, "addDefault_1", [jr.get_field(l_touch_feature_factory, "HIDE_SCREEN_BUTTONS")])
                Nil
            }
                False -> {
                jr.call(this, "addDefault_1", [jr.get_field(l_sensor_feature_factory, "ORIENTATION_SENSORS")])
                jr.call(this, "addDefault_1", [jr.get_field(l_touch_feature_factory, "AUTO_HIDE_SHOW_SCREEN_BUTTONS")])
                Nil
            }
            }
            jr.call(this, "addDefault_1", [jr.get_field(l_touch_feature_factory, "TOUCH_ENABLED")])
            jr.call(this, "addDefault_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "FULL_SCREEN")])
            jr.call(this, "addDefault_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "LOAD_ONDEMAND")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "INIT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m13__isdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
    jr.call(jr.get_field(this, "defaultList"), "contains_1", [l_game_feature])
}

fn c1_m14__isfeature(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
    jr.call(jr.get_field(this, "list"), "contains_1", [l_game_feature])
}

fn c1_m15__toggle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_feature] = jargs
        case jr.truth(jr.call(this, "isFeature_1", [l_game_feature])) {
            True -> {
            jr.call(this, "remove_1", [l_game_feature])
            Nil
        }
            False -> {
            jr.call(this, "add_1", [l_game_feature])
            Nil
        }
        }
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "list", jr.new("BasicArrayListD", []))
        jr.set_field(this, "defaultList", jr.new("BasicArrayListD", []))
        jr.call(this, "init_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Features",
        "org.allbinary.game.configuration.feature.Features",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("list", jr.JNull), #("defaultList", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("addDefault_1", ["Feature"], False, c1_m8__adddefault), 
            jr.Method("add_1", ["Feature"], False, c1_m9__add), 
            jr.Method("removeDefault_1", ["Feature"], False, c1_m10__removedefault), 
            jr.Method("remove_1", ["Feature"], False, c1_m11__remove), 
            jr.Method("init_0", [], False, c1_m12__init), 
            jr.Method("isDefault_1", ["Feature"], False, c1_m13__isdefault), 
            jr.Method("isFeature_1", ["Feature"], False, c1_m14__isfeature), 
            jr.Method("toggle_1", ["Feature"], False, c1_m15__toggle), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

