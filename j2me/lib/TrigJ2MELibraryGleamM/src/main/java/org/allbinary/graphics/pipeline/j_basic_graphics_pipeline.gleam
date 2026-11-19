// Generated Code Do Not Modify
// package org.allbinary.graphics.pipeline
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicGraphicsPipeline

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "noDecimalTrigTable", jr.call_static("NoDecimalTrigTable", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__setinitmatrix(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
        jr.set_field(this, "pointBasicArrayList", l_points)
    jr.JNull
}

fn c1_m4__creatematrix(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__translate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_new_basic_array_list = jr.new("BasicArrayListD", [])
        let l_size = jr.as_i(jr.call(jr.get_field(this, "pointBasicArrayList"), "size_0", []))
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        let l_second_point = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_second_point, jr.aget(jr.get_field(jr.get_field(this, "pointBasicArrayList"), "objectArray"), jr.get(l_index)))
            case jr.truth(jr.ne(jr.call(jr.get(l_second_point), "getX_0", []), jr.JInt(1000))) {
                True -> {
                jr.call(l_new_basic_array_list, "add_1", [jr.call(l_point_factory, "createXY_2", [jr.add(jr.call(jr.get(l_second_point), "getX_0", []), l_x), jr.add(jr.call(jr.get(l_second_point), "getY_0", []), l_y)])])
                Nil
            }
                False -> {
                jr.call(l_new_basic_array_list, "add_1", [jr.get(l_second_point)])
                Nil
            }
            }
            Nil
        })
            Nil
        }
        jr.set_field(this, "pointBasicArrayList", l_new_basic_array_list)
    jr.JNull
}

fn c1_m6__rotatetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
        jr.call(this, "rotate_1", [jr.to_i(jr.call(l_angle, "getValue_0", []))])
    jr.JNull
}

fn c1_m8__rotate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    let l_angle = jr.as_i(l_angle)
        let l_new_basic_array_list = jr.new("BasicArrayListD", [])
        let l_second_point = jr.cell(jr.JNull)
        let l_y = jr.cell(jr.as_j(jr.JLong(0)))
        let l_second_x = jr.cell(jr.as_j(jr.JLong(0)))
        let l_second_y = jr.cell(jr.as_j(jr.JLong(0)))
        let l_point = jr.cell(jr.JNull)
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        let l_size = jr.as_i(jr.call(jr.get_field(this, "pointBasicArrayList"), "size_0", []))
        let l_sin = jr.cell(jr.as_j(jr.JLong(0)))
        let l_cos = jr.cell(jr.as_j(jr.JLong(0)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_second_point, jr.aget(jr.get_field(jr.get_field(this, "pointBasicArrayList"), "objectArray"), jr.get(l_index)))
            case jr.truth(jr.ne(jr.call(jr.get(l_second_point), "getX_0", []), jr.JInt(1000))) {
                True -> {
                jr.set(l_sin, jr.as_j(jr.call(jr.get_field(this, "noDecimalTrigTable"), "sin_1", [l_angle])))
                jr.set(l_cos, jr.as_j(jr.call(jr.get_field(this, "noDecimalTrigTable"), "cos_1", [l_angle])))
                jr.set(l_y, jr.as_j(jr.mul(jr.to_j(jr.call(jr.get(l_second_point), "getY_0", [])), jr.get(l_sin))))
                jr.set(l_second_x, jr.as_j(jr.sub(jr.mul(jr.to_j(jr.call(jr.get(l_second_point), "getX_0", [])), jr.get(l_cos)), jr.get(l_y))))
                jr.set(l_second_y, jr.as_j(jr.add(jr.mul(jr.to_j(jr.call(jr.get(l_second_point), "getX_0", [])), jr.get(l_sin)), jr.mul(jr.to_j(jr.call(jr.get(l_second_point), "getY_0", [])), jr.get(l_cos)))))
                jr.set(l_point, jr.call(l_point_factory, "createXY_2", [jr.div(jr.to_i(jr.get(l_second_x)), jr.JInt(10000)), jr.div(jr.to_i(jr.get(l_second_y)), jr.JInt(10000))]))
                jr.call(l_new_basic_array_list, "add_1", [jr.get(l_point)])
                Nil
            }
                False -> {
                jr.call(l_new_basic_array_list, "add_1", [jr.get(l_second_point)])
                Nil
            }
            }
            Nil
        })
            Nil
        }
        jr.set_field(this, "pointBasicArrayList", l_new_basic_array_list)
    jr.JNull
}

fn c1_m9__mirror(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width] = jargs
    let l_width = jr.as_i(l_width)
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        let l_half_width = jr.as_i(jr.shr(l_width, jr.JInt(1)))
        let l_new_basic_array_list = jr.new("BasicArrayListD", [])
        let l_second_point = jr.cell(jr.JNull)
        let l_new_x = jr.cell(jr.as_i(jr.JInt(0)))
        let l_point = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(jr.get_field(this, "pointBasicArrayList"), "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_second_point, jr.aget(jr.get_field(jr.get_field(this, "pointBasicArrayList"), "objectArray"), jr.get(l_index)))
            case jr.truth(jr.ne(jr.call(jr.get(l_second_point), "getX_0", []), jr.JInt(1000))) {
                True -> {
                jr.set(l_new_x, jr.as_i(jr.JInt(0)))
                case jr.truth(jr.gt(jr.call(jr.get(l_second_point), "getX_0", []), l_half_width)) {
                    True -> {
                    jr.set(l_new_x, jr.as_i(jr.sub(l_half_width, jr.sub(jr.call(jr.get(l_second_point), "getX_0", []), l_half_width))))
                    Nil
                }
                    False -> {
                    jr.set(l_new_x, jr.as_i(jr.add(l_half_width, jr.sub(l_half_width, jr.call(jr.get(l_second_point), "getX_0", [])))))
                    Nil
                }
                }
                jr.set(l_point, jr.call(l_point_factory, "createXY_2", [jr.get(l_new_x), jr.call(jr.get(l_second_point), "getY_0", [])]))
                jr.call(l_new_basic_array_list, "add_1", [jr.get(l_point)])
                Nil
            }
                False -> {
                jr.call(l_new_basic_array_list, "add_1", [jr.get(l_second_point)])
                Nil
            }
            }
            Nil
        })
            Nil
        }
        jr.set_field(this, "pointBasicArrayList", l_new_basic_array_list)
    jr.JNull
}

fn c1_m10__getmatrix(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "pointBasicArrayList")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "pointBasicArrayList", l_points)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicGraphicsPipeline",
        "org.allbinary.graphics.pipeline.BasicGraphicsPipeline",
        "Object",
        [],
        False,
        [#("pointBasicArrayList", jr.JNull), #("noDecimalTrigTable", jr.JNull)],
        [],
        [
            jr.Method("setInitMatrix_1", ["BasicArrayList"], False, c1_m3__setinitmatrix), 
            jr.Method("createMatrix_0", [], False, c1_m4__creatematrix), 
            jr.Method("translate_2", ["int", "int"], False, c1_m5__translate), 
            jr.Method("rotateToAngle_1", ["Angle"], False, c1_m6__rotatetoangle), 
            jr.Method("rotate_1", ["int"], False, c1_m8__rotate), 
            jr.Method("mirror_1", ["int"], False, c1_m9__mirror), 
            jr.Method("getMatrix_0", [], False, c1_m10__getmatrix), 
            jr.Method("jinit_1", ["BasicArrayList"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

