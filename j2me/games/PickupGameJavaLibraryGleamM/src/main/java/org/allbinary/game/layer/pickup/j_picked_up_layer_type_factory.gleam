// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PickedUpLayerTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.new("PickedUpLayerType", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")]))
    jr.set_field(this, "BEAM", jr.new("PickedUpLayerType", [jr.JStr("BEAM")]))
    jr.set_field(this, "MINE", jr.new("PickedUpLayerType", [jr.JStr("MINE")]))
    jr.set_field(this, "PROJECTILE", jr.new("PickedUpLayerType", [jr.JStr("PROJECTILE")]))
    jr.set_field(this, "ENHANCEMENT", jr.new("PickedUpLayerType", [jr.JStr("Enhancement")]))
    jr.set_field(this, "MORPH", jr.new("PickedUpLayerType", [jr.JStr("Morph")]))
    jr.set_field(this, "PART", jr.new("PickedUpLayerType", [jr.JStr("Part")]))
    jr.set_field(this, "HEAL", jr.new("PickedUpLayerType", [jr.JStr("Heal")]))
    jr.set_field(this, "LIFE", jr.new("PickedUpLayerType", [jr.JStr("Life")]))
    jr.set_field(this, "POINTS", jr.new("PickedUpLayerType", [jr.JStr("Points")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PickedUpLayerTypeFactory", "instance", jr.new("PickedUpLayerTypeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PickedUpLayerTypeFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PickedUpLayerTypeFactory",
        "org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory",
        "Object",
        [],
        False,
        [#("NONE", jr.JNull), #("BEAM", jr.JNull), #("MINE", jr.JNull), #("PROJECTILE", jr.JNull), #("ENHANCEMENT", jr.JNull), #("MORPH", jr.JNull), #("PART", jr.JNull), #("HEAL", jr.JNull), #("LIFE", jr.JNull), #("POINTS", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

