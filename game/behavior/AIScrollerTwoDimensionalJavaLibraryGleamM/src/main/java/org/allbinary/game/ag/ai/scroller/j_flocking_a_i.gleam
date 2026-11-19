// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.scroller
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FlockingAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_max_distance = jr.cell(jr.as_i(jr.JInt(0)))
        let l_far_allbinary_layer = jr.cell(jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
        let l_group_layer_manager_listener = jr.call_static("GroupLayerManagerListener", "getInstance_0", [])
        let l_list = jr.call(l_group_layer_manager_listener, "getList_1", [jr.get_field(jr.call_static("BasicGroupFactory", "getInstance_0", []), "ENEMY")])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_all_binary_layer = jr.cell(jr.JNull)
        let l_owner_layer_interface = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_all_binary_layer, jr.call(l_list, "get_1", [jr.get(l_index)]))
            case jr.truth(jr.ne(jr.call(jr.get(l_all_binary_layer), "getType_0", []), jr.call_static("WeaponLayer", "getStaticType_0", []))) {
                True -> {
                let l_distance = jr.as_i(jr.call(this, "getXYDistance_1", [jr.get(l_all_binary_layer)]))
                case jr.truth(jr.gt(l_distance, jr.get(l_max_distance))) {
                    True -> {
                    jr.set(l_max_distance, jr.as_i(l_distance))
                    jr.set(l_far_allbinary_layer, jr.get(l_all_binary_layer))
                    case jr.truth(jr.gt(l_distance, jr.get_field(this, "allowedDistance"))) {
                        True -> {
                        jr.brk("")
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
        case jr.truth(jr.gt(jr.get(l_max_distance), jr.get_field(this, "allowedDistance"))) {
            True -> {
            case jr.truth(jr.ne(jr.get(l_far_allbinary_layer), jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))) {
                True -> {
                jr.set(l_owner_layer_interface, jr.call_inherited(this, "FlockingAI", "getOwnerLayerInterface_0", []))
                case jr.truth(jr.lt(jr.call(jr.get(l_far_allbinary_layer), "getXP_0", []), jr.call(jr.get(l_owner_layer_interface), "getXP_0", []))) {
                    True -> {
                    jr.call_inherited(this, "FlockingAI", "processKeyAI_1", [jr.get_static("Canvas", "LEFT")])
                    Nil
                }
                    False -> case jr.truth(jr.gt(jr.call(jr.get(l_far_allbinary_layer), "getXP_0", []), jr.call(jr.get(l_owner_layer_interface), "getXP_0", []))) {
                    True -> {
                    jr.call_inherited(this, "FlockingAI", "processKeyAI_1", [jr.get_static("Canvas", "RIGHT")])
                    Nil
                }
                    False -> case jr.truth(jr.gt(jr.call(jr.get(l_far_allbinary_layer), "getYP_0", []), jr.call(jr.get(l_owner_layer_interface), "getYP_0", []))) {
                    True -> {
                    jr.call_inherited(this, "FlockingAI", "processKeyAI_1", [jr.get_static("Canvas", "UP")])
                    Nil
                }
                    False -> case jr.truth(jr.lt(jr.call(jr.get(l_far_allbinary_layer), "getYP_0", []), jr.call(jr.get(l_owner_layer_interface), "getYP_0", []))) {
                    True -> {
                    jr.call_inherited(this, "FlockingAI", "processKeyAI_1", [jr.get_static("Canvas", "DOWN")])
                    Nil
                }
                    False -> Nil
                }
                }
                }
                }
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m4__getxydistance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer] = jargs
        let l_owner_layer_interface = jr.call_inherited(this, "FlockingAI", "getOwnerLayerInterface_0", [])
        let l_x_total_distance = jr.as_i(jr.sub(jr.add(jr.call(l_all_binary_layer, "getXP_0", []), jr.call(l_all_binary_layer, "getHalfWidth_0", [])), jr.add(jr.call(l_owner_layer_interface, "getXP_0", []), jr.call(l_owner_layer_interface, "getHalfWidth_0", []))))
        let l_y_total_distance = jr.as_i(jr.sub(jr.add(jr.call(l_all_binary_layer, "getYP_0", []), jr.call(l_all_binary_layer, "getHalfHeight_0", [])), jr.add(jr.call(l_owner_layer_interface, "getYP_0", []), jr.call(l_owner_layer_interface, "getHalfHeight_0", []))))
        let l_math_util = jr.call_static("MathUtil", "getInstance_0", [])
        let l_total_distance = jr.as_i(jr.add(jr.call(l_math_util, "abs_1", [l_x_total_distance]), jr.call(l_math_util, "abs_1", [l_y_total_distance])))
    jr.as_i(l_total_distance)
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        let l_allowed_distance = jr.call(l_hashtable, "get_1", [jr.get_static("BasePatrolAI", "MAX_DISTANCE")])
        jr.set_field(this, "allowedDistance", jr.as_i(jr.call(l_allowed_distance, "intValue_0", [])))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FlockingAI",
        "org.allbinary.game.ag.ai.scroller.FlockingAI",
        "BasicAI",
        [],
        False,
        [#("allowedDistance", jr.JInt(0))],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m3__processai), 
            jr.Method("getXYDistance_1", ["AllBinaryLayer"], False, c1_m4__getxydistance), 
            jr.Method("jinit_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

