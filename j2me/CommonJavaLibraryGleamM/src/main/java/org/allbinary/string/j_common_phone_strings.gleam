// Generated Code Do Not Modify
// package org.allbinary.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommonPhoneStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "UP", jr.JStr("UP"))
    jr.set_field(this, "DOWN", jr.JStr("DOWN"))
    jr.set_field(this, "LEFT", jr.JStr("LEFT"))
    jr.set_field(this, "RIGHT", jr.JStr("RIGHT"))
    jr.set_field(this, "ZERO", jr.JStr("0"))
    jr.set_field(this, "ONE", jr.JStr("1"))
    jr.set_field(this, "TWO", jr.JStr("2"))
    jr.set_field(this, "THREE", jr.JStr("3"))
    jr.set_field(this, "FOUR", jr.JStr("4"))
    jr.set_field(this, "FIVE", jr.JStr("5"))
    jr.set_field(this, "SIX", jr.JStr("6"))
    jr.set_field(this, "SEVEN", jr.JStr("7"))
    jr.set_field(this, "EIGHT", jr.JStr("8"))
    jr.set_field(this, "NINE", jr.JStr("9"))
    jr.set_field(this, "POUND", jr.JStr("#"))
    jr.set_field(this, "STAR", jr.JStr("*"))
    jr.set_field(this, "FIRE", jr.JStr("FIRE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CommonPhoneStrings", "instance", jr.new("CommonPhoneStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CommonPhoneStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommonPhoneStrings",
        "org.allbinary.string.CommonPhoneStrings",
        "Object",
        [],
        False,
        [#("UP", jr.JNull), #("DOWN", jr.JNull), #("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("ZERO", jr.JNull), #("ONE", jr.JNull), #("TWO", jr.JNull), #("THREE", jr.JNull), #("FOUR", jr.JNull), #("FIVE", jr.JNull), #("SIX", jr.JNull), #("SEVEN", jr.JNull), #("EIGHT", jr.JNull), #("NINE", jr.JNull), #("POUND", jr.JNull), #("STAR", jr.JNull), #("FIRE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

