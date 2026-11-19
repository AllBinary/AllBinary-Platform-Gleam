// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialAnalogLeftGameInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__processanalog(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event, l_x_analog_value] = jargs
    let l_x_analog_value = jr.as_i(l_x_analog_value)
        jr.call(jr.get_inherited(this, "SpecialAnalogLeftGameInputProcessor", "collidableDestroyableDamageableLayer"), "leftAnalog_1", [l_x_analog_value])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_destroyable_damageable_layer] = jargs
        jr.super_init("SpecialGameInputProcessor", this, [l_collidable_destroyable_damageable_layer])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialAnalogLeftGameInputProcessor",
        "org.allbinary.game.layer.special.SpecialAnalogLeftGameInputProcessor",
        "SpecialGameInputProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("processAnalog_3", ["AllBinaryLayerManager", "GameKeyEvent", "int"], False, c1_m2__processanalog), 
            jr.Method("jinit_1", ["CollidableDestroyableDamageableLayer"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

