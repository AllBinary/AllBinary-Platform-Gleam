// Generated Code Do Not Modify
// package org.allbinary.animation.transition
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RunAtEndAnimationListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__onplatformanimationstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__onplatformanimationend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__onplatformanimationrepeat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "runnable", l_runnable)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RunAtEndAnimationListener",
        "org.allbinary.animation.transition.RunAtEndAnimationListener",
        "Object",
        ["AnimationListenerInterface"],
        False,
        [#("runnable", jr.JNull)],
        [],
        [
            jr.Method("onPlatformAnimationStart_0", [], False, c1_m3__onplatformanimationstart), 
            jr.Method("onPlatformAnimationEnd_0", [], False, c1_m4__onplatformanimationend), 
            jr.Method("onPlatformAnimationRepeat_0", [], False, c1_m5__onplatformanimationrepeat), 
            jr.Method("jinit_1", ["Runnable"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

