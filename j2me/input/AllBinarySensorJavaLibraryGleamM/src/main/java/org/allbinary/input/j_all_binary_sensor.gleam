// Generated Code Do Not Modify
// package org.allbinary.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinarySensor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinarySensor", "NULL_ALLBINARY_SENSOR", jr.new("AllBinarySensor", []))
    jr.JNull
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__setmax(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max] = jargs
    let l_max = jr.as_i(l_max)
        jr.set_static("AllBinarySensor", "max", jr.as_i(l_max))
    jr.JNull
}

fn c1_m9__getmax(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("AllBinarySensor", "max"))
}

fn c1_m10__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_static("AllBinarySensor", "getMax_0", []))
}

fn c1_m11__shutdown(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.JStr("shutdown")])
    jr.JNull
}

fn c1_m12__onsensorchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED"), this])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinarySensor",
        "org.allbinary.input.AllBinarySensor",
        "Object",
        ["AllBinarySensorListener"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull)],
        [#("NULL_ALLBINARY_SENSOR", jr.JNull), #("max", jr.as_i(jr.JInt(100)))],
        [
            jr.Method("init_0", [], False, c1_m6__init), 
            jr.Method("update_0", [], False, c1_m7__update), 
            jr.Method("setMax_1", ["int"], True, c1_m8__setmax), 
            jr.Method("getMax_0", [], True, c1_m9__getmax), 
            jr.Method("getId_0", [], False, c1_m10__getid), 
            jr.Method("shutdown_0", [], False, c1_m11__shutdown), 
            jr.Method("onSensorChange_0", [], False, c1_m12__onsensorchange), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

