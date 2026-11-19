// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorAnimationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("VectorAnimationUtil", "instance", jr.new("VectorAnimationUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("VectorAnimationUtil", "instance")
}

fn c1_m4__toanimationarrayfromlistofpointlistwithpointsperframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector, l_points_per_frame] = jargs
    let l_points_per_frame = jr.as_i(l_points_per_frame)
        let l_size = jr.as_i(jr.call(l_vector, "size_0", []))
        let l_points = jr.new_array("I", 3, [l_size, l_points_per_frame, jr.JInt(2)])
        let l_next_basic_array_list = jr.cell(jr.JNull)
        let l_frame_points = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_next_basic_array_list, jr.aget(jr.get_field(l_vector, "objectArray"), jr.get(l_index)))
            jr.set(l_frame_points, jr.call(this, "toFrameArrayFromPointBasicArrayList_1", [jr.get(l_next_basic_array_list)]))
            {
                let l_point_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_point_index), jr.alen(jr.get(l_frame_points))) }, fn() { jr.incr(fn() { jr.get(l_point_index) }, fn(jv) { jr.set(l_point_index, jv) }, 1, True) Nil }, fn() {
                jr.aset(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.get(l_point_index)), jr.JInt(0), jr.aget(jr.aget(jr.get(l_frame_points), jr.get(l_point_index)), jr.JInt(0)))
                jr.aset(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.get(l_point_index)), jr.JInt(1), jr.aget(jr.aget(jr.get(l_frame_points), jr.get(l_point_index)), jr.JInt(1)))
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
    l_points
}

fn c1_m5__toanimationarrayfromlistofpointlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector] = jargs
        let l_size = jr.as_i(jr.call(l_vector, "size_0", []))
        let l_points = jr.new_array("I", 3, [l_size, jr.JInt(0), jr.JInt(0)])
        let l_next_basic_array_list = jr.cell(jr.JNull)
        let l_frame_points = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_next_basic_array_list, jr.aget(jr.get_field(l_vector, "objectArray"), jr.get(l_index)))
            jr.set(l_frame_points, jr.call(this, "toFrameArrayFromPointBasicArrayList_1", [jr.get(l_next_basic_array_list)]))
            jr.aset(l_points, jr.get(l_index), jr.new_array("I", 2, [jr.alen(jr.get(l_frame_points)), jr.JInt(2)]))
            {
                let l_point_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_point_index), jr.alen(jr.get(l_frame_points))) }, fn() { jr.incr(fn() { jr.get(l_point_index) }, fn(jv) { jr.set(l_point_index, jv) }, 1, True) Nil }, fn() {
                jr.aset(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.get(l_point_index)), jr.JInt(0), jr.aget(jr.aget(jr.get(l_frame_points), jr.get(l_point_index)), jr.JInt(0)))
                jr.aset(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.get(l_point_index)), jr.JInt(1), jr.aget(jr.aget(jr.get(l_frame_points), jr.get(l_point_index)), jr.JInt(1)))
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
    l_points
}

fn c1_m6__toframearrayfrompointbasicarraylist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l_points = jr.new_array("I", 2, [jr.call(l_list, "size_0", []), jr.JInt(2)])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_next_point = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            jr.aset(jr.aget(l_points, jr.get(l_index)), jr.JInt(0), jr.call(l_next_point, "getX_0", []))
            jr.aset(jr.aget(l_points, jr.get(l_index)), jr.JInt(1), jr.call(l_next_point, "getY_0", []))
            Nil
        })
            Nil
        }
    l_points
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorAnimationUtil",
        "org.allbinary.animation.VectorAnimationUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("toAnimationArrayFromListOfPointListWithPointsPerFrame_2", ["BasicArrayList", "int"], False, c1_m4__toanimationarrayfromlistofpointlistwithpointsperframe), 
            jr.Method("toAnimationArrayFromListOfPointList_1", ["BasicArrayList"], False, c1_m5__toanimationarrayfromlistofpointlist), 
            jr.Method("toFrameArrayFromPointBasicArrayList_1", ["BasicArrayList"], False, c1_m6__toframearrayfrompointbasicarraylist), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

