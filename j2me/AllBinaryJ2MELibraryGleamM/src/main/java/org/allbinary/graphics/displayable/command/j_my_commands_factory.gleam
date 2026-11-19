// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.command
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MyCommandsFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NO_COMMAND", jr.new("Command", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.JInt(-1), jr.JInt(-1)]))
    jr.set_field(this, "GAUGE_CHANGE", jr.new("Command", [jr.JStr("GAUGE_CHANGE"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "ITEM"), jr.JInt(1)]))
    jr.set_field(this, "SET_DISPLAYABLE", jr.new("Command", [jr.JStr("Display"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(2)]))
    jr.set_field(this, "PAUSE_COMMAND", jr.new("Command", [jr.JStr("Pause"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(0)]))
    jr.set_field(this, "RESUME_COMMAND", jr.new("Command", [jr.JStr("Resume"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("Command", "SCREEN"), jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MyCommandsFactory", "instance", jr.new("MyCommandsFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MyCommandsFactory", "instance")
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MyCommandsFactory",
        "org.allbinary.graphics.displayable.command.MyCommandsFactory",
        "Object",
        [],
        False,
        [#("NO_COMMAND", jr.JNull), #("GAUGE_CHANGE", jr.JNull), #("SET_DISPLAYABLE", jr.JNull), #("PAUSE_COMMAND", jr.JNull), #("RESUME_COMMAND", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

