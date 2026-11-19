// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.scroller
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasePatrolAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "lastKeyDirection", jr.as_i(jr.get_static("Canvas", "RIGHT")))
    jr.set_field(this, "keyDirection", jr.as_i(jr.get_static("Canvas", "RIGHT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasePatrolAI", "MAX_DISTANCE", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(2)]))
    jr.set_static("BasePatrolAI", "DIRECTION_ARRAY", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(3)]))
    jr.set_static("BasePatrolAI", "FIRING_DISTANCE", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(4)]))
    jr.set_static("BasePatrolAI", "SPEED", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(5)]))
    jr.JNull
}

fn c1_m11__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "updateTotalDistance_0", [])
        jr.call(this, "changeDirectionIfReachedPacingAreaMax_0", [])
    jr.JNull
}

fn c1_m12__updatetotaldistance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_velocity_interface_composite_interface = jr.call_inherited(this, "BasePatrolAI", "getOwnerLayerInterface_0", [])
        let l_velocity_properties = jr.call(l_velocity_interface_composite_interface, "getVelocityProperties_0", [])
        jr.compound(fn() { jr.get_field(this, "xTotalDistance") }, fn(jv) { jr.add(jv, jr.call(jr.call(l_velocity_properties, "getVelocityXBasicDecimalP_0", []), "getScaled_0", [])) }, fn(jv) { jr.set_field(this, "xTotalDistance", jv) })
    jr.JNull
}

fn c1_m13__changedirectionifreachedpacingareamax(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_math_util = jr.call_static("MathUtil", "getInstance_0", [])
        let l_total_distance = jr.as_i(jr.call(l_math_util, "abs_1", [jr.get_field(this, "xTotalDistance")]))
        case jr.truth(jr.gt(l_total_distance, jr.get_field(this, "currentDistance"))) {
            True -> {
            jr.call(this, "nextDirection_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m14__nextdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_field(this, "lastKeyDirection"), jr.get_static("Canvas", "LEFT"))) {
            True -> {
            jr.set_field(this, "keyDirection", jr.as_i(jr.get_static("Canvas", "RIGHT")))
            jr.set_field(this, "lastKeyDirection", jr.as_i(jr.get_field(this, "keyDirection")))
            jr.set_field(this, "xTotalDistance", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "lastKeyDirection"), jr.get_static("Canvas", "RIGHT"))) {
            True -> {
            jr.set_field(this, "keyDirection", jr.as_i(jr.get_static("Canvas", "LEFT")))
            jr.set_field(this, "lastKeyDirection", jr.as_i(jr.get_field(this, "keyDirection")))
            jr.set_field(this, "xTotalDistance", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_m15__disable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "maxDistance", jr.call(l_hashtable, "get_1", [jr.get_static("BasePatrolAI", "MAX_DISTANCE")]))
        jr.set_field(this, "currentDistance", jr.as_i(jr.call(jr.get_field(this, "maxDistance"), "intValue_0", [])))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasePatrolAI",
        "org.allbinary.game.ag.ai.scroller.BasePatrolAI",
        "BasicAI",
        [],
        False,
        [#("maxDistance", jr.JNull), #("currentDistance", jr.JInt(0)), #("xTotalDistance", jr.JInt(0)), #("lastKeyDirection", jr.JInt(0)), #("keyDirection", jr.JInt(0))],
        [#("MAX_DISTANCE", jr.JNull), #("DIRECTION_ARRAY", jr.JNull), #("FIRING_DISTANCE", jr.JNull), #("SPEED", jr.JNull)],
        [
            jr.Method("update_0", [], False, c1_m11__update), 
            jr.Method("updateTotalDistance_0", [], False, c1_m12__updatetotaldistance), 
            jr.Method("changeDirectionIfReachedPacingAreaMax_0", [], False, c1_m13__changedirectionifreachedpacingareamax), 
            jr.Method("nextDirection_0", [], False, c1_m14__nextdirection), 
            jr.Method("disable_0", [], False, c1_m15__disable), 
            jr.Method("jinit_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

