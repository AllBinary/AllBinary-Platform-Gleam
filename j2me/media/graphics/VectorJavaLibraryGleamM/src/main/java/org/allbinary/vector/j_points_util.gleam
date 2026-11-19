// Generated Code Do Not Modify
// package org.allbinary.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PointsUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PointsUtil", "instance", jr.new("PointsUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PointsUtil", "instance")
}

fn c1_m3__adjustxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_size = jr.as_i(jr.alen(l_points))
        let l_new_points = jr.new_array("I", 3, [l_size, jr.JInt(0), jr.JInt(0)])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_size2 = jr.as_i(jr.alen(jr.aget(l_points, jr.get(l_index))))
            jr.aset(l_new_points, jr.get(l_index), jr.new_array("I", 2, [l_size2, jr.JInt(2)]))
            {
                let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index2), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
                case jr.truth(jr.ne(jr.aget(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.get(l_index2)), jr.JInt(0)), jr.JInt(1000))) {
                    True -> {
                    jr.aset(jr.aget(jr.aget(l_new_points, jr.get(l_index)), jr.get(l_index2)), jr.JInt(0), jr.add(jr.aget(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.get(l_index2)), jr.JInt(0)), l_x))
                    jr.aset(jr.aget(jr.aget(l_new_points, jr.get(l_index)), jr.get(l_index2)), jr.JInt(1), jr.add(jr.aget(jr.aget(jr.aget(l_points, jr.get(l_index)), jr.get(l_index2)), jr.JInt(1)), l_y))
                    Nil
                }
                    False -> {
                    jr.aset(jr.aget(jr.aget(l_new_points, jr.get(l_index)), jr.get(l_index2)), jr.JInt(0), jr.JInt(1000))
                    jr.aset(jr.aget(jr.aget(l_new_points, jr.get(l_index)), jr.get(l_index2)), jr.JInt(1), jr.JInt(1000))
                    Nil
                }
                }
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
    l_new_points
}

fn c1_m4__adjust(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points, l_both] = jargs
    let l_both = jr.as_i(l_both)
    jr.call(this, "adjust_3", [l_points, l_both, l_both])
}

fn c1_m5__adjust(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_points, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_new_points = jr.new_array("I", 2, [jr.alen(l_points), jr.JInt(2)])
        {
            let l_index2 = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index2), jr.alen(l_points)) }, fn() { jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.ne(jr.aget(jr.aget(l_points, jr.get(l_index2)), jr.JInt(0)), jr.JInt(1000))) {
                True -> {
                jr.aset(jr.aget(l_new_points, jr.get(l_index2)), jr.JInt(0), jr.add(jr.aget(jr.aget(l_points, jr.get(l_index2)), jr.JInt(0)), l_x))
                jr.aset(jr.aget(l_new_points, jr.get(l_index2)), jr.JInt(1), jr.add(jr.aget(jr.aget(l_points, jr.get(l_index2)), jr.JInt(1)), l_y))
                Nil
            }
                False -> {
                jr.aset(jr.aget(l_new_points, jr.get(l_index2)), jr.JInt(0), jr.JInt(1000))
                jr.aset(jr.aget(l_new_points, jr.get(l_index2)), jr.JInt(1), jr.JInt(1000))
                Nil
            }
            }
            Nil
        })
            Nil
        }
    l_new_points
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PointsUtil",
        "org.allbinary.vector.PointsUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("adjustXY_3", ["intArrArrArr", "int", "int"], False, c1_m3__adjustxy), 
            jr.Method("adjust_2", ["intArrArr", "int"], False, c1_m4__adjust), 
            jr.Method("adjust_3", ["intArrArr", "int", "int"], False, c1_m5__adjust), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

