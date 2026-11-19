// Generated Code Do Not Modify
// package org.allbinary.animation.compound
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SimultaneousCompoundIndexedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame_index] = jargs
    let l_frame_index = jr.as_i(l_frame_index)
        let l_indexed_animation = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "animationInterfaceArray"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_indexed_animation, jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)))
            jr.call(jr.get(l_indexed_animation), "setFrame_1", [l_frame_index])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m4__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_indexed_animation = jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.JInt(0))
    jr.as_i(jr.call(l_indexed_animation, "getFrame_0", []))
}

fn c1_m5__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_indexed_animation = jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.JInt(0))
    jr.as_i(jr.call(l_indexed_animation, "getSize_0", []))
}

fn c1_m6__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_indexed_animation = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "animationInterfaceArray"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_indexed_animation, jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)))
            jr.call(jr.get(l_indexed_animation), "previousFrame_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m7__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m8__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m9__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "animationInterfaceArray"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "nextFrame_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m10__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "animationInterfaceArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "paintXY_3", [l_graphics, l_x, l_y])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m11__paintthreedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "animationInterfaceArray")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "animationInterfaceArray"), jr.get(l_index)), "paintThreedXYZ_4", [l_graphics, l_x, l_y, l_z])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m12__getanimationinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationInterfaceArray")
}

fn c1_m13__setanimationinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array] = jargs
        jr.set_field(this, "animationInterfaceArray", l_animation_interface_array)
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array, l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "animationInterfaceArray", l_animation_interface_array)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SimultaneousCompoundIndexedAnimation",
        "org.allbinary.animation.compound.SimultaneousCompoundIndexedAnimation",
        "IndexedAnimation",
        [],
        False,
        [#("animationInterfaceArray", jr.JNull)],
        [],
        [
            jr.Method("setFrame_1", ["int"], False, c1_m3__setframe), 
            jr.Method("getFrame_0", [], False, c1_m4__getframe), 
            jr.Method("getSize_0", [], False, c1_m5__getsize), 
            jr.Method("previousFrame_0", [], False, c1_m6__previousframe), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m7__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m8__getsequence), 
            jr.Method("nextFrame_0", [], False, c1_m9__nextframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m10__paintxy), 
            jr.Method("paintThreedXYZ_4", ["Graphics", "int", "int", "int"], False, c1_m11__paintthreedxyz), 
            jr.Method("getAnimationInterfaceArray_0", [], False, c1_m12__getanimationinterfacearray), 
            jr.Method("setAnimationInterfaceArray_1", ["AnimationArr"], False, c1_m13__setanimationinterfacearray), 
            jr.Method("jinit_2", ["AnimationArr", "AnimationBehavior"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

