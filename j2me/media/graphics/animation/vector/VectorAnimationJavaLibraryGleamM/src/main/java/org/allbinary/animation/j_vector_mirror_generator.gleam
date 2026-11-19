// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorMirrorGenerator

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "vectorAnimationUtil", jr.call_static("VectorAnimationUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("VectorMirrorGenerator", "instance", jr.new("VectorMirrorGenerator", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("VectorMirrorGenerator", "instance")
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points, l_width] = jargs
    let l_width = jr.as_i(l_width)
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
            let l_point_basic_array_list = jr.cell(jr.JNull)
            let l_next_points = jr.cell(jr.JNull)
            let l_size2 = jr.cell(jr.as_i(jr.JInt(0)))
            let l_size = jr.as_i(jr.alen(l_points))
            let l_points_basic_array_list = jr.new("BasicArrayListS", [l_size])
            {
                let l_frame = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_frame), l_size) }, fn() { jr.incr(fn() { jr.get(l_frame) }, fn(jv) { jr.set(l_frame, jv) }, 1, True) Nil }, fn() {
                jr.set(l_next_points, jr.aget(l_points, jr.get(l_frame)))
                jr.set(l_size2, jr.as_i(jr.alen(jr.get(l_next_points))))
                jr.set(l_point_basic_array_list, jr.new("BasicArrayListS", [jr.get(l_size2)]))
                {
                    let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                    jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get(l_size2)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                    jr.call(jr.get(l_point_basic_array_list), "add_1", [jr.call(l_point_factory, "createXY_2", [jr.aget(jr.aget(jr.get(l_next_points), jr.get(l_index)), jr.JInt(0)), jr.aget(jr.aget(jr.get(l_next_points), jr.get(l_index)), jr.JInt(1))])])
                    Nil
                })
                    Nil
                }
                jr.call(l_points_basic_array_list, "add_1", [jr.get(l_point_basic_array_list)])
                Nil
            })
                Nil
            }
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_points)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.call(l_points_basic_array_list, "add_1", [jr.call(this, "getInstance_2", [jr.aget(jr.get_field(l_points_basic_array_list, "objectArray"), jr.get(l_index)), l_width])])
                Nil
            })
                Nil
            }
            let l_new_points = jr.call(jr.get_field(this, "vectorAnimationUtil"), "toAnimationArrayFromListOfPointList_1", [l_points_basic_array_list])
            jr.ret(l_new_points)
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "GET_INSTANCE"), l_e])
            jr.ret(jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY_ARRAY"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m7__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point_basic_array_list, l_width] = jargs
    let l_width = jr.as_i(l_width)
        let l_graphics_pipe = jr.new("BasicGraphicsPipeline", [l_point_basic_array_list])
        jr.call(l_graphics_pipe, "createMatrix_0", [])
        jr.call(l_graphics_pipe, "mirror_1", [l_width])
    jr.call(l_graphics_pipe, "getMatrix_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorMirrorGenerator",
        "org.allbinary.animation.VectorMirrorGenerator",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("vectorAnimationUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getInstance_2", ["intArrArrArr", "int"], False, c1_m6__getinstance), 
            jr.Method("getInstance_2", ["BasicArrayList", "int"], False, c1_m7__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

