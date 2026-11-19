// Generated Code Do Not Modify
// package org.allbinary.animation.compound
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompoundIndexedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_indexed_animation = jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.call(l_indexed_animation, "setFrame_1", [l_index])
    jr.JNull
}

fn c1_m5__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_indexed_animation = jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
    jr.as_i(jr.call(l_indexed_animation, "getFrame_0", []))
}

fn c1_m6__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_indexed_animation = jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
    jr.as_i(jr.call(l_indexed_animation, "getSize_0", []))
}

fn c1_m7__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_indexed_animation = jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.call(l_indexed_animation, "previousFrame_0", [])
    jr.JNull
}

fn c1_m8__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m9__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m10__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])), "nextFrame_0", [])
    jr.JNull
}

fn c1_m11__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])), "paintXY_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_m12__paintthreedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", [])), "paintThreedXYZ_4", [l_graphics, l_x, l_y, l_z])
    jr.JNull
}

fn c1_m13__getcurrentanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
}

fn c1_m14__nextanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_frame = jr.as_i(jr.call(this, "getFrame_0", []))
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
        jr.call(this, "setFrame_1", [l_frame])
    jr.JNull
}

fn c1_m15__previousanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_frame = jr.as_i(jr.call(this, "getFrame_0", []))
        jr.call(jr.get_field(this, "circularIndexUtil"), "previous_0", [])
        jr.call(this, "setFrame_1", [l_frame])
    jr.JNull
}

fn c1_m16__setanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_frame = jr.as_i(jr.call(this, "getFrame_0", []))
        jr.call(jr.get_field(this, "circularIndexUtil"), "setIndex_1", [l_index])
        jr.call(this, "setFrame_1", [l_frame])
    jr.JNull
}

fn c1_m17__getanimationinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationInterfaceArray")
}

fn c1_m18__setanimationinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array] = jargs
        jr.set_field(this, "animationInterfaceArray", l_animation_interface_array)
    jr.JNull
}

fn c1_m19__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array, l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "animationInterfaceArray", l_animation_interface_array)
        jr.set_field(this, "circularIndexUtil", jr.call_static("CircularIndexUtil", "createInstance_1", [jr.alen(jr.get_field(this, "animationInterfaceArray"))]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompoundIndexedAnimation",
        "org.allbinary.animation.compound.CompoundIndexedAnimation",
        "IndexedAnimation",
        ["CompoundAnimationInterface"],
        False,
        [#("circularIndexUtil", jr.JNull), #("animationInterfaceArray", jr.JNull)],
        [],
        [
            jr.Method("setFrame_1", ["int"], False, c1_m4__setframe), 
            jr.Method("getFrame_0", [], False, c1_m5__getframe), 
            jr.Method("getSize_0", [], False, c1_m6__getsize), 
            jr.Method("previousFrame_0", [], False, c1_m7__previousframe), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m8__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m9__getsequence), 
            jr.Method("nextFrame_0", [], False, c1_m10__nextframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m11__paintxy), 
            jr.Method("paintThreedXYZ_4", ["Graphics", "int", "int", "int"], False, c1_m12__paintthreedxyz), 
            jr.Method("getCurrentAnimation_0", [], False, c1_m13__getcurrentanimation), 
            jr.Method("nextAnimation_0", [], False, c1_m14__nextanimation), 
            jr.Method("previousAnimation_0", [], False, c1_m15__previousanimation), 
            jr.Method("setAnimation_1", ["int"], False, c1_m16__setanimation), 
            jr.Method("getAnimationInterfaceArray_0", [], False, c1_m17__getanimationinterfacearray), 
            jr.Method("setAnimationInterfaceArray_1", ["AnimationArr"], False, c1_m18__setanimationinterfacearray), 
            jr.Method("set_1", ["GL"], False, c1_m19__set), 
            jr.Method("jinit_2", ["AnimationArr", "AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

