// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchScreenFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "touchScreenType", jr.get_field(jr.call_static("TouchScreenTypesFactory", "getInstance_0", []), "NOTOUCH"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TouchScreenFactory", "SINGLETON", jr.new("TouchScreenFactory", []))
    jr.JNull
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TouchScreenFactory", "SINGLETON")
}

fn c1_m7__ismultitouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "multiTouch")
}

fn c1_m8__settouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch] = jargs
    jr.JNull
}

fn c1_m9__istouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "touch")
}

fn c1_m10__gettouchscreentype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "touchScreenType")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchScreenFactory",
        "org.allbinary.input.motion.button.TouchScreenFactory",
        "Object",
        [],
        False,
        [#("multiTouch", jr.JBool(False)), #("touch", jr.JBool(False)), #("touchScreenType", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m6__getinstance), 
            jr.Method("isMultiTouch_0", [], False, c1_m7__ismultitouch), 
            jr.Method("setTouch_1", ["boolean"], False, c1_m8__settouch), 
            jr.Method("isTouch_0", [], False, c1_m9__istouch), 
            jr.Method("getTouchScreenType_0", [], False, c1_m10__gettouchscreentype), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

