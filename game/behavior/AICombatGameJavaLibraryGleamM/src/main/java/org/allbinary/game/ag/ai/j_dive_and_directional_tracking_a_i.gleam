// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DiveAndDirectionalTrackingAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "mathUtil", jr.call_static("MathUtil", "getInstance_0", []))
    jr.set_field(this, "directionFactory", jr.call_static("DirectionFactory", "getInstance_0", []))
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(500)]))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.set_field(this, "directionToKeyMap", jr.array_of("I", [jr.get_static("Canvas", "LEFT"), jr.get_static("Canvas", "DOWN"), jr.get_static("Canvas", "UP"), jr.get_static("Canvas", "RIGHT")]))
    jr.set_field(this, "directionOfTarget", jr.call_static("Direction", "getInstance_1", [jr.JInt(0)]))
    jr.set_field(this, "MIN_DISTANCE", jr.as_i(jr.JInt(40)))
    jr.set_field(this, "lastTrackingLayerInterface", jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
    jr.set_field(this, "lastDirection", jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "NO_DIRECTION"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m18__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        case jr.truth(jr.call(this, "isBeyondTarget_0", [])) {
            True -> {
            jr.call(this, "init_0", [])
            jr.call(jr.get_field(this, "velocityInterface"), "zero_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.not(jr.get_field(this, "diveP"))) {
            True -> {
            jr.call(this, "target_1", [l_all_binary_layer_manager])
            Nil
        }
            False -> {
            jr.call(this, "dive_0", [])
            jr.call(this, "attack_0", [])
            Nil
        }
        }
        jr.call(jr.get_field(this, "list"), "clear_0", [])
    jr.JNull
}

fn c1_m19__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "diveP", jr.JBool(False))
        jr.set_field(this, "directionOfTarget", jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "NOT_BORDERED_WITH"))
        jr.call(jr.call_static("TrackingEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
    jr.JNull
}

fn c1_m20__target(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(jr.call(jr.get_field(this, "list"), "size_0", []), jr.JInt(0))) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_last_tracking_event = jr.call(jr.get_field(this, "list"), "removeAt_1", [jr.JInt(0)])
            jr.set_field(this, "lastTrackingLayerInterface", jr.call(l_last_tracking_event, "getLayerInterface_0", []))
            let l_layer_interface = jr.get_field(this, "lastTrackingLayerInterface")
            let l_owner_layer_interface = jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", [])
            let l_group_array = jr.call(l_layer_interface, "getGroupInterface_0", [])
            let l_owner_group_array = jr.call(l_owner_layer_interface, "getGroupInterface_0", [])
            case jr.truth(jr.eq(l_group_array, l_owner_group_array)) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            let l_x = jr.as_i(jr.call(jr.get_field(this, "lastTrackingLayerInterface"), "getXP_0", []))
            let l_y = jr.as_i(jr.call(jr.get_field(this, "lastTrackingLayerInterface"), "getYP_0", []))
            let l_y_distance = jr.as_i(jr.sub(jr.sub(jr.call(l_owner_layer_interface, "getYP_0", []), l_y), jr.call(l_owner_layer_interface, "getHeight_0", [])))
            let l_x_distance = jr.as_i(jr.sub(jr.sub(jr.call(l_owner_layer_interface, "getXP_0", []), l_x), jr.call(l_owner_layer_interface, "getWidth_0", [])))
            let l_direction_factory = jr.call_static("DirectionFactory", "getInstance_0", [])
            case jr.truth(jr.gt(jr.call(jr.get_field(this, "mathUtil"), "abs_1", [l_y_distance]), jr.call(jr.get_field(this, "mathUtil"), "abs_1", [l_x_distance]))) {
            True -> {
            case jr.truth(jr.gt(l_y_distance, jr.get_field(this, "MIN_DISTANCE"))) {
                True -> {
                jr.set_field(this, "directionOfTarget", jr.get_field(l_direction_factory, "UP"))
                Nil
            }
                False -> case jr.truth(jr.lt(l_y_distance, jr.neg(jr.get_field(this, "MIN_DISTANCE")))) {
                True -> {
                jr.set_field(this, "directionOfTarget", jr.get_field(l_direction_factory, "DOWN"))
                Nil
            }
                False -> Nil
            }
            }
            Nil
        }
            False -> {
            case jr.truth(jr.gt(l_x_distance, jr.get_field(this, "MIN_DISTANCE"))) {
                True -> {
                jr.set_field(this, "directionOfTarget", jr.get_field(l_direction_factory, "LEFT"))
                Nil
            }
                False -> case jr.truth(jr.lt(l_x_distance, jr.neg(jr.get_field(this, "MIN_DISTANCE")))) {
                True -> {
                jr.set_field(this, "directionOfTarget", jr.get_field(l_direction_factory, "RIGHT"))
                Nil
            }
                False -> Nil
            }
            }
            Nil
        }
        }
            case jr.truth(case jr.truth(jr.not(jr.get_field(this, "initialDropped"))) { True -> jr.ne(jr.get_field(this, "directionOfTarget"), jr.get_field(l_direction_factory, "NOT_BORDERED_WITH")) False -> jr.JBool(False) }) {
            True -> {
            jr.call(this, "drop_0", [])
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.get_field(this, "initialDropped")) {
            True -> {
            case jr.truth(case jr.truth(jr.eq(jr.get_field(this, "directionOfTarget"), jr.get_field(l_direction_factory, "UP"))) { True -> jr.JBool(True) False -> jr.eq(jr.get_field(this, "directionOfTarget"), jr.get_field(l_direction_factory, "DOWN")) }) {
                True -> {
                jr.call(this, "verticalTargeting_1", [l_x])
                Nil
            }
                False -> case jr.truth(case jr.truth(jr.eq(jr.get_field(this, "directionOfTarget"), jr.get_field(l_direction_factory, "LEFT"))) { True -> jr.JBool(True) False -> jr.eq(jr.get_field(this, "directionOfTarget"), jr.get_field(l_direction_factory, "RIGHT")) }) {
                True -> {
                jr.call(this, "horizontalTargeting_1", [l_y])
                Nil
            }
                False -> {
                jr.call(jr.get_field(this, "artificialIntelligenceInterface"), "processAI_1", [l_all_binary_layer_manager])
                Nil
            }
            }
            }
            Nil
        }
            False -> Nil
        }
        jr.JNull
    })
}

