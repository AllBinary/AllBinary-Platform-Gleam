// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RectangleCollisionPointUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__allpointsinside(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rect_x1, l_rect_y1, l_rect_x2, l_rect_y2, l_list] = jargs
    let l_rect_x1 = jr.as_i(l_rect_x1)
    let l_rect_y1 = jr.as_i(l_rect_y1)
    let l_rect_x2 = jr.as_i(l_rect_x2)
    let l_rect_y2 = jr.as_i(l_rect_y2)
    jr.method(fn() {
            let l_rectangle_collision_util = jr.call_static("RectangleCollisionUtil", "getInstance_0", [])
            let l_point = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.call(l_list, "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_point, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            case jr.truth(jr.not(jr.call(l_rectangle_collision_util, "isInside_6", [l_rect_x1, l_rect_y1, l_rect_x2, l_rect_y2, jr.call(jr.get(l_point), "getX_0", []), jr.call(jr.get(l_point), "getY_0", [])]))) {
                True -> {
                jr.ret(jr.JBool(False))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m3__allpointsinsidecell(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rect_x1, l_rect_y1, l_rect_x2, l_rect_y2, l_list, l_x_cell_size, l_y_cell_size] = jargs
    let l_rect_x1 = jr.as_i(l_rect_x1)
    let l_rect_y1 = jr.as_i(l_rect_y1)
    let l_rect_x2 = jr.as_i(l_rect_x2)
    let l_rect_y2 = jr.as_i(l_rect_y2)
    let l_x_cell_size = jr.as_i(l_x_cell_size)
    let l_y_cell_size = jr.as_i(l_y_cell_size)
    jr.method(fn() {
            let l_rectangle_collision_util = jr.call_static("RectangleCollisionUtil", "getInstance_0", [])
            let l_point = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.call(l_list, "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_point, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            case jr.truth(jr.not(jr.call(l_rectangle_collision_util, "isInside_6", [l_rect_x1, l_rect_y1, l_rect_x2, l_rect_y2, jr.mul(jr.call(jr.get(l_point), "getX_0", []), l_x_cell_size), jr.mul(jr.call(jr.get(l_point), "getY_0", []), l_y_cell_size)]))) {
                True -> {
                jr.ret(jr.JBool(False))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(True))
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
        "RectangleCollisionPointUtil",
        "org.allbinary.math.RectangleCollisionPointUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("allPointsInside_5", ["int", "int", "int", "int", "BasicArrayList"], True, c1_m2__allpointsinside), 
            jr.Method("allPointsInsideCell_7", ["int", "int", "int", "int", "BasicArrayList", "int", "int"], True, c1_m3__allpointsinsidecell), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

