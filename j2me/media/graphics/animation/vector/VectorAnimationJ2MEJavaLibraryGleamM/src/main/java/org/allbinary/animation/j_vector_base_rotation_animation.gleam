// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorBaseRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "currentPoints", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(this, "getSize_0", []))
}

fn c1_m4__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_inherited(this, "VectorBaseRotationAnimation", "circularIndexUtil"), "getIndex_0", []))
}

fn c1_m5__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_inherited(this, "VectorBaseRotationAnimation", "circularIndexUtil"), "setIndex_1", [l_index])
    jr.JNull
}

fn c1_m6__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "VectorBaseRotationAnimation", "circularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m7__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "VectorBaseRotationAnimation", "circularIndexUtil"), "previous_0", [])
    jr.JNull
}

fn c1_m8__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.alen(jr.get_field(this, "currentPoints")))
}

fn c1_m9__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m10__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m11__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "VectorBaseRotationAnimation", "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.get_inherited(this, "VectorBaseRotationAnimation", "basicColor")])
        jr.try_catch(fn() {
            let l_next_point_x = jr.cell(jr.as_i(jr.JInt(0)))
            let l_next_point_y = jr.cell(jr.as_i(jr.JInt(0)))
            let l_next_point = jr.cell(jr.JNull)
            let l_point = jr.cell(jr.JNull)
            let l_current_points_frame = jr.aget(jr.get_field(this, "currentPoints"), jr.call(jr.get_inherited(this, "VectorBaseRotationAnimation", "circularIndexUtil"), "getIndex_0", []))
            let l_size = jr.as_i(jr.alen(l_current_points_frame))
            let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(2))))
            jr.while_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() {
                jr.set(l_next_point, jr.aget(l_current_points_frame, jr.get(l_index)))
                jr.set(l_point, jr.aget(l_current_points_frame, jr.add(jr.get(l_index), jr.JInt(1))))
                jr.set(l_next_point_x, jr.as_i(jr.aget(jr.get(l_next_point), jr.JInt(0))))
                jr.set(l_next_point_y, jr.as_i(jr.aget(jr.get(l_next_point), jr.JInt(1))))
                case jr.truth(jr.ne(jr.get(l_next_point_x), jr.JInt(1000))) {
                    True -> {
                    jr.call(l_graphics, "drawLine_4", [jr.add(jr.aget(jr.get(l_point), jr.JInt(0)), l_x), jr.add(jr.aget(jr.get(l_point), jr.JInt(1)), l_y), jr.add(jr.get(l_next_point_x), l_x), jr.add(jr.get(l_next_point_y), l_y)])
                    Nil
                }
                    False -> {
                    jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True)
                    Nil
                }
                }
                Nil
            })
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "VectorBaseRotationAnimation", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "VectorBaseRotationAnimation", "commonStrings"), "EXCEPTION"), this, jr.JStr("paintVectors"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m12__getpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame] = jargs
    let l_frame = jr.as_i(l_frame)
    jr.aget(jr.get_field(this, "currentPoints"), l_frame)
}

fn c1_m13__setpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points] = jargs
        jr.set_field(this, "currentPoints", l_current_points)
        jr.set_inherited(this, "VectorBaseRotationAnimation", "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.alen(jr.get_field(this, "currentPoints"))]))
    jr.JNull
}

fn c1_m14__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("RotationAnimation", this, "getBasicColorP_0", [])
}

fn c1_m15__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.call_super("RotationAnimation", this, "setBasicColorP_1", [l_basic_color])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle_info, l_current_points, l_basic_color, l_animation_behavior] = jargs
        jr.super_init("RotationAnimation", this, [l_angle_info, jr.call_static("CircularIndexUtil", "createInstance_1", [jr.div(jr.JInt(360), jr.to_i(jr.call(jr.call(l_angle_info, "getAngleIncrementInfo_0", []), "getAngleIncrement_0", [])))]), l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "setPoints_1", [l_current_points])
        jr.call(this, "setBasicColorP_1", [l_basic_color])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorBaseRotationAnimation",
        "org.allbinary.animation.VectorBaseRotationAnimation",
        "RotationAnimation",
        ["VectorAnimationInterface"],
        False,
        [#("currentPoints", jr.JNull)],
        [],
        [
            jr.Method("getAnimationSize_0", [], False, c1_m3__getanimationsize), 
            jr.Method("getFrame_0", [], False, c1_m4__getframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m5__setframe), 
            jr.Method("nextFrame_0", [], False, c1_m6__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m7__previousframe), 
            jr.Method("getSize_0", [], False, c1_m8__getsize), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m9__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m10__getsequence), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m11__paintxy), 
            jr.Method("getPoints_1", ["int"], False, c1_m12__getpoints), 
            jr.Method("setPoints_1", ["intArrArrArr"], False, c1_m13__setpoints), 
            jr.Method("getBasicColorP_0", [], False, c1_m14__getbasiccolorp), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m15__setbasiccolorp), 
            jr.Method("jinit_4", ["AngleInfo", "intArrArrArr", "BasicColor", "AnimationBehavior"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

