// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BoundBounceAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "currentRelativeAngle", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_rectange = jr.call(jr.get_field(this, "layerBounds"), "getRectangleP_0", [])
        jr.call(l_graphics, "drawRect_4", [jr.call(jr.call(l_rectange, "getPoint_0", []), "getX_0", []), jr.call(jr.call(l_rectange, "getPoint_0", []), "getY_0", []), jr.call(l_rectange, "getWidth_0", []), jr.call(l_rectange, "getHeight_0", [])])
    jr.JNull
}

fn c1_m6__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.call(jr.get_field(this, "layerBounds"), "visit_1", [jr.get_field(this, "boundsVisitorInterface")])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_game_input, l_layer_bounds, l_bounds_visitor_interface] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "layerBounds", l_layer_bounds)
        jr.set_field(this, "boundsVisitorInterface", l_bounds_visitor_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BoundBounceAI",
        "org.allbinary.game.ag.ai.BoundBounceAI",
        "BasicAI",
        [],
        False,
        [#("currentRelativeAngle", jr.JInt(0)), #("layerBounds", jr.JNull), #("boundsVisitorInterface", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m5__paint), 
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m6__processai), 
            jr.Method("jinit_4", ["AllBinaryLayer", "GameInput", "LayerBounds", "BoundsVisitorInterface"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

