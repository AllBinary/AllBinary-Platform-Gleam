// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KotlinUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__iskotlin(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m2__getshortname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "KotlinUtil",
        "org.allbinary.KotlinUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("isKotlin_0", [], True, c1_m1__iskotlin), 
            jr.Method("getShortName_0", [], True, c1_m2__getshortname), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

