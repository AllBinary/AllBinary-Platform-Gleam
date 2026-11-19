// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ForcedLogUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__log(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_message, l_any_type] = jargs
        jr.try_catch(fn() {
            jr.throw(jr.new("Exception", [l_message]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "EXCEPTION"), l_any_type, jr.JStr("log"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ForcedLogUtil",
        "org.allbinary.logic.communication.log.ForcedLogUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("log_2", ["String", "Object"], True, c1_m1__log), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

