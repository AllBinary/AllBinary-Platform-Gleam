// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "currentPoints", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY_ARRAY"))
    jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createvectoranimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points2, l_basic_color, l_animation_behavior] = jargs
        let l_current_points = jr.new_array("I", 3, [jr.JInt(1), jr.alen(l_current_points2), jr.JInt(2)])
        let l_size = jr.as_i(jr.alen(l_current_points2))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.aget(jr.aget(l_current_points, jr.JInt(0)), jr.get(l_index)), jr.JInt(0), jr.aget(jr.aget(l_current_points2, jr.get(l_index)), jr.JInt(0)))
            jr.aset(jr.aget(jr.aget(l_current_points, jr.JInt(0)), jr.get(l_index)), jr.JInt(1), jr.aget(jr.aget(l_current_points2, jr.get(l_index)), jr.JInt(1)))
            Nil
        })
            Nil
        }
    jr.new("VectorAnimation", [l_current_points, l_basic_color, l_animation_behavior])
}

fn c1_m5__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        let l_changed = jr.cell(jr.JBool(False))
        case jr.truth(case jr.truth(jr.eq(jr.call(this, "getBasicColorP_0", []), jr.JNull)) { True -> jr.JBool(True) False -> jr.ne(jr.call(jr.call(this, "getBasicColorP_0", []), "intValue_0", []), jr.call(l_basic_color, "intValue_0", [])) }) {
            True -> {
            jr.set(l_changed, jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        jr.call_super("IndexedAnimation", this, "setBasicColorP_1", [l_basic_color])
        case jr.truth(jr.get(l_changed)) {
            True -> {
            jr.call(this, "updateModifiers_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__changebasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        let l_changed = jr.cell(jr.JBool(False))
        case jr.truth(case jr.truth(jr.eq(jr.call_inherited(this, "VectorAnimation", "getChangeBasicColor_0", []), jr.JNull)) { True -> jr.JBool(True) False -> jr.ne(jr.call(jr.call_inherited(this, "VectorAnimation", "getChangeBasicColor_0", []), "intValue_0", []), jr.call(l_basic_color, "intValue_0", [])) }) {
            True -> {
            jr.set(l_changed, jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        jr.call_super("IndexedAnimation", this, "changeBasicColor_1", [l_basic_color])
        case jr.truth(jr.get(l_changed)) {
            True -> {
            jr.call(this, "updateModifiers_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m7__setalpha(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha] = jargs
    let l_alpha = jr.as_i(l_alpha)
        let l_changed = jr.cell(jr.JBool(False))
        case jr.truth(jr.ne(jr.get_inherited(this, "VectorAnimation", "alphaP"), l_alpha)) {
            True -> {
            jr.set(l_changed, jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        jr.call_super("IndexedAnimation", this, "setAlpha_1", [l_alpha])
        case jr.truth(jr.get(l_changed)) {
            True -> {
            jr.call(this, "updateModifiers_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m8__setscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_x, l_scale_y] = jargs
    let l_scale_x = jr.as_f(l_scale_x)
    let l_scale_y = jr.as_f(l_scale_y)
    jr.JNull
}

fn c1_m9__setmaxscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_scale_x, l_max_scale_y] = jargs
    let l_max_scale_x = jr.as_f(l_max_scale_x)
    let l_max_scale_y = jr.as_f(l_max_scale_y)
    jr.JNull
}

fn c1_m10__updatemodifiers(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(this, "getSize_0", []))
}

fn c1_m12__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.alen(jr.get_field(this, "currentPoints")))
}

fn c1_m13__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m14__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m15__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    jr.JNull
}

fn c1_m16__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "circularIndexUtil"), "previous_0", [])
    jr.JNull
}

fn c1_m17__paintvectors(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.try_catch(fn() {
            let l_next_point_x = jr.cell(jr.as_i(jr.JInt(0)))
            let l_next_point_y = jr.cell(jr.as_i(jr.JInt(0)))
            let l_next_point = jr.cell(jr.JNull)
            let l_point = jr.cell(jr.JNull)
            let l_current_points_frame = jr.aget(jr.get_field(this, "currentPoints"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
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
            jr.call(jr.get_inherited(this, "VectorAnimation", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "VectorAnimation", "commonStrings"), "EXCEPTION"), this, jr.JStr("paintVectors"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m18__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "VectorAnimation", "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.get_inherited(this, "VectorAnimation", "basicColor")])
        jr.call(this, "paintVectors_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_m19__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
}

fn c1_m20__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_field(this, "circularIndexUtil"), "setIndex_1", [l_index])
    jr.JNull
}

fn c1_m21__getpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame] = jargs
    let l_frame = jr.as_i(l_frame)
    jr.aget(jr.get_field(this, "currentPoints"), l_frame)
}

fn c1_m22__setpoints(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points] = jargs
        jr.set_field(this, "currentPoints", l_current_points)
        jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.alen(l_current_points)]))
    jr.JNull
}

fn c1_m23__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("IndexedAnimation", this, "getBasicColorP_0", [])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points, l_basic_color, l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "setPoints_1", [l_current_points])
        jr.call(this, "setBasicColorP_1", [l_basic_color])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorAnimation",
        "org.allbinary.animation.VectorAnimation",
        "IndexedAnimation",
        ["VectorAnimationInterface"],
        False,
        [#("currentPoints", jr.JNull), #("circularIndexUtil", jr.JNull)],
        [],
        [
            jr.Method("createVectorAnimation_3", ["intArrArr", "BasicColor", "AnimationBehavior"], True, c1_m1__createvectoranimation), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m5__setbasiccolorp), 
            jr.Method("changeBasicColor_1", ["BasicColor"], False, c1_m6__changebasiccolor), 
            jr.Method("setAlpha_1", ["int"], False, c1_m7__setalpha), 
            jr.Method("setScale_2", ["float", "float"], False, c1_m8__setscale), 
            jr.Method("setMaxScale_2", ["float", "float"], False, c1_m9__setmaxscale), 
            jr.Method("updateModifiers_0", [], False, c1_m10__updatemodifiers), 
            jr.Method("getAnimationSize_0", [], False, c1_m11__getanimationsize), 
            jr.Method("getSize_0", [], False, c1_m12__getsize), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m13__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m14__getsequence), 
            jr.Method("nextFrame_0", [], False, c1_m15__nextframe), 
            jr.Method("previousFrame_0", [], False, c1_m16__previousframe), 
            jr.Method("paintVectors_3", ["Graphics", "int", "int"], False, c1_m17__paintvectors), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m18__paintxy), 
            jr.Method("getFrame_0", [], False, c1_m19__getframe), 
            jr.Method("setFrame_1", ["int"], False, c1_m20__setframe), 
            jr.Method("getPoints_1", ["int"], False, c1_m21__getpoints), 
            jr.Method("setPoints_1", ["intArrArrArr"], False, c1_m22__setpoints), 
            jr.Method("getBasicColorP_0", [], False, c1_m23__getbasiccolorp), 
            jr.Method("jinit_3", ["intArrArrArr", "BasicColor", "AnimationBehavior"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

