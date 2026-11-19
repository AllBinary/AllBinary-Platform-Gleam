// Generated Code Do Not Modify
// package org.allbinary.animation.transition.shake
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ShakeAnimationListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__onsmallshakeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m2__onmediumshakeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m3__onlargeshakeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__onshakeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_shake_event] = jargs
    jr.JNull
}

fn c1_m5__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ShakeAnimationListener",
        "org.allbinary.animation.transition.shake.ShakeAnimationListener",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("onSmallShakeEvent_0", [], False, c1_m1__onsmallshakeevent), 
            jr.Method("onMediumShakeEvent_0", [], False, c1_m2__onmediumshakeevent), 
            jr.Method("onLargeShakeEvent_0", [], False, c1_m3__onlargeshakeevent), 
            jr.Method("onShakeEvent_1", ["ShakeEvent"], False, c1_m4__onshakeevent), 
            jr.Method("getType_0", [], False, c1_m5__gettype), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

