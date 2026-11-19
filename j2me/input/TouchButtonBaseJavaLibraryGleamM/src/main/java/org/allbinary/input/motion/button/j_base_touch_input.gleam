// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseTouchInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "basicArrayListUtil", jr.call_static("BasicArrayListUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "basicArrayListUtil"), "getImmutableInstance_0", [])
}

fn c1_m5__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_inherited(this, "BaseTouchInput", "getClass_0", []), "getName_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseTouchInput",
        "org.allbinary.input.motion.button.BaseTouchInput",
        "Object",
        [],
        False,
        [#("commonStrings", jr.JNull), #("basicArrayListUtil", jr.JNull)],
        [],
        [
            jr.Method("getList_0", [], False, c1_m4__getlist), 
            jr.Method("toString_0", [], False, c1_m5__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

