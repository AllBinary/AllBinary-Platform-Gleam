// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LurchRotationAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__reverse(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("LurchAI", this, "reverse_0", [])
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m4__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_inherited(this, "LurchRotationAI", "currentRelativeAngle"), jr.JInt(0))) {
            True -> {
            let l_rotation_animation_interface = jr.get_field(this, "rotationAnimationInterface")
            let l_angle_increment_info = jr.call(jr.call(l_rotation_animation_interface, "getAngleInfoP_0", []), "getAngleIncrementInfo_0", [])
            let l_rotation_animation_interface_composite_interface = jr.call_inherited(this, "LurchRotationAI", "getOwnerLayerInterface_0", [])
            jr.call(l_rotation_animation_interface_composite_interface, "setFrame_1", [jr.call(jr.get_field(l_angle_increment_info, "RIGHT_FRAME"), "intValue_0", [])])
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_inherited(this, "LurchRotationAI", "currentRelativeAngle"), jr.JInt(180))) {
            True -> {
            let l_rotation_animation_interface = jr.get_field(this, "rotationAnimationInterface")
            let l_angle_increment_info = jr.call(jr.call(l_rotation_animation_interface, "getAngleInfoP_0", []), "getAngleIncrementInfo_0", [])
            let l_rotation_animation_interface_composite_interface = jr.call_inherited(this, "LurchRotationAI", "getOwnerLayerInterface_0", [])
            jr.call(l_rotation_animation_interface_composite_interface, "setFrame_1", [jr.call(jr.get_field(l_angle_increment_info, "LEFT_FRAME"), "intValue_0", [])])
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("LurchAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        let l_rotation_animation_interface_composite_interface = jr.call_inherited(this, "LurchRotationAI", "getOwnerLayerInterface_0", [])
        jr.set_field(this, "rotationAnimationInterface", jr.call(l_rotation_animation_interface_composite_interface, "getRotationAnimationInterface_0", []))
        jr.call(this, "update_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LurchRotationAI",
        "org.allbinary.game.ag.ai.LurchRotationAI",
        "LurchAI",
        [],
        False,
        [#("rotationAnimationInterface", jr.JNull)],
        [],
        [
            jr.Method("reverse_0", [], False, c1_m3__reverse), 
            jr.Method("update_0", [], False, c1_m4__update), 
            jr.Method("jinit_2", ["AllBinaryLayer", "GameInput"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

