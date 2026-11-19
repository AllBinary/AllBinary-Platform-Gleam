// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup.points
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PointsResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "RESOURCE", jr.JStr("points_drop_20_by_20.png"))
    jr.set_field(this, "RESOURCE_2", jr.JStr("points_2_drop_20_by_20.png"))
    jr.set_field(this, "RESOURCE_3", jr.JStr("points_3_drop_20_by_20.png"))
    jr.set_field(this, "RESOURCE_4", jr.JStr("points_4_drop_20_by_20.png"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PointsResources", "SINGLETON", jr.new("PointsResources", []))
    jr.JNull
}

fn c1_m7__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PointsResources", "SINGLETON")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PointsResources",
        "org.allbinary.game.ag.layer.pickup.points.PointsResources",
        "Object",
        [],
        False,
        [#("RESOURCE", jr.JNull), #("RESOURCE_2", jr.JNull), #("RESOURCE_3", jr.JNull), #("RESOURCE_4", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m7__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

