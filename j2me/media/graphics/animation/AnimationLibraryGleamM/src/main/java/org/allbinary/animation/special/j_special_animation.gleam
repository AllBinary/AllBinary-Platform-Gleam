// Generated Code Do Not Modify
// package org.allbinary.animation.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SpecialAnimation", "NULL_SPECIAL_ANIMATION", jr.new("SpecialAnimation", [jr.new("IndexedAnimationBehavior", [jr.JInt(1), jr.JInt(250)])]))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SpecialAnimation", "NULL_SPECIAL_ANIMATION")
}

fn c1_m4__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_indexed_animation_behavior = jr.get_inherited(this, "SpecialAnimation", "animationBehaviorP")
        jr.incr(fn() { jr.get_field(l_indexed_animation_behavior, "loopIndex") }, fn(jv) { jr.set_field(l_indexed_animation_behavior, "loopIndex", jv) }, 1, True)
    jr.JNull
}

fn c1_m5__setlastframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m6__iscomplete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m7__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_behavior] = jargs
        jr.super_init("IndexedAnimation", this, [l_animation_behavior])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialAnimation",
        "org.allbinary.animation.special.SpecialAnimation",
        "IndexedAnimation",
        ["SpecialAnimationInterface"],
        False,
        [],
        [#("NULL_SPECIAL_ANIMATION", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("nextFrame_0", [], False, c1_m4__nextframe), 
            jr.Method("setLastFrame_0", [], False, c1_m5__setlastframe), 
            jr.Method("isComplete_0", [], False, c1_m6__iscomplete), 
            jr.Method("open_0", [], False, c1_m7__open), 
            jr.Method("close_0", [], False, c1_m8__close), 
            jr.Method("process_0", [], False, c1_m9__process), 
            jr.Method("jinit_1", ["AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

