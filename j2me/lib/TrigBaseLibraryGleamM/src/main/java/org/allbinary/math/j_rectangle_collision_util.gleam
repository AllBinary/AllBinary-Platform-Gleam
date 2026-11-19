// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RectangleCollisionUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RectangleCollisionUtil", "instance", jr.new("RectangleCollisionUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("RectangleCollisionUtil", "instance")
}

fn c1_m4__iscollision(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.ge(l_rect2_x1, l_rect_x2)) { True -> jr.JBool(True) False -> jr.ge(l_rect2_y1, l_rect_y2) }) { True -> jr.JBool(True) False -> jr.le(l_rect2_x2, l_rect_x1) }) { True -> jr.JBool(True) False -> jr.le(l_rect2_y2, l_rect_y1) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m5__isinside(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rect_x1, l_rect_y1, l_rect_x2, l_rect_y2, l_x, l_y] = jargs
    let l_rect_x1 = jr.as_i(l_rect_x1)
    let l_rect_y1 = jr.as_i(l_rect_y1)
    let l_rect_x2 = jr.as_i(l_rect_x2)
    let l_rect_y2 = jr.as_i(l_rect_y2)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.method(fn() {
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.ge(l_x, l_rect_x2)) { True -> jr.JBool(True) False -> jr.ge(l_y, l_rect_y2) }) { True -> jr.JBool(True) False -> jr.le(l_x, l_rect_x1) }) { True -> jr.JBool(True) False -> jr.le(l_y, l_rect_y1) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RectangleCollisionUtil",
        "org.allbinary.math.RectangleCollisionUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isCollision_8", ["int", "int", "int", "int", "int", "int", "int", "int"], False, c1_m4__iscollision), 
            jr.Method("isInside_6", ["int", "int", "int", "int", "int", "int"], False, c1_m5__isinside), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