fn c1_m21__verticaltargeting(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x] = jargs
    let l_x = jr.as_i(l_x)
        let l_owner_layer_interface = jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", [])
        case jr.truth(jr.lt(jr.call(l_owner_layer_interface, "getXP_0", []), l_x)) {
            True -> {
            jr.call(this, "moveRight_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(jr.call(l_owner_layer_interface, "getXP_0", []), l_x)) {
            True -> {
            jr.call(this, "moveLeft_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(case jr.truth(jr.gt(jr.call(l_owner_layer_interface, "getXP_0", []), jr.sub(l_x, jr.JInt(3)))) { True -> jr.lt(jr.call(l_owner_layer_interface, "getXP_0", []), jr.add(l_x, jr.JInt(3))) False -> jr.JBool(False) }) {
            True -> {
            jr.call(this, "setDive_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m22__horizontaltargeting(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_y] = jargs
    let l_y = jr.as_i(l_y)
        let l_owner_layer_interface = jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", [])
        case jr.truth(jr.lt(jr.call(l_owner_layer_interface, "getYP_0", []), l_y)) {
            True -> {
            jr.call(this, "moveDown_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(jr.call(l_owner_layer_interface, "getYP_0", []), l_y)) {
            True -> {
            jr.call(this, "moveUp_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(case jr.truth(jr.gt(jr.call(l_owner_layer_interface, "getYP_0", []), jr.sub(l_y, jr.JInt(3)))) { True -> jr.lt(jr.call(l_owner_layer_interface, "getYP_0", []), jr.add(l_y, jr.JInt(3))) False -> jr.JBool(False) }) {
            True -> {
            jr.call(this, "setDive_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m23__setdive(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "diveP", jr.JBool(True))
        jr.call(jr.get_field(this, "velocityInterface"), "zero_0", [])
        jr.call(jr.call_static("TrackingEventHandler", "getInstance_0", []), "removeListener_1", [this])
    jr.JNull
}

fn c1_m24__moveright(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setLastDirection_1", [jr.get_field(jr.get_field(this, "directionFactory"), "RIGHT")])
        jr.call(jr.get_field(this, "directionalInterface"), "setFrameByDirection_1", [jr.get_field(this, "lastDirection")])
        jr.call(jr.get_field(this, "aiVistor"), "visit_1", [this])
    jr.JNull
}

fn c1_m25__moveleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setLastDirection_1", [jr.get_field(jr.get_field(this, "directionFactory"), "LEFT")])
        jr.call(jr.get_field(this, "directionalInterface"), "setFrameByDirection_1", [jr.get_field(this, "lastDirection")])
        jr.call(jr.get_field(this, "aiVistor"), "visit_1", [this])
    jr.JNull
}

fn c1_m26__movedown(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setLastDirection_1", [jr.get_field(jr.get_field(this, "directionFactory"), "DOWN")])
        jr.call(jr.get_field(this, "directionalInterface"), "setFrameByDirection_1", [jr.get_field(this, "lastDirection")])
        jr.call(jr.get_field(this, "aiVistor"), "visit_1", [this])
    jr.JNull
}

fn c1_m27__moveup(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setLastDirection_1", [jr.get_field(jr.get_field(this, "directionFactory"), "UP")])
        jr.call(jr.get_field(this, "directionalInterface"), "setFrameByDirection_1", [jr.get_field(this, "lastDirection")])
        jr.call(jr.get_field(this, "aiVistor"), "visit_1", [this])
    jr.JNull
}

fn c1_m28__dive(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "directionalInterface"), "setFrameByDirection_1", [jr.get_field(this, "directionOfTarget")])
        jr.call(jr.get_field(this, "aiVistor"), "visit_1", [this])
    jr.JNull
}

fn c1_m29__attack(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM1")])
    jr.JNull
}

fn c1_m30__drop(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTime_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])) {
            True -> {
            jr.set_field(this, "initialDropped", jr.JBool(True))
            jr.call(jr.get_field(this, "aiVistor"), "visit_1", [this])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m31__isbeyondtarget(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "directionOfTarget"), jr.get_field(jr.get_field(this, "directionFactory"), "DOWN"))) {
            True -> {
            case jr.truth(jr.gt(jr.call(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", []), "getYP_0", []), jr.add(jr.call(jr.get_field(this, "lastTrackingLayerInterface"), "getYP_0", []), jr.get_field(this, "MIN_DISTANCE")))) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> {
                jr.ret(jr.JBool(False))
                Nil
            }
            }
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "directionOfTarget"), jr.get_field(jr.get_field(this, "directionFactory"), "UP"))) {
            True -> {
            case jr.truth(jr.lt(jr.call(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", []), "getYP_0", []), jr.add(jr.call(jr.get_field(this, "lastTrackingLayerInterface"), "getYP_0", []), jr.get_field(this, "MIN_DISTANCE")))) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> {
                jr.ret(jr.JBool(False))
                Nil
            }
            }
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "directionOfTarget"), jr.get_field(jr.get_field(this, "directionFactory"), "RIGHT"))) {
            True -> {
            case jr.truth(jr.gt(jr.call(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", []), "getXP_0", []), jr.add(jr.call(jr.get_field(this, "lastTrackingLayerInterface"), "getXP_0", []), jr.get_field(this, "MIN_DISTANCE")))) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> {
                jr.ret(jr.JBool(False))
                Nil
            }
            }
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "directionOfTarget"), jr.get_field(jr.get_field(this, "directionFactory"), "LEFT"))) {
            True -> {
            case jr.truth(jr.lt(jr.call(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", []), "getXP_0", []), jr.add(jr.call(jr.get_field(this, "lastTrackingLayerInterface"), "getXP_0", []), jr.get_field(this, "MIN_DISTANCE")))) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> {
                jr.ret(jr.JBool(False))
                Nil
            }
            }
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        }
        }
        }
        jr.JNull
    })
}

fn c1_m32__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m33__onmovement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_tracking_event] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_tracking_event])
    jr.JNull
}

fn c1_m34__ondestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_destroyed_event] = jargs
        case jr.truth(jr.eq(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", []), jr.call(l_destroyed_event, "getLayerInterface_0", []))) {
            True -> {
            jr.call(jr.call_static("TrackingEventHandler", "getInstance_0", []), "removeListener_1", [this])
            jr.call(jr.call_static("DestroyedEventHandler", "getInstance_0", []), "removeListener_1", [this])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m35__setlastdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_last_direction] = jargs
        jr.set_field(this, "lastDirection", l_last_direction)
        let l_value = jr.as_i(jr.call(jr.call(this, "getLastDirection_0", []), "getValue_0", []))
        case jr.truth(jr.lt(l_value, jr.JInt(4))) {
            True -> {
            jr.call_super("BasicAI", this, "setLastKey_1", [jr.aget(jr.get_field(this, "directionToKeyMap"), l_value)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m36__setlastkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_last_key] = jargs
    let l_last_key = jr.as_i(l_last_key)
        jr.call_super("BasicAI", this, "setLastKey_1", [l_last_key])
        case jr.truth(jr.eq(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getLastKey_0", []), jr.get_static("Canvas", "LEFT"))) {
            True -> {
            jr.set_field(this, "lastDirection", jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "LEFT"))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getLastKey_0", []), jr.get_static("Canvas", "DOWN"))) {
            True -> {
            jr.set_field(this, "lastDirection", jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "DOWN"))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getLastKey_0", []), jr.get_static("Canvas", "UP"))) {
            True -> {
            jr.set_field(this, "lastDirection", jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "UP"))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getLastKey_0", []), jr.get_static("Canvas", "RIGHT"))) {
            True -> {
            jr.set_field(this, "lastDirection", jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "RIGHT"))
            Nil
        }
            False -> Nil
        }
        }
        }
        }
    jr.JNull
}

fn c1_m37__getlastdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "lastDirection")
}

