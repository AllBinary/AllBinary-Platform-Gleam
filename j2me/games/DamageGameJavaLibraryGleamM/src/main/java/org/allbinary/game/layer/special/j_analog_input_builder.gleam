// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnalogInputBuilder

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AnalogInputBuilder", "instance", jr.new("AnalogInputBuilder", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AnalogInputBuilder", "instance")
}

fn c1_m3__disable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_processor_array, l_collidable_destroyable_damageable_layer] = jargs
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "UP"), jr.new("SpecialUpGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "DOWN"), jr.new("SpecialDownGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "RIGHT"), jr.new("SpecialRightGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "LEFT"), jr.new("SpecialLeftGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "KEY_NUM0"), jr.new("Special1GameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "KEY_NUM5"), jr.new("Special3GameInputProcessor", [l_collidable_destroyable_damageable_layer]))
    jr.JNull
}

fn c1_m4__enable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_processor_array, l_collidable_destroyable_damageable_layer] = jargs
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "UP"), jr.new("SpecialAnalogUpGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "DOWN"), jr.new("SpecialAnalogDownGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "RIGHT"), jr.new("SpecialAnalogRightGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "LEFT"), jr.new("SpecialAnalogLeftGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "KEY_NUM0"), jr.new("SpecialAnalogLeftTriggerGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
        jr.aset(l_input_processor_array, jr.get_static("Canvas", "KEY_NUM5"), jr.new("SpecialAnalogRightTriggerGameInputProcessor", [l_collidable_destroyable_damageable_layer]))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnalogInputBuilder",
        "org.allbinary.game.layer.special.AnalogInputBuilder",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("disable_2", ["GameInputProcessorArr", "CollidableDestroyableDamageableLayer"], False, c1_m3__disable), 
            jr.Method("enable_2", ["GameInputProcessorArr", "CollidableDestroyableDamageableLayer"], False, c1_m4__enable), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

