// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorRotationGenerator

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "vectorAnimationUtil", jr.call_static("VectorAnimationUtil", "getInstance_0", []))
    jr.set_field(this, "angleFactory", jr.call_static("AngleFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("VectorRotationGenerator", "instance", jr.new("VectorRotationGenerator", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("VectorRotationGenerator", "instance")
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector_rotation_info] = jargs
    jr.call(this, "getInstanceFrames_4", [jr.call(l_vector_rotation_info, "getWidth_0", []), jr.call(l_vector_rotation_info, "getHeight_0", []), jr.call(l_vector_rotation_info, "getPoints_0", []), jr.call(l_vector_rotation_info, "getTotalFrames_0", [])])
}

fn c1_m8__getinstanceframes(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_points, l_frames] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_frames = jr.as_i(l_frames)
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_total_angle = jr.as_s(jr.get_field(jr.get_field(this, "angleFactory"), "TOTAL_ANGLE"))
            let l_angle_increment = jr.as_i(jr.div(jr.to_i(l_total_angle), l_frames))
            let l_points_basic_array_list = jr.new("BasicArrayListS", [jr.div(jr.to_i(l_total_angle), l_angle_increment)])
            let l_point_basic_array_list = jr.new("BasicArrayListS", [jr.alen(l_points)])
            let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
            let l_size = jr.as_i(jr.alen(l_points))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.call(l_point_basic_array_list, "add_1", [jr.call(l_point_factory, "createXY_2", [jr.aget(jr.aget(l_points, jr.get(l_index)), jr.JInt(0)), jr.aget(jr.aget(l_points, jr.get(l_index)), jr.JInt(1))])])
                Nil
            })
                Nil
            }
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.to_i(l_total_angle)) }, fn() {
                jr.call(l_points_basic_array_list, "add_1", [jr.call(this, "getListAtAngle_4", [l_width, l_height, l_point_basic_array_list, jr.call(jr.get_field(this, "angleFactory"), "getAt_1", [jr.get(l_index)])])])
                jr.compound(fn() { jr.get(l_index) }, fn(jv) { jr.add(jv, l_angle_increment) }, fn(jv) { jr.set(l_index, jv) })
                Nil
            })
            let l_new_points = jr.call(jr.get_field(this, "vectorAnimationUtil"), "toAnimationArrayFromListOfPointListWithPointsPerFrame_2", [l_points_basic_array_list, jr.call(l_point_basic_array_list, "size_0", [])])
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

fn c1_m9__getlistatangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_point_basic_array_list, l_angle] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_graphics_pipe = jr.new("BasicGraphicsPipeline", [l_point_basic_array_list])
        jr.call(l_graphics_pipe, "createMatrix_0", [])
        jr.call(l_graphics_pipe, "translate_2", [jr.neg(jr.shr(l_width, jr.JInt(1))), jr.neg(jr.shr(l_height, jr.JInt(1)))])
        jr.call(l_graphics_pipe, "rotateToAngle_1", [l_angle])
        jr.call(l_graphics_pipe, "translate_2", [jr.shr(l_width, jr.JInt(1)), jr.shr(l_height, jr.JInt(1))])
    jr.call(l_graphics_pipe, "getMatrix_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorRotationGenerator",
        "org.allbinary.animation.VectorRotationGenerator",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("vectorAnimationUtil", jr.JNull), #("angleFactory", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getInstance_1", ["VectorInfo"], False, c1_m6__getinstance), 
            jr.Method("getInstanceFrames_4", ["int", "int", "intArrArr", "int"], False, c1_m8__getinstanceframes), 
            jr.Method("getListAtAngle_4", ["int", "int", "BasicArrayList", "Angle"], False, c1_m9__getlistatangle), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

