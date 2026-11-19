// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IndexedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getanimationbehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationBehaviorP")
}

fn c1_m6__reset(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "animationBehaviorP"), "reset_0", [])
        jr.call(this, "setFrame_1", [jr.JInt(0)])
    jr.JNull
}

fn c1_m7__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.JNull
}

fn c1_m8__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m9__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m10__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m11__previousframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m12__islastframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.call(this, "getFrame_0", []), jr.sub(jr.call(this, "getSize_0", []), jr.JInt(1)))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m13__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m14__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m15__setstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_indexed_animation] = jargs
        jr.call(this, "setFrame_1", [jr.call(l_indexed_animation, "getFrame_0", [])])
        jr.call_inherited(this, "IndexedAnimation", "setDx_1", [jr.call(l_indexed_animation, "getDx_0", [])])
        jr.call_inherited(this, "IndexedAnimation", "setDy_1", [jr.call(l_indexed_animation, "getDy_0", [])])
    jr.JNull
}

fn c1_m16__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m17__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_behavior] = jargs
    jr.super_init("Animation", this, [])
    c1_jfields(this)
        jr.set_field(this, "animationBehaviorP", l_animation_behavior)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IndexedAnimation",
        "org.allbinary.animation.IndexedAnimation",
        "Animation",
        ["IndexedAnimationInterface"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("animationBehaviorP", jr.JNull)],
        [],
        [
            jr.Method("getAnimationBehavior_0", [], False, c1_m5__getanimationbehavior), 
            jr.Method("reset_0", [], False, c1_m6__reset), 
            jr.Method("setFrame_1", ["int"], False, c1_m7__setframe), 
            jr.Method("getFrame_0", [], False, c1_m8__getframe), 
            jr.Method("getAnimationSize_0", [], False, c1_m9__getanimationsize), 
            jr.Method("getSize_0", [], False, c1_m10__getsize), 
            jr.Method("previousFrame_0", [], False, c1_m11__previousframe), 
            jr.Method("isLastFrame_0", [], False, c1_m12__islastframe), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m13__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m14__getsequence), 
            jr.Method("setState_1", ["IndexedAnimation"], False, c1_m15__setstate), 
            jr.Method("getWidth_0", [], False, c1_m16__getwidth), 
            jr.Method("getHeight_0", [], False, c1_m17__getheight), 
            jr.Method("jinit_1", ["AnimationBehavior"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

