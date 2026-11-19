// Generated Code Do Not Modify
// package org.allbinary.animation.transition.shake
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ShakeAnimationListenerFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("NoShakeAnimationListener", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ShakeAnimationListenerFactory",
        "org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_0", [], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

