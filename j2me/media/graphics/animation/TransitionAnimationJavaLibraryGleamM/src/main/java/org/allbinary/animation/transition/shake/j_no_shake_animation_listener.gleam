// Generated Code Do Not Modify
// package org.allbinary.animation.transition.shake
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoShakeAnimationListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoShakeAnimationListener", "NO_SHAKE_ANIMATION_LISTENER", jr.new("NoShakeAnimationListener", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("ShakeAnimationListener", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoShakeAnimationListener",
        "org.allbinary.animation.transition.shake.NoShakeAnimationListener",
        "ShakeAnimationListener",
        [],
        False,
        [],
        [#("NO_SHAKE_ANIMATION_LISTENER", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

