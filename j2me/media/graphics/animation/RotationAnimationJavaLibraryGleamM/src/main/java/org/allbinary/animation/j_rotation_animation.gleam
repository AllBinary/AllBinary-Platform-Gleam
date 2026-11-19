// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "frameUtil", jr.call_static("FrameUtil", "getInstance_0", []))
    jr.set_field(this, "directionUtil", jr.call_static("DirectionUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__nextrotationx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__previousrotationx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__nextrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "angleInfo"), "adjustAngle_1", [jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])])
    jr.JNull
}

fn c1_m9__previousrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "angleInfo"), "adjustAngle_1", [jr.call(jr.get_field(this, "circularIndexUtil"), "previous_0", [])])
    jr.JNull
}

fn c1_m10__nextrotationz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__previousrotationz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m12__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_field(this, "circularIndexUtil"), "setIndex_1", [l_index])
        let l_new_frame = jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.call(jr.get_field(this, "angleInfo"), "adjustAngle_1", [l_new_frame])
    jr.JNull
}

fn c1_m13__setframebydirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction] = jargs
        let l_angle = jr.call(jr.get_field(this, "directionUtil"), "getFrameAngle_1", [l_direction])
        jr.call(this, "adjustFrameToAngle_1", [l_angle])
    jr.JNull
}

fn c1_m14__setframetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
        jr.call(this, "adjustFrameToAngle_1", [l_angle])
    jr.JNull
}

fn c1_m15__adjustframetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
        jr.call(this, "adjustFrame_1", [jr.call(l_angle, "getValue_0", [])])
    jr.JNull
}

fn c1_m16__adjustframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    let l_angle = jr.as_s(l_angle)
        jr.call(this, "setFrame_1", [jr.call(jr.get_field(this, "frameUtil"), "getFrameForAngle_2", [l_angle, jr.to_i(jr.call(jr.call(jr.get_field(this, "angleInfo"), "getAngleIncrementInfo_0", []), "getAngleIncrement_0", []))])])
    jr.JNull
}

fn c1_m17__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
}

fn c1_m18__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getSize_0", []))
}

fn c1_m19__getangleinfop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "angleInfo")
}

fn c1_m20__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call_super("IndexedAnimation", this, "toString_0", [])]), "append_1", [jr.JStr("circularIndexUtil: ")]), "append_1", [jr.call(jr.get_field(this, "circularIndexUtil"), "toString_0", [])]), "append_1", [jr.JStr("angleInfo: ")]), "append_1", [jr.call(jr.get_field(this, "angleInfo"), "toString_0", [])]), "toString_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle_info, l_circular_index_util, l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "angleInfo", l_angle_info)
        jr.set_field(this, "circularIndexUtil", l_circular_index_util)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RotationAnimation",
        "org.allbinary.animation.RotationAnimation",
        "IndexedAnimation",
        ["RotationAnimationInterface"],
        False,
        [#("frameUtil", jr.JNull), #("directionUtil", jr.JNull), #("angleInfo", jr.JNull), #("circularIndexUtil", jr.JNull)],
        [],
        [
            jr.Method("nextRotationX_0", [], False, c1_m6__nextrotationx), 
            jr.Method("previousRotationX_0", [], False, c1_m7__previousrotationx), 
            jr.Method("nextRotation_0", [], False, c1_m8__nextrotation), 
            jr.Method("previousRotation_0", [], False, c1_m9__previousrotation), 
            jr.Method("nextRotationZ_0", [], False, c1_m10__nextrotationz), 
            jr.Method("previousRotationZ_0", [], False, c1_m11__previousrotationz), 
            jr.Method("setFrame_1", ["int"], False, c1_m12__setframe), 
            jr.Method("setFrameByDirection_1", ["Direction"], False, c1_m13__setframebydirection), 
            jr.Method("setFrameToAngle_1", ["Angle"], False, c1_m14__setframetoangle), 
            jr.Method("adjustFrameToAngle_1", ["Angle"], False, c1_m15__adjustframetoangle), 
            jr.Method("adjustFrame_1", ["short"], False, c1_m16__adjustframe), 
            jr.Method("getFrame_0", [], False, c1_m17__getframe), 
            jr.Method("getSize_0", [], False, c1_m18__getsize), 
            jr.Method("getAngleInfoP_0", [], False, c1_m19__getangleinfop), 
            jr.Method("toString_0", [], False, c1_m20__tostring), 
            jr.Method("jinit_3", ["AngleInfo", "CircularIndexUtil", "AnimationBehavior"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

