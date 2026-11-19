// Generated Code Do Not Modify
// package org.allbinary.layer.relationship
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MiddleRelativeLayerRelationship

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
        jr.super_init("RelativeLayerRelationship", this, [l_layer, jr.call(jr.call_static("PointFactory", "getInstance_0", []), "createXY_2", [jr.call(l_layer, "getHalfWidth_0", []), jr.call(l_layer, "getHalfHeight_0", [])]), jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MiddleRelativeLayerRelationship",
        "org.allbinary.layer.relationship.MiddleRelativeLayerRelationship",
        "RelativeLayerRelationship",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["AllBinaryLayer"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