fn c1_m38__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.call_super("BasicAI", this, "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" LastDirection: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.call(this, "getLastDirection_0", [])])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit17(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_artificial_intelligence_interface, l_game_input, l_visitor] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "aiVistor", l_visitor)
        jr.set_field(this, "artificialIntelligenceInterface", l_artificial_intelligence_interface)
        let l_directional_composite_interface = jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", [])
        jr.set_field(this, "directionalInterface", jr.call(l_directional_composite_interface, "getDirectionalInterface_0", []))
        let l_velocity_interface_composite_interface = jr.call_inherited(this, "DiveAndDirectionalTrackingAI", "getOwnerLayerInterface_0", [])
        jr.set_field(this, "velocityInterface", jr.call(l_velocity_interface_composite_interface, "getVelocityProperties_0", []))
        jr.call(jr.call_static("DestroyedEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
        jr.call(this, "init_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DiveAndDirectionalTrackingAI",
        "org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI",
        "BasicAI",
        ["TrackingEventListenerInterface", "DestroyedEventListenerInterface"],
        False,
        [#("mathUtil", jr.JNull), #("directionFactory", jr.JNull), #("gameTickTimeDelayHelper", jr.JNull), #("timeDelayHelper", jr.JNull), #("list", jr.JNull), #("directionalInterface", jr.JNull), #("velocityInterface", jr.JNull), #("directionToKeyMap", jr.JNull), #("initialDropped", jr.JBool(False)), #("diveP", jr.JBool(False)), #("directionOfTarget", jr.JNull), #("MIN_DISTANCE", jr.JInt(0)), #("lastTrackingLayerInterface", jr.JNull), #("artificialIntelligenceInterface", jr.JNull), #("aiVistor", jr.JNull), #("lastDirection", jr.JNull)],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m18__processai), 
            jr.Method("init_0", [], False, c1_m19__init), 
            jr.Method("target_1", ["AllBinaryLayerManager"], False, c1_m20__target), 
            jr.Method("verticalTargeting_1", ["int"], False, c1_m21__verticaltargeting), 
            jr.Method("horizontalTargeting_1", ["int"], False, c1_m22__horizontaltargeting), 
            jr.Method("setDive_0", [], False, c1_m23__setdive), 
            jr.Method("moveRight_0", [], False, c1_m24__moveright), 
            jr.Method("moveLeft_0", [], False, c1_m25__moveleft), 
            jr.Method("moveDown_0", [], False, c1_m26__movedown), 
            jr.Method("moveUp_0", [], False, c1_m27__moveup), 
            jr.Method("dive_0", [], False, c1_m28__dive), 
            jr.Method("attack_0", [], False, c1_m29__attack), 
            jr.Method("drop_0", [], False, c1_m30__drop), 
            jr.Method("isBeyondTarget_0", [], False, c1_m31__isbeyondtarget), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m32__onevent), 
            jr.Method("onMovement_1", ["TrackingEvent"], False, c1_m33__onmovement), 
            jr.Method("onDestroyed_1", ["DestroyedEvent"], False, c1_m34__ondestroyed), 
            jr.Method("setLastDirection_1", ["Direction"], False, c1_m35__setlastdirection), 
            jr.Method("setLastKey_1", ["int"], False, c1_m36__setlastkey), 
            jr.Method("getLastDirection_0", [], False, c1_m37__getlastdirection), 
            jr.Method("toString_0", [], False, c1_m38__tostring), 
            jr.Method("jinit_4", ["AllBinaryLayer", "ArtificialIntelligenceInterface", "GameInput", "Visitor"], False, c1_jinit17)],
        c1_jfields,
        c1_jclinit,
    )
}

