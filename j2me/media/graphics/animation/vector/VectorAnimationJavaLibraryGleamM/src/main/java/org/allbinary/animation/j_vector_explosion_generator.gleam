// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorExplosionGenerator

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "RANDOM", jr.new("VectorExplosionType", []))
    jr.set_field(this, "ROTATION", jr.new("VectorExplosionType", []))
    jr.set_field(this, "vectorAnimationUtil", jr.call_static("VectorAnimationUtil", "getInstance_0", []))
    jr.set_field(this, "randomRotationFactory", jr.call_static("RandomRotationFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("VectorExplosionGenerator", "instance", jr.new("VectorExplosionGenerator", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("VectorExplosionGenerator", "instance")
}

fn c1_m7__createlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list, l_how_much, l_type] = jargs
    let l_how_much = jr.as_i(l_how_much)
        let l_point = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_points = jr.new_array("I", 2, [l_size, jr.JInt(2)])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_point, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.aset(jr.aget(l_points, jr.get(l_index)), jr.JInt(0), jr.call(jr.get(l_point), "getX_0", []))
            jr.aset(jr.aget(l_points, jr.get(l_index)), jr.JInt(1), jr.call(jr.get(l_point), "getY_0", []))
            Nil
        })
            Nil
        }
    jr.call(this, "createListFromPoints_4", [l_list, l_points, l_how_much, l_type])
}

fn c1_m8__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points, l_how_much, l_type] = jargs
    let l_how_much = jr.as_i(l_how_much)
        let l_points_basic_array_list = jr.call(this, "getInstanceStartFrame_4", [l_points, l_how_much, l_type, jr.JBool(True)])
        let l_temp_basic_array_list = jr.aget(jr.get_field(l_points_basic_array_list, "objectArray"), jr.JInt(0))
        let l_new_points = jr.call(jr.get_field(this, "vectorAnimationUtil"), "toAnimationArrayFromListOfPointListWithPointsPerFrame_2", [l_points_basic_array_list, jr.call(l_temp_basic_array_list, "size_0", [])])
    l_new_points
}

fn c1_m9__getinstancestartframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points, l_how_much, l_type, l_start_frame] = jargs
    let l_how_much = jr.as_i(l_how_much)
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_points_basic_array_list = jr.new("BasicArrayListS", [l_how_much])
            jr.call(l_points_basic_array_list, "add_1", [jr.call(this, "createPointsBasicArrayList_1", [l_points])])
            let l_frame_index = jr.cell(jr.as_i(jr.JInt(0)))
            let l_temp_basic_array_list = jr.cell(jr.JNull)
            let l_point_basic_array_list = jr.cell(jr.JNull)
            jr.while_loop("", fn() { jr.lt(jr.get(l_frame_index), l_how_much) }, fn() {
                jr.set(l_temp_basic_array_list, jr.aget(jr.get_field(l_points_basic_array_list, "objectArray"), jr.get(l_frame_index)))
                jr.set(l_point_basic_array_list, jr.call(this, "createListFromPoints_4", [jr.get(l_temp_basic_array_list), l_points, l_how_much, l_type]))
                jr.call(l_points_basic_array_list, "add_1", [jr.get(l_point_basic_array_list)])
                jr.incr(fn() { jr.get(l_frame_index) }, fn(jv) { jr.set(l_frame_index, jv) }, 1, True)
                Nil
            })
            case jr.truth(jr.not(l_start_frame)) {
                True -> {
                jr.call(l_points_basic_array_list, "removeAt_1", [jr.JInt(0)])
                Nil
            }
                False -> Nil
            }
            jr.ret(l_points_basic_array_list)
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m11__createlistfrompoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_temp_basic_array_list, l_points, l_how_much, l_type] = jargs
    let l_how_much = jr.as_i(l_how_much)
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_point_basic_array_list = jr.new("BasicArrayListD", [])
        let l_section_basic_array_list = jr.cell(jr.JNull)
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_points)) }, fn() {
            jr.set(l_section_basic_array_list, jr.new("BasicArrayListD", []))
            jr.while_loop("", fn() { jr.ne(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.JInt(0)), jr.JInt(1000)) }, fn() {
                jr.call(jr.get(l_section_basic_array_list), "add_1", [jr.aget(jr.get_field(l_temp_basic_array_list, "objectArray"), jr.get(l_index))])
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
                case jr.truth(jr.ge(jr.get(l_index), jr.alen(l_points))) {
                    True -> {
                    jr.brk("")
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
            jr.set(l_section_basic_array_list, jr.call_static("RandomTranslation", "getInstance_2", [jr.get(l_section_basic_array_list), l_how_much]))
            case jr.truth(jr.eq(l_type, jr.get_field(this, "ROTATION"))) {
                True -> {
                jr.set(l_section_basic_array_list, jr.call(jr.get_field(this, "randomRotationFactory"), "getInstanceList_2", [jr.get(l_section_basic_array_list), l_how_much]))
                Nil
            }
                False -> Nil
            }
            let l_size = jr.as_i(jr.call(jr.get(l_section_basic_array_list), "size_0", []))
            {
                let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index2), l_size) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                jr.call(l_point_basic_array_list, "add_1", [jr.aget(jr.get_field(jr.get(l_section_basic_array_list), "objectArray"), jr.get(l_index2))])
                Nil
            })
                Nil
            }
            case jr.truth(jr.ge(jr.get(l_index), jr.alen(l_points))) {
                True -> {
                jr.brk("")
                Nil
            }
                False -> case jr.truth(jr.eq(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.JInt(0)), jr.JInt(1000))) {
                True -> {
                jr.call(l_point_basic_array_list, "add_1", [jr.aget(jr.get_field(l_temp_basic_array_list, "objectArray"), jr.get(l_index))])
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
                Nil
            }
                False -> Nil
            }
            }
            Nil
        })
    l_point_basic_array_list
}

fn c1_m12__createpointsbasicarraylist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points] = jargs
        case jr.truth(jr.eq(jr.alen(l_points), jr.JInt(0))) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Not Points Provided")]))
            Nil
        }
            False -> Nil
        }
        let l_first_point_basic_array_list = jr.new("BasicArrayListS", [jr.alen(l_points)])
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_points)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_first_point_basic_array_list, "add_1", [jr.call(l_point_factory, "createXY_2", [jr.aget(jr.aget(l_points, jr.get(l_index)), jr.JInt(0)), jr.aget(jr.aget(l_points, jr.get(l_index)), jr.JInt(1))])])
            Nil
        })
            Nil
        }
    l_first_point_basic_array_list
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorExplosionGenerator",
        "org.allbinary.animation.VectorExplosionGenerator",
        "Object",
        [],
        False,
        [#("RANDOM", jr.JNull), #("ROTATION", jr.JNull), #("vectorAnimationUtil", jr.JNull), #("randomRotationFactory", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createList_3", ["BasicArrayList", "int", "VectorExplosionType"], False, c1_m7__createlist), 
            jr.Method("getInstance_3", ["intArrArr", "int", "VectorExplosionType"], False, c1_m8__getinstance), 
            jr.Method("getInstanceStartFrame_4", ["intArrArr", "int", "VectorExplosionType", "boolean"], False, c1_m9__getinstancestartframe), 
            jr.Method("createListFromPoints_4", ["BasicArrayList", "intArrArr", "int", "VectorExplosionType"], False, c1_m11__createlistfrompoints), 
            jr.Method("createPointsBasicArrayList_1", ["intArrArr"], False, c1_m12__createpointsbasicarraylist), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

