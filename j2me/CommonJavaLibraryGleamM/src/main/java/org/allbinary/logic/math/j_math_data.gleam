// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MathData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "PLUS", jr.JStr("+"))
    jr.set_field(this, "GREATER_THAN", jr.JStr(">"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MathData", "instance", jr.new("MathData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MathData", "instance")
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        jr.set_field(this, "EQUALS", jr.get_field(l_common_seps, "EQUALS"))
        jr.set_field(this, "MINUS", jr.get_field(l_common_seps, "DASH"))
        jr.set_field(this, "DIVIDE", jr.get_field(l_common_seps, "FORWARD_SLASH"))
        jr.set_field(this, "MULTIPLY", jr.get_field(jr.call_static("CommonPhoneStrings", "getInstance_0", []), "STAR"))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MathData",
        "org.allbinary.logic.math.MathData",
        "Object",
        [],
        False,
        [#("EQUALS", jr.JNull), #("PLUS", jr.JNull), #("GREATER_THAN", jr.JNull), #("MINUS", jr.JNull), #("DIVIDE", jr.JNull), #("MULTIPLY", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

