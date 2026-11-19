// Generated Code Do Not Modify
// package org.allbinary.logic.java.character
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CharArrayFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "zeroCharArray", jr.new_array("C", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CharArrayFactory", "instance", jr.new("CharArrayFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CharArrayFactory", "instance")
}

fn c1_m4__getzerochararray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "zeroCharArray")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CharArrayFactory",
        "org.allbinary.logic.java.character.CharArrayFactory",
        "Object",
        [],
        False,
        [#("zeroCharArray", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getZeroCharArray_0", [], False, c1_m4__getzerochararray), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

