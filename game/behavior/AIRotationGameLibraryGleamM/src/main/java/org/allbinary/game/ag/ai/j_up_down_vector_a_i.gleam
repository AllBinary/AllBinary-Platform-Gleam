// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class UpDownVectorAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_y = jr.as_i(jr.mul(jr.call(jr.call_inherited(this, "UpDownVectorAI", "getOwnerLayerInterface_0", []), "getHeight_0", []), jr.JInt(270)))
        case jr.truth(jr.lt(jr.get_field(this, "index"), jr.JInt(5))) {
            True -> {
            let l_basic_decimal = jr.call(jr.get_field(this, "velocityInterface"), "getVelocityYBasicDecimalP_0", [])
            jr.call(l_basic_decimal, "setint_1", [jr.JInt(0)])
            jr.call(l_basic_decimal, "addint_1", [l_y])
            jr.incr(fn() { jr.get_field(this, "index") }, fn(jv) { jr.set_field(this, "index", jv) }, 1, True)
            Nil
        }
            False -> case jr.truth(jr.lt(jr.get_field(this, "index"), jr.JInt(10))) {
            True -> {
            let l_basic_decimal = jr.call(jr.get_field(this, "velocityInterface"), "getVelocityYBasicDecimalP_0", [])
            jr.call(l_basic_decimal, "setint_1", [jr.JInt(0)])
            jr.call(l_basic_decimal, "subtractint_1", [l_y])
            jr.incr(fn() { jr.get_field(this, "index") }, fn(jv) { jr.set_field(this, "index", jv) }, 1, True)
            Nil
        }
            False -> {
            jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
            jr.call(this, "processAI_1", [l_all_binary_layer_manager])
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        let l_velocity_interface_composite_interface = jr.call_inherited(this, "UpDownVectorAI", "getOwnerLayerInterface_0", [])
        jr.set_field(this, "velocityInterface", jr.call(l_velocity_interface_composite_interface, "getVelocityProperties_0", []))
        jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityYBasicDecimalP_0", []), "setint_1", [jr.JInt(0)])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "UpDownVectorAI",
        "org.allbinary.game.ag.ai.UpDownVectorAI",
        "BasicAI",
        [],
        False,
        [#("velocityInterface", jr.JNull), #("index", jr.JInt(0))],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m4__processai), 
            jr.Method("jinit_2", ["AllBinaryLayer", "GameInput"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

