// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameLayerUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__isonscreen(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_view_position = jr.call(l_layer, "getViewPosition_0", [])
    jr.call_static("GameLayerUtil", "isInside_8", [jr.call(l_view_position, "getX_0", []), jr.call(l_view_position, "getY_0", []), jr.call(l_view_position, "getX2_0", []), jr.call(l_view_position, "getY2_0", []), jr.JInt(0), jr.JInt(0), jr.call(l_display_info, "getLastWidth_0", []), jr.call(l_display_info, "getLastHeight_0", [])])
}

fn c1_m3__isinside(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rect_x1, l_rect_y1, l_rect_x2, l_rect_y2, l_rect2_x1, l_rect2_y1, l_rect2_x2, l_rect2_y2] = jargs
    let l_rect_x1 = jr.as_i(l_rect_x1)
    let l_rect_y1 = jr.as_i(l_rect_y1)
    let l_rect_x2 = jr.as_i(l_rect_x2)
    let l_rect_y2 = jr.as_i(l_rect_y2)
    let l_rect2_x1 = jr.as_i(l_rect2_x1)
    let l_rect2_y1 = jr.as_i(l_rect2_y1)
    let l_rect2_x2 = jr.as_i(l_rect2_x2)
    let l_rect2_y2 = jr.as_i(l_rect2_y2)
    jr.method(fn() {
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.gt(l_rect_x1, l_rect2_x1)) { True -> jr.lt(l_rect_x2, l_rect2_x2) False -> jr.JBool(False) }) { True -> jr.gt(l_rect_y1, l_rect2_y1) False -> jr.JBool(False) }) { True -> jr.lt(l_rect_y2, l_rect2_y2) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameLayerUtil",
        "org.allbinary.game.layer.GameLayerUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("isOnScreen_1", ["AllBinaryLayer"], True, c1_m2__isonscreen), 
            jr.Method("isInside_8", ["int", "int", "int", "int", "int", "int", "int", "int"], True, c1_m3__isinside), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

