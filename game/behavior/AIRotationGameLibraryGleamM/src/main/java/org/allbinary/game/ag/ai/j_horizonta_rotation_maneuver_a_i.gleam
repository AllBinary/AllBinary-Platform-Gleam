// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HorizontaRotationManeuverAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstanceAt_2", [jr.JInt(10), jr.get_static("Integer", "MAX_VALUE")]))
    jr.set_field(this, "currentSpeedDivisor", jr.as_i(jr.JInt(5)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__transition(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_rotation_animation_interface = jr.get_field(this, "rotationAnimationInterface")
        let l_angle_increment_info = jr.call(jr.call(l_rotation_animation_interface, "getAngleInfoP_0", []), "getAngleIncrementInfo_0", [])
        let l_rotation_animation_interface_composite_interface = jr.call_inherited(this, "HorizontaRotationManeuverAI", "getOwnerLayerInterface_0", [])
        jr.call(l_rotation_animation_interface_composite_interface, "setFrame_1", [jr.call(jr.get_field(l_angle_increment_info, "RIGHT_FRAME"), "intValue_0", [])])
        let l_allbinary_layer = jr.call_inherited(this, "HorizontaRotationManeuverAI", "getOwnerLayerInterface_0", [])
        jr.call(l_allbinary_layer, "setPosition_3", [jr.call(l_allbinary_layer, "getXP_0", []), jr.JInt(1), jr.call(l_allbinary_layer, "getZP_0", [])])
    jr.JNull
}

fn c1_m8__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_rotation_animation_interface = jr.get_field(this, "rotationAnimationInterface")
        let l_angle_increment_info = jr.call(jr.call(l_rotation_animation_interface, "getAngleInfoP_0", []), "getAngleIncrementInfo_0", [])
        let l_frame = jr.as_i(jr.call(jr.get_field(this, "rotationAnimationInterface"), "getFrame_0", []))
        let l_owner_layer_interface = jr.call_inherited(this, "HorizontaRotationManeuverAI", "getOwnerLayerInterface_0", [])
        case jr.truth(case jr.truth(jr.le(jr.sub(jr.call(l_owner_layer_interface, "getXP_0", []), jr.call(l_owner_layer_interface, "getWidth_0", [])), jr.JInt(0))) { True -> jr.eq(l_frame, jr.call(jr.get_field(l_angle_increment_info, "LEFT_FRAME"), "intValue_0", [])) False -> jr.JBool(False) }) {
            True -> {
            jr.call(this, "reverse_0", [])
            jr.call(this, "drop_0", [])
            Nil
        }
            False -> Nil
        }
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        case jr.truth(case jr.truth(jr.gt(jr.add(jr.call(l_owner_layer_interface, "getX2_0", []), jr.call(l_owner_layer_interface, "getWidth_0", [])), jr.call(l_display_info, "getLastWidth_0", []))) { True -> jr.eq(l_frame, jr.call(jr.get_field(l_angle_increment_info, "RIGHT_FRAME"), "intValue_0", [])) False -> jr.JBool(False) }) {
            True -> {
            jr.call(this, "reverse_0", [])
            jr.call(this, "accelerate_0", [])
            jr.call(this, "drop_0", [])
            Nil
        }
            False -> Nil
        }
        let l_index = jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        case jr.truth(case jr.truth(jr.eq(jr.rem(l_index, jr.get_field(this, "currentSpeedDivisor")), jr.JInt(0))) { True -> jr.eq(jr.rem(l_index, jr.JInt(2)), jr.JInt(0)) False -> jr.JBool(False) }) {
            True -> {
            jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "UP")])
            jr.call(jr.get_field(this, "velocityInterface"), "limitMaxXYVelocity_1", [jr.div(jr.call(jr.get_field(this, "velocityInterface"), "getMaxForwardVelocity_0", []), jr.get_field(this, "currentSpeedDivisor"))])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
        case jr.truth(jr.eq(l_frame, jr.call(jr.get_field(l_angle_increment_info, "LEFT_FRAME"), "intValue_0", []))) {
            True -> {
            jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM0")])
            Nil
        }
            False -> case jr.truth(jr.eq(l_frame, jr.call(jr.get_field(l_angle_increment_info, "RIGHT_FRAME"), "intValue_0", []))) {
            True -> {
            jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_POUND")])
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_m9__reverse(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_rotation_animation_interface = jr.get_field(this, "rotationAnimationInterface")
        let l_angle_increment_info = jr.call(jr.call(l_rotation_animation_interface, "getAngleInfoP_0", []), "getAngleIncrementInfo_0", [])
        let l_frame = jr.as_i(jr.call(jr.get_field(this, "rotationAnimationInterface"), "getFrame_0", []))
        case jr.truth(jr.eq(l_frame, jr.call(jr.get_field(l_angle_increment_info, "LEFT_FRAME"), "intValue_0", []))) {
            True -> {
            let l_rotation_animation_interface_composite_interface = jr.call_inherited(this, "HorizontaRotationManeuverAI", "getOwnerLayerInterface_0", [])
            jr.call(l_rotation_animation_interface_composite_interface, "setFrame_1", [jr.call(jr.get_field(l_angle_increment_info, "RIGHT_FRAME"), "intValue_0", [])])
            jr.call(jr.get_field(this, "baseVelocityInterface"), "zero_0", [])
            Nil
        }
            False -> case jr.truth(jr.eq(l_frame, jr.call(jr.get_field(l_angle_increment_info, "RIGHT_FRAME"), "intValue_0", []))) {
            True -> {
            let l_rotation_animation_interface_composite_interface = jr.call_inherited(this, "HorizontaRotationManeuverAI", "getOwnerLayerInterface_0", [])
            jr.call(l_rotation_animation_interface_composite_interface, "setFrame_1", [jr.call(jr.get_field(l_angle_increment_info, "LEFT_FRAME"), "intValue_0", [])])
            jr.call(jr.get_field(this, "baseVelocityInterface"), "zero_0", [])
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_m10__accelerate(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.gt(jr.get_field(this, "currentSpeedDivisor"), jr.JInt(1))) {
            True -> {
            jr.incr(fn() { jr.get_field(this, "currentSpeedDivisor") }, fn(jv) { jr.set_field(this, "currentSpeedDivisor", jv) }, -1, True)
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m11__drop(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_owner_layer_interface = jr.call_inherited(this, "HorizontaRotationManeuverAI", "getOwnerLayerInterface_0", [])
        let l_y = jr.cell(jr.as_i(jr.call(l_owner_layer_interface, "getYP_0", [])))
        case jr.truth(jr.gt(jr.add(jr.call(l_owner_layer_interface, "getY2_0", []), jr.call(l_owner_layer_interface, "getHeight_0", [])), jr.call(l_display_info, "getLastHeight_0", []))) {
            True -> {
            jr.set(l_y, jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> {
            jr.compound(fn() { jr.get(l_y) }, fn(jv) { jr.add(jv, jr.add(jr.call(l_owner_layer_interface, "getHeight_0", []), jr.JInt(1))) }, fn(jv) { jr.set(l_y, jv) })
            Nil
        }
        }
        jr.call(l_owner_layer_interface, "setPosition_3", [jr.call(l_owner_layer_interface, "getXP_0", []), jr.get(l_y), jr.call(l_owner_layer_interface, "getZP_0", [])])
    jr.JNull
}

fn c1_m12__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("ArtificialIntelligence", "AI_ID"))
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        let l_rotation_animation_interface_composite_interface = jr.call_inherited(this, "HorizontaRotationManeuverAI", "getOwnerLayerInterface_0", [])
        jr.set_field(this, "rotationAnimationInterface", jr.call(l_rotation_animation_interface_composite_interface, "getRotationAnimationInterface_0", []))
        let l_velocity_interface_composite_interface = jr.call_inherited(this, "HorizontaRotationManeuverAI", "getOwnerLayerInterface_0", [])
        jr.set_field(this, "baseVelocityInterface", jr.call(l_velocity_interface_composite_interface, "getVelocityProperties_0", []))
        jr.set_field(this, "velocityInterface", jr.get_field(this, "baseVelocityInterface"))
        let l_rotation_animation_interface = jr.get_field(this, "rotationAnimationInterface")
        let l_angle_increment_info = jr.call(jr.call(l_rotation_animation_interface, "getAngleInfoP_0", []), "getAngleIncrementInfo_0", [])
        jr.call(l_rotation_animation_interface_composite_interface, "setFrame_1", [jr.call(jr.get_field(l_angle_increment_info, "RIGHT_FRAME"), "intValue_0", [])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HorizontaRotationManeuverAI",
        "org.allbinary.game.ag.ai.HorizontaRotationManeuverAI",
        "BasicAI",
        ["ArtificialIntelligenceTransitionInterface"],
        False,
        [#("circularIndexUtil", jr.JNull), #("currentSpeedDivisor", jr.JInt(0)), #("rotationAnimationInterface", jr.JNull), #("baseVelocityInterface", jr.JNull), #("velocityInterface", jr.JNull)],
        [],
        [
            jr.Method("transition_0", [], False, c1_m7__transition), 
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m8__processai), 
            jr.Method("reverse_0", [], False, c1_m9__reverse), 
            jr.Method("accelerate_0", [], False, c1_m10__accelerate), 
            jr.Method("drop_0", [], False, c1_m11__drop), 
            jr.Method("getId_0", [], False, c1_m12__getid), 
            jr.Method("jinit_2", ["AllBinaryLayer", "GameInput"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

