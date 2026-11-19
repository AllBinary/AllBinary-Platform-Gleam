// Generated Code Do Not Modify
// package org.allbinary.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommonLabels

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "WIDTH_LABEL", jr.JStr(" Width: "))
    jr.set_field(this, "HEIGHT_LABEL", jr.JStr(" Height: "))
    jr.set_field(this, "END_LABEL", jr.JStr("End: "))
    jr.set_field(this, "TOTAL_LABEL", jr.JStr("Total: "))
    jr.set_field(this, "INDEX_LABEL", jr.JStr("index: "))
    jr.set_field(this, "START_LABEL", jr.JStr("Start: "))
    jr.set_field(this, "COMMAND_LABEL", jr.JStr("Command: "))
    jr.set_field(this, "NAME_LABEL", jr.JStr("Name: "))
    jr.set_field(this, "START", jr.get_field(this, "START_LABEL"))
    jr.set_field(this, "ELAPSED", jr.JStr(" Elapsed: "))
    jr.set_field(this, "CURRENT", jr.JStr(" Current: "))
    jr.set_field(this, "NEXT", jr.JStr("Next"))
    jr.set_field(this, "ITEM_LABEL", jr.JStr("Item: "))
    jr.set_field(this, "RESULT_", jr.JStr("Result: "))
    jr.set_field(this, "COLON_SEP", jr.JStr(": "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CommonLabels", "instance", jr.new("CommonLabels", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CommonLabels", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommonLabels",
        "org.allbinary.string.CommonLabels",
        "Object",
        [],
        False,
        [#("WIDTH_LABEL", jr.JNull), #("HEIGHT_LABEL", jr.JNull), #("END_LABEL", jr.JNull), #("TOTAL_LABEL", jr.JNull), #("INDEX_LABEL", jr.JNull), #("START_LABEL", jr.JNull), #("COMMAND_LABEL", jr.JNull), #("NAME_LABEL", jr.JNull), #("START", jr.JNull), #("ELAPSED", jr.JNull), #("CURRENT", jr.JNull), #("NEXT", jr.JNull), #("ITEM_LABEL", jr.JNull), #("RESULT_", jr.JNull), #("COLON_SEP", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

