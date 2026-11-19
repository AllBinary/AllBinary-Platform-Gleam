// Generated Code Do Not Modify
// package org.allbinary.layer.relationship
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RelativeLayerRelationship

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "layer", jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(jr.get_field(this, "layer"), "getXP_0", []), jr.call_super("RelativeRelationship", this, "getX_0", [])))
}

fn c1_m4__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(jr.get_field(this, "layer"), "getYP_0", []), jr.call_super("RelativeRelationship", this, "getY_0", [])))
}

fn c1_m5__getz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(jr.get_field(this, "layer"), "getZP_0", []), jr.call_super("RelativeRelationship", this, "getZ_0", [])))
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer, l_point, l_types_allowed_list] = jargs
        jr.super_init("RelativeRelationship", this, [l_point, l_types_allowed_list])
        c1_jfields(this)
        jr.set_field(this, "layer", l_layer)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RelativeLayerRelationship",
        "org.allbinary.layer.relationship.RelativeLayerRelationship",
        "RelativeRelationship",
        [],
        False,
        [#("layer", jr.JNull)],
        [],
        [
            jr.Method("getX_0", [], False, c1_m3__getx), 
            jr.Method("getY_0", [], False, c1_m4__gety), 
            jr.Method("getZ_0", [], False, c1_m5__getz), 
            jr.Method("jinit_3", ["AllBinaryLayer", "GPoint", "BasicArrayList"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

