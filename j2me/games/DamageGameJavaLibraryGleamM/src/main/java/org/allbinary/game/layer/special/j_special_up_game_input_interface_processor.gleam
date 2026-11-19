// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialUpGameInputInterfaceProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__processevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
        jr.call(jr.get_inherited(this, "SpecialUpGameInputInterfaceProcessor", "specialGameInputInterface"), "up_0", [])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_destroyable_damageable_layer] = jargs
        jr.super_init("SpecialGameInputInterfaceProcessor", this, [l_collidable_destroyable_damageable_layer])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialUpGameInputInterfaceProcessor",
        "org.allbinary.game.layer.special.SpecialUpGameInputInterfaceProcessor",
        "SpecialGameInputInterfaceProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("processEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m2__processevent), 
            jr.Method("jinit_1", ["SpecialGameInputInterface"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

