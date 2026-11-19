// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LockablePaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animation", jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "get_1", [jr.get_field(jr.call_static("LockedResources", "getInstance_0", []), "LOCKED_DEMO_GAME_FEATURE_RESOURCE")]), "getInstance_1", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_current_index, l_x, l_y] = jargs
    let l_current_index = jr.as_i(l_current_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        case jr.truth(case jr.truth(jr.call(jr.call_static("LockedUtil", "getInstance_0", []), "isLocked_0", [])) { True -> jr.ge(l_current_index, jr.call(this, "getLockedIndex_0", [])) False -> jr.JBool(False) }) {
            True -> {
            jr.call(jr.call(this, "getAnimation_0", []), "paintXY_3", [l_graphics, l_x, l_y])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m5__getlockedindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "lockedIndex"))
}

fn c1_m6__getanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animation")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_locked_index] = jargs
    let l_locked_index = jr.as_i(l_locked_index)
    jr.super_init("ItemPaintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "lockedIndex", jr.as_i(l_locked_index))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LockablePaintable",
        "org.allbinary.graphics.form.LockablePaintable",
        "ItemPaintable",
        [],
        False,
        [#("animation", jr.JNull), #("lockedIndex", jr.JInt(0))],
        [],
        [
            jr.Method("paint_4", ["Graphics", "int", "int", "int"], False, c1_m4__paint), 
            jr.Method("getLockedIndex_0", [], False, c1_m5__getlockedindex), 
            jr.Method("getAnimation_0", [], False, c1_m6__getanimation), 
            jr.Method("jinit_1", ["int"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

