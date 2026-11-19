// Generated Code Do Not Modify
// package org.allbinary.logic.control.validate
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ValidatorBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ValidatorBase", "instance", jr.new("ValidatorBase", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ValidatorBase", "instance")
}

fn c1_m4__isvalid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "TRUE")
}

fn c1_m5__validationinfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m6__tohashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StdUtil", "getInstance_0", []), "NULL_TABLE")
}

fn c1_m7__tolist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ValidatorBase",
        "org.allbinary.logic.control.validate.ValidatorBase",
        "Object",
        ["ValidatorBaseInterface"],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isValid_0", [], False, c1_m4__isvalid), 
            jr.Method("validationInfo_0", [], False, c1_m5__validationinfo), 
            jr.Method("toHashtable_0", [], False, c1_m6__tohashtable), 
            jr.Method("toList_0", [], False, c1_m7__tolist), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

