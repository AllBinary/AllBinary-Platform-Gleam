// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.tactical
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HorizontalManeuverAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "currentRelativeAngle", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_owner_layer_interface = jr.call_inherited(this, "HorizontalManeuverAI", "getOwnerLayerInterface_0", [])
        let l_x = jr.cell(jr.as_i(jr.call(l_owner_layer_interface, "getXP_0", [])))
        case jr.truth(jr.le(jr.sub(jr.call(l_owner_layer_interface, "getXP_0", []), jr.get_field(this, "currentSpeed")), jr.JInt(0))) {
            True -> {
            jr.call(this, "reverse_0", [])
            jr.call(this, "drop_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(jr.add(jr.call(l_owner_layer_interface, "getX2_0", []), jr.get_field(this, "currentSpeed")), jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "getLastWidth_0", []))) {
            True -> {
            jr.call(this, "reverse_0", [])
            jr.call(this, "accelerate_0", [])
            jr.call(this, "drop_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(jr.get_field(this, "currentRelativeAngle"), jr.JInt(0))) {
            True -> {
            jr.compound(fn() { jr.get(l_x) }, fn(jv) { jr.add(jv, jr.get_field(this, "currentSpeed")) }, fn(jv) { jr.set(l_x, jv) })
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "currentRelativeAngle"), jr.JInt(180))) {
            True -> {
            jr.compound(fn() { jr.get(l_x) }, fn(jv) { jr.sub(jv, jr.get_field(this, "currentSpeed")) }, fn(jv) { jr.set(l_x, jv) })
            Nil
        }
            False -> Nil
        }
        }
        jr.call(l_owner_layer_interface, "setPosition_3", [jr.get(l_x), jr.call(l_owner_layer_interface, "getYP_0", []), jr.call(l_owner_layer_interface, "getZP_0", [])])
        case jr.truth(jr.eq(jr.get_field(this, "currentRelativeAngle"), jr.JInt(0))) {
            True -> {
            jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM0")])
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "currentRelativeAngle"), jr.JInt(180))) {
            True -> {
            jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_POUND")])
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_m5__reverse(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_field(this, "currentRelativeAngle"), jr.JInt(180))) {
            True -> {
            jr.set_field(this, "currentRelativeAngle", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "currentRelativeAngle"), jr.JInt(0))) {
            True -> {
            jr.set_field(this, "currentRelativeAngle", jr.as_i(jr.JInt(180)))
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_m6__accelerate(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.lt(jr.get_field(this, "currentSpeed"), jr.JInt(20))) {
            True -> {
            jr.incr(fn() { jr.get_field(this, "currentSpeed") }, fn(jv) { jr.set_field(this, "currentSpeed", jv) }, 1, True)
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m7__drop(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_owner_layer_interface = jr.call_inherited(this, "HorizontalManeuverAI", "getOwnerLayerInterface_0", [])
        let l_y = jr.cell(jr.as_i(jr.call(l_owner_layer_interface, "getYP_0", [])))
        case jr.truth(jr.gt(jr.add(jr.call(l_owner_layer_interface, "getY2_0", []), jr.call(l_owner_layer_interface, "getHeight_0", [])), jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "getLastHeight_0", []))) {
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

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "currentSpeed", jr.as_i(jr.JInt(5)))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HorizontalManeuverAI",
        "org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI",
        "BasicAI",
        [],
        False,
        [#("currentRelativeAngle", jr.JInt(0)), #("currentSpeed", jr.JInt(0))],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m4__processai), 
            jr.Method("reverse_0", [], False, c1_m5__reverse), 
            jr.Method("accelerate_0", [], False, c1_m6__accelerate), 
            jr.Method("drop_0", [], False, c1_m7__drop), 
            jr.Method("jinit_2", ["AllBinaryLayer", "GameInput"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

