// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.scroller
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PacePatrolAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "isFollowLimitedByTerrain", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.call_inherited(this, "PacePatrolAI", "update_0", [])
        let l_direction = jr.call(this, "setFiringDirectionForTargetIfInRange_0", [])
        let l_direction_factory = jr.call_static("DirectionFactory", "getInstance_0", [])
        case jr.truth(jr.eq(l_direction, jr.get_field(l_direction_factory, "LEFT"))) {
            True -> {
            case jr.truth(case jr.truth(jr.ne(jr.get_inherited(this, "PacePatrolAI", "lastKeyDirection"), jr.get_inherited(this, "PacePatrolAI", "keyDirection"))) { True -> jr.JBool(True) False -> jr.not(jr.get_field(this, "isFollowLimitedByTerrain")) }) {
                True -> {
                jr.call_super("BasePatrolAI", this, "processKeyAI_1", [jr.get_static("Canvas", "LEFT")])
                Nil
            }
                False -> Nil
            }
            jr.set_inherited(this, "PacePatrolAI", "keyDirection", jr.get_static("Canvas", "LEFT"))
            jr.set_inherited(this, "PacePatrolAI", "lastKeyDirection", jr.get_inherited(this, "PacePatrolAI", "keyDirection"))
            jr.set_inherited(this, "PacePatrolAI", "xTotalDistance", jr.JInt(0))
            jr.call_super("BasePatrolAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM1")])
            Nil
        }
            False -> case jr.truth(jr.eq(l_direction, jr.get_field(l_direction_factory, "RIGHT"))) {
            True -> {
            case jr.truth(case jr.truth(jr.ne(jr.get_inherited(this, "PacePatrolAI", "lastKeyDirection"), jr.get_inherited(this, "PacePatrolAI", "keyDirection"))) { True -> jr.JBool(True) False -> jr.not(jr.get_field(this, "isFollowLimitedByTerrain")) }) {
                True -> {
                jr.call_super("BasePatrolAI", this, "processKeyAI_1", [jr.get_static("Canvas", "RIGHT")])
                Nil
            }
                False -> Nil
            }
            jr.set_inherited(this, "PacePatrolAI", "keyDirection", jr.get_static("Canvas", "RIGHT"))
            jr.set_inherited(this, "PacePatrolAI", "lastKeyDirection", jr.get_inherited(this, "PacePatrolAI", "keyDirection"))
            jr.set_inherited(this, "PacePatrolAI", "xTotalDistance", jr.JInt(0))
            jr.call_super("BasePatrolAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM1")])
            Nil
        }
            False -> {
            jr.call_super("BasePatrolAI", this, "processKeyAI_1", [jr.get_inherited(this, "PacePatrolAI", "keyDirection")])
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_m6__setfiringdirectionfortargetifinrange(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_direction_factory = jr.call_static("DirectionFactory", "getInstance_0", [])
        let l_owner_layer_interface = jr.call_inherited(this, "PacePatrolAI", "getOwnerLayerInterface_0", [])
        let l_direction = jr.cell(jr.get_field(l_direction_factory, "NOT_BORDERED_WITH"))
        let l_last_tracking_event = jr.cell(jr.JNull)
        let l_last_tracking_layer_interface = jr.cell(jr.JNull)
        let l_direction_composite_interface = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(jr.get_field(this, "trackingList"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_last_tracking_event, jr.call(jr.get_field(this, "trackingList"), "get_1", [jr.JInt(0)]))
            jr.set(l_last_tracking_layer_interface, jr.call(jr.get(l_last_tracking_event), "getLayerInterface_0", []))
            let l_x = jr.as_i(jr.call(jr.get(l_last_tracking_layer_interface), "getXP_0", []))
            let l_y = jr.as_i(jr.call(jr.get(l_last_tracking_layer_interface), "getYP_0", []))
            let l_y_distance = jr.as_i(jr.sub(jr.sub(jr.call(l_owner_layer_interface, "getYP_0", []), l_y), jr.call(l_owner_layer_interface, "getHeight_0", [])))
            let l_x_distance = jr.as_i(jr.sub(jr.sub(jr.call(l_owner_layer_interface, "getXP_0", []), l_x), jr.call(l_owner_layer_interface, "getWidth_0", [])))
            let l_abs_x_distance = jr.as_i(jr.call_static("Math", "abs_1", [l_x_distance]))
            let l_abs_y_distance = jr.as_i(jr.call_static("Math", "abs_1", [l_y_distance]))
            case jr.truth(jr.le(l_abs_y_distance, jr.JInt(100))) {
                True -> {
                case jr.truth(jr.lt(l_abs_x_distance, jr.div(jr.call(this, "getFiringDistance_0", []), jr.JInt(2)))) {
                    True -> {
                    jr.set(l_direction_composite_interface, jr.call_inherited(this, "PacePatrolAI", "getOwnerLayerInterface_0", []))
                    case jr.truth(case jr.truth(jr.lt(l_x_distance, jr.JInt(0))) { True -> jr.eq(jr.call(jr.get(l_direction_composite_interface), "getDirection_0", []), jr.get_field(l_direction_factory, "RIGHT")) False -> jr.JBool(False) }) {
                        True -> {
                        jr.set(l_direction, jr.get_field(l_direction_factory, "RIGHT"))
                        Nil
                    }
                        False -> case jr.truth(case jr.truth(jr.gt(l_x_distance, jr.JInt(0))) { True -> jr.eq(jr.call(jr.get(l_direction_composite_interface), "getDirection_0", []), jr.get_field(l_direction_factory, "LEFT")) False -> jr.JBool(False) }) {
                        True -> {
                        jr.set(l_direction, jr.get_field(l_direction_factory, "LEFT"))
                        Nil
                    }
                        False -> Nil
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
            Nil
        })
            Nil
        }
    jr.get(l_direction)
}

fn c1_m7__disable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m9__onmovement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_tracking_event] = jargs
        jr.call(jr.get_field(this, "trackingList"), "clear_0", [])
        jr.call(jr.get_field(this, "trackingList"), "add_1", [l_tracking_event])
    jr.JNull
}

fn c1_m10__getfiringdistance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "firingDistance"))
}

fn c1_m11__setfiringdistance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_firing_distance] = jargs
    let l_firing_distance = jr.as_i(l_firing_distance)
        jr.set_field(this, "firingDistance", jr.as_i(l_firing_distance))
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasePatrolAI", this, [l_hashtable, l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.call(jr.call_static("TrackingEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
        jr.set_field(this, "trackingList", jr.new("BasicArrayListD", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PacePatrolAI",
        "org.allbinary.game.ag.ai.scroller.PacePatrolAI",
        "BasePatrolAI",
        ["TrackingEventListenerInterface"],
        False,
        [#("trackingList", jr.JNull), #("firingDistance", jr.JInt(0)), #("isFollowLimitedByTerrain", jr.JBool(False))],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m5__processai), 
            jr.Method("setFiringDirectionForTargetIfInRange_0", [], False, c1_m6__setfiringdirectionfortargetifinrange), 
            jr.Method("disable_0", [], False, c1_m7__disable), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m8__onevent), 
            jr.Method("onMovement_1", ["TrackingEvent"], False, c1_m9__onmovement), 
            jr.Method("getFiringDistance_0", [], False, c1_m10__getfiringdistance), 
            jr.Method("setFiringDistance_1", ["int"], False, c1_m11__setfiringdistance), 
            jr.Method("jinit_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

