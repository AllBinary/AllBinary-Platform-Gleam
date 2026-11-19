// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerPlacementTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "MAP", jr.new("LayerPlacementType", [jr.get_static("Integer", "MAX_VALUE")]))
    jr.set_field(this, "LEFT", jr.new("LayerPlacementType", [jr.call(jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "LEFT"), "getValue_0", [])]))
    jr.set_field(this, "DOWN", jr.new("LayerPlacementType", [jr.call(jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "DOWN"), "getValue_0", [])]))
    jr.set_field(this, "UP", jr.new("LayerPlacementType", [jr.call(jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "UP"), "getValue_0", [])]))
    jr.set_field(this, "RIGHT", jr.new("LayerPlacementType", [jr.call(jr.get_field(jr.call_static("DirectionFactory", "getInstance_0", []), "RIGHT"), "getValue_0", [])]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LayerPlacementTypeFactory", "instance", jr.new("LayerPlacementTypeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LayerPlacementTypeFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerPlacementTypeFactory",
        "org.allbinary.game.layer.LayerPlacementTypeFactory",
        "Object",
        [],
        False,
        [#("MAP", jr.JNull), #("LEFT", jr.JNull), #("DOWN", jr.JNull), #("UP", jr.JNull), #("RIGHT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

