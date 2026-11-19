// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicLayerPlacement

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "width"))
}

fn c1_m6__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "height"))
}

fn c1_m7__getlayertype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "layerType")
}

fn c1_m8__setlayertype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_type] = jargs
        jr.set_field(this, "layerType", l_layer_type)
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_type, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "layerType", l_layer_type)
        jr.set_field(this, "width", jr.as_i(l_width))
        jr.set_field(this, "height", jr.as_i(l_height))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicLayerPlacement",
        "org.allbinary.game.layer.BasicLayerPlacement",
        "Object",
        [],
        False,
        [#("layerType", jr.JNull), #("width", jr.JInt(0)), #("height", jr.JInt(0))],
        [],
        [
            jr.Method("getWidth_0", [], False, c1_m5__getwidth), 
            jr.Method("getHeight_0", [], False, c1_m6__getheight), 
            jr.Method("getLayerType_0", [], False, c1_m7__getlayertype), 
            jr.Method("setLayerType_1", ["LayerPlacementType"], False, c1_m8__setlayertype), 
            jr.Method("jinit_3", ["LayerPlacementType", "int", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

