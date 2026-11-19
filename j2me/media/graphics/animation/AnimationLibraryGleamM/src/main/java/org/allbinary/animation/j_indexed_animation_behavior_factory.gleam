// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IndexedAnimationBehaviorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getorcreateinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("IndexedAnimationBehavior", [jr.get_field(this, "loopTotal"), jr.get_field(this, "frameDelayTime")])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_loop_total, l_frame_delay_time] = jargs
    let l_loop_total = jr.as_i(l_loop_total)
    let l_frame_delay_time = jr.as_j(l_frame_delay_time)
    jr.super_init("AnimationBehaviorFactory", this, [])
    c1_jfields(this)
        jr.set_field(this, "loopTotal", jr.as_i(l_loop_total))
        jr.set_field(this, "frameDelayTime", jr.as_j(l_frame_delay_time))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IndexedAnimationBehaviorFactory",
        "org.allbinary.animation.IndexedAnimationBehaviorFactory",
        "AnimationBehaviorFactory",
        [],
        False,
        [#("frameDelayTime", jr.JLong(0)), #("loopTotal", jr.JInt(0))],
        [],
        [
            jr.Method("getOrCreateInstance_0", [], False, c1_m4__getorcreateinstance), 
            jr.Method("jinit_2", ["int", "long"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

