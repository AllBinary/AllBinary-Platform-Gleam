// Generated Code Do Not Modify
// package org.allbinary.bounds
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RectangleLayerBounds

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bounds_visitor_interface] = jargs
        case jr.truth(jr.gt(jr.call(l_bounds_visitor_interface, "getX_0", []), jr.call(jr.get_inherited(this, "RectangleLayerBounds", "rectangle"), "getMaxX_0", []))) {
            True -> {
            jr.call(l_bounds_visitor_interface, "maxX_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(jr.call(l_bounds_visitor_interface, "getY_0", []), jr.call(jr.get_inherited(this, "RectangleLayerBounds", "rectangle"), "getMaxY_0", []))) {
            True -> {
            jr.call(l_bounds_visitor_interface, "maxY_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.call(l_bounds_visitor_interface, "getX_0", []), jr.call(jr.call(jr.get_inherited(this, "RectangleLayerBounds", "rectangle"), "getPoint_0", []), "getX_0", []))) {
            True -> {
            jr.call(l_bounds_visitor_interface, "minX_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.call(l_bounds_visitor_interface, "getY_0", []), jr.call(jr.call(jr.get_inherited(this, "RectangleLayerBounds", "rectangle"), "getPoint_0", []), "getY_0", []))) {
            True -> {
            jr.call(l_bounds_visitor_interface, "minY_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle] = jargs
        jr.super_init("LayerBounds", this, [l_rectangle])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RectangleLayerBounds",
        "org.allbinary.bounds.RectangleLayerBounds",
        "LayerBounds",
        [],
        False,
        [],
        [],
        [
            jr.Method("visit_1", ["BoundsVisitorInterface"], False, c1_m2__visit), 
            jr.Method("jinit_1", ["Rectangle"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

