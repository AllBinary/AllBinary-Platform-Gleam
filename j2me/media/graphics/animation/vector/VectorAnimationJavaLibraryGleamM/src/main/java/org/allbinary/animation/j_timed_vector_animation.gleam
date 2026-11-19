// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TimedVectorAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "timeElapsedHelper", jr.new("TimeDelayHelper", [jr.JInt(200)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "timeElapsedHelper"), "isTime_1", [jr.get_field(jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []), "startTime")])) {
            True -> {
            jr.call_super("VectorAnimation", this, "nextFrame_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points, l_basic_color, l_animation_behavior] = jargs
        jr.super_init("VectorAnimation", this, [l_current_points, l_basic_color, l_animation_behavior])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TimedVectorAnimation",
        "org.allbinary.animation.TimedVectorAnimation",
        "VectorAnimation",
        [],
        False,
        [#("timeElapsedHelper", jr.JNull)],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m3__nextframe), 
            jr.Method("jinit_3", ["intArrArrArr", "BasicColor", "AnimationBehavior"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

