// Generated Code Do Not Modify
// package org.allbinary.animation.compound
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompoundRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "setFrame_1", [l_index])
    jr.JNull
}

fn c1_m4__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "getFrame_0", []))
}

fn c1_m5__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "getAnimationSize_0", []))
}

fn c1_m6__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "getSize_0", []))
}

fn c1_m7__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "previousFrame_0", [])
    jr.JNull
}

fn c1_m8__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "nextFrame_0", [])
    jr.JNull
}

fn c1_m9__previousrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "previousRotation_0", [])
    jr.JNull
}

fn c1_m10__nextrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "nextRotation_0", [])
    jr.JNull
}

fn c1_m11__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m12__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m13__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "paintXY_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_m14__paintthreedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "paintThreedXYZ_4", [l_graphics, l_x, l_y, l_z])
    jr.JNull
}

fn c1_m15__getcurrentanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", []))
}

fn c1_m16__nextanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_frame = jr.as_i(jr.call(this, "getFrame_0", []))
        jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "next_0", [])
        jr.call(this, "setFrame_1", [l_frame])
    jr.JNull
}

fn c1_m17__previousanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_frame = jr.as_i(jr.call(this, "getFrame_0", []))
        jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "previous_0", [])
        jr.call(this, "setFrame_1", [l_frame])
    jr.JNull
}

fn c1_m18__setanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_frame = jr.as_i(jr.call(this, "getFrame_0", []))
        jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "setIndex_1", [l_index])
        jr.call(this, "setFrame_1", [l_frame])
    jr.JNull
}

fn c1_m19__setframebydirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction] = jargs
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "setFrameByDirection_1", [l_direction])
    jr.JNull
}

fn c1_m20__setframetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "setFrameToAngle_1", [l_angle])
    jr.JNull
}

fn c1_m21__adjustframetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_angle] = jargs
        jr.call(this, "adjustFrame_1", [jr.call(l_new_angle, "getValue_0", [])])
    jr.JNull
}

fn c1_m22__adjustframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    let l_angle = jr.as_s(l_angle)
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "adjustFrame_1", [l_angle])
    jr.JNull
}

fn c1_m23__getangleinfop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_inherited(this, "CompoundRotationAnimation", "circularIndexUtil"), "getIndex_0", [])), "getAngleInfoP_0", [])
}

fn c1_m24__getanimationinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationInterfaceArray")
}

fn c1_m25__setanimationinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array] = jargs
        jr.set_field(this, "animationInterfaceArray", l_animation_interface_array)
    jr.JNull
}

fn c1_m26__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "animationInterfaceArray"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "set_1", [l_gl])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array, l_animation_behavior] = jargs
        jr.super_init("RotationAnimation", this, [jr.call_static("AngleInfo", "getInstance_1", [jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "QUARTER_TOTAL_ANGLE")]), jr.call_static("CircularIndexUtil", "createInstance_1", [jr.JInt(4)]), l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "animationInterfaceArray", l_animation_interface_array)
        jr.set_inherited(this, "CompoundRotationAnimation", "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.alen(jr.get_field(this, "animationInterfaceArray"))]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompoundRotationAnimation",
        "org.allbinary.animation.compound.CompoundRotationAnimation",
        "RotationAnimation",
        ["CompoundAnimationInterface"],
        False,
        [#("animationInterfaceArray", jr.JNull)],
        [],
        [
            jr.Method("setFrame_1", ["int"], False, c1_m3__setframe), 
            jr.Method("getFrame_0", [], False, c1_m4__getframe), 
            jr.Method("getAnimationSize_0", [], False, c1_m5__getanimationsize), 
            jr.Method("getSize_0", [], False, c1_m6__getsize), 
            jr.Method("previousFrame_0", [], False, c1_m7__previousframe), 
            jr.Method("nextFrame_0", [], False, c1_m8__nextframe), 
            jr.Method("previousRotation_0", [], False, c1_m9__previousrotation), 
            jr.Method("nextRotation_0", [], False, c1_m10__nextrotation), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m11__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m12__getsequence), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m13__paintxy), 
            jr.Method("paintThreedXYZ_4", ["Graphics", "int", "int", "int"], False, c1_m14__paintthreedxyz), 
            jr.Method("getCurrentAnimation_0", [], False, c1_m15__getcurrentanimation), 
            jr.Method("nextAnimation_0", [], False, c1_m16__nextanimation), 
            jr.Method("previousAnimation_0", [], False, c1_m17__previousanimation), 
            jr.Method("setAnimation_1", ["int"], False, c1_m18__setanimation), 
            jr.Method("setFrameByDirection_1", ["Direction"], False, c1_m19__setframebydirection), 
            jr.Method("setFrameToAngle_1", ["Angle"], False, c1_m20__setframetoangle), 
            jr.Method("adjustFrameToAngle_1", ["Angle"], False, c1_m21__adjustframetoangle), 
            jr.Method("adjustFrame_1", ["short"], False, c1_m22__adjustframe), 
            jr.Method("getAngleInfoP_0", [], False, c1_m23__getangleinfop), 
            jr.Method("getAnimationInterfaceArray_0", [], False, c1_m24__getanimationinterfacearray), 
            jr.Method("setAnimationInterfaceArray_1", ["RotationAnimationArr"], False, c1_m25__setanimationinterfacearray), 
            jr.Method("set_1", ["GL"], False, c1_m26__set), 
            jr.Method("jinit_2", ["RotationAnimationArr", "AnimationBehavior"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

