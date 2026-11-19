// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log.config.type
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LogConfigTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NO_DESCRIPTION", jr.JStr("No Description"))
    jr.set_field(this, "OS", jr.new("LogConfigType", [jr.JStr("Operating System"), jr.get_field(this, "NO_DESCRIPTION")]))
    jr.set_field(this, "FACTORYERROR", jr.new("LogConfigType", [jr.JStr("Factory Error"), jr.get_field(this, "NO_DESCRIPTION")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LogConfigTypeFactory", "instance", jr.new("LogConfigTypeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LogConfigTypeFactory", "instance")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(jr.get_static("LogConfigTypes", "LOGGING"), "add_1", [jr.get_field(this, "OS")])
        jr.call(jr.get_static("LogConfigTypes", "LOGGING"), "add_1", [jr.get_field(this, "FACTORYERROR")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LogConfigTypeFactory",
        "org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory",
        "Object",
        [],
        False,
        [#("NO_DESCRIPTION", jr.JNull), #("OS", jr.JNull), #("FACTORYERROR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

