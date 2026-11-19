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
    jr.set_field(this, "FILE", jr.new("LogConfigType", [jr.JStr("File"), jr.get_field(this, "NO_DESCRIPTION")]))
    jr.set_field(this, "FILEERROR", jr.new("LogConfigType", [jr.JStr("File Error"), jr.get_field(this, "NO_DESCRIPTION")]))
    jr.set_field(this, "IDLOGGING", jr.new("LogConfigType", [jr.JStr("ID Logging"), jr.get_field(this, "NO_DESCRIPTION")]))
    jr.set_field(this, "REPLACE", jr.new("LogConfigType", [jr.JStr("Replace"), jr.get_field(this, "NO_DESCRIPTION")]))
    jr.set_field(this, "REPLACE_INFO", jr.new("LogConfigType", [jr.JStr("Replace Info"), jr.get_field(this, "NO_DESCRIPTION")]))
    jr.set_field(this, "REPLACEERROR", jr.new("LogConfigType", [jr.JStr("Replace Error"), jr.get_field(this, "NO_DESCRIPTION")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LogConfigTypeFactory", "instance", jr.new("LogConfigTypeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LogConfigTypeFactory", "instance")
}

fn c1_jinit12(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("NO_DESCRIPTION", jr.JNull), #("OS", jr.JNull), #("FACTORYERROR", jr.JNull), #("FILE", jr.JNull), #("FILEERROR", jr.JNull), #("IDLOGGING", jr.JNull), #("REPLACE", jr.JNull), #("REPLACE_INFO", jr.JNull), #("REPLACEERROR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit12)],
        c1_jfields,
        c1_jclinit,
    )
}

