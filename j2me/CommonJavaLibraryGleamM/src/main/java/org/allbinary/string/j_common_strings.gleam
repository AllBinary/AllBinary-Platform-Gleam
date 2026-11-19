// Generated Code Do Not Modify
// package org.allbinary.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommonStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EMPTY", jr.JStr("Empty"))
    jr.set_field(this, "CREATE_IMAGE", jr.JStr("createImage"))
    jr.set_field(this, "PLEASE_WAIT", jr.JStr("Please Wait"))
    jr.set_field(this, "PLEASE_WAIT_FOR_SERVER", jr.JStr("Please Wait Getting Data From Server..."))
    jr.set_field(this, "PERIODS", jr.JStr("..."))
    jr.set_field(this, "LOADING", jr.JStr("Loading..."))
    jr.set_field(this, "CONSTRUCTOR", jr.JStr("Constructor"))
    jr.set_field(this, "START", jr.JStr("Start"))
    jr.set_field(this, "END", jr.JStr("End"))
    jr.set_field(this, "EXCEPTION", jr.JStr("Exception"))
    jr.set_field(this, "EXCEPTION_LABEL", jr.JStr("Exception: "))
    jr.set_field(this, "CLEANUP", jr.JStr("cleanup"))
    jr.set_field(this, "INIT", jr.JStr("init"))
    jr.set_field(this, "CLOSE", jr.JStr("close"))
    jr.set_field(this, "UP", jr.JStr("up"))
    jr.set_field(this, "DOWN", jr.JStr("down"))
    jr.set_field(this, "LEFT", jr.JStr("left"))
    jr.set_field(this, "RIGHT", jr.JStr("right"))
    jr.set_field(this, "DIRECTION_NAME", jr.array_of("L", [jr.get_field(this, "DOWN"), jr.get_field(this, "LEFT"), jr.get_field(this, "RIGHT"), jr.get_field(this, "UP")]))
    jr.set_field(this, "CREATE", jr.JStr("Create"))
    jr.set_field(this, "REMOVE", jr.JStr("Remove"))
    jr.set_field(this, "UPDATE", jr.JStr("Update"))
    jr.set_field(this, "DELETE", jr.JStr("Delete"))
    jr.set_field(this, "delete", jr.JStr("delete"))
    jr.set_field(this, "LOAD", jr.JStr("load"))
    jr.set_field(this, "SAVE", jr.JStr("save"))
    jr.set_field(this, "ADD", jr.JStr("Add"))
    jr.set_field(this, "DROP", jr.JStr("Drop"))
    jr.set_field(this, "INSERT", jr.JStr("Insert"))
    jr.set_field(this, "VISIT", jr.JStr("visit"))
    jr.set_field(this, "START_METHOD_NAME", jr.get_field(this, "START"))
    jr.set_field(this, "END_METHOD_NAME", jr.JStr("end"))
    jr.set_field(this, "GET", jr.JStr("get"))
    jr.set_field(this, "PROCESS", jr.JStr("process"))
    jr.set_field(this, "GET_INSTANCE", jr.JStr("getInstance"))
    jr.set_field(this, "GET_LIST", jr.JStr("getList"))
    jr.set_field(this, "RUN", jr.JStr("run"))
    jr.set_field(this, "START_RUNNABLE", jr.JStr("Start Runnable"))
    jr.set_field(this, "RUNNING", jr.JStr("Running"))
    jr.set_field(this, "END_RUNNABLE", jr.JStr("End Runnable"))
    jr.set_field(this, "DISABLE", jr.JStr("disable"))
    jr.set_field(this, "ENABLE", jr.JStr("enable"))
    jr.set_field(this, "SUCCESS", jr.JStr("Command Success"))
    jr.set_field(this, "FAILURE", jr.JStr("Command Failed"))
    jr.set_field(this, "NOT_IMPLEMENTED", jr.JStr("Not Implemented"))
    jr.set_field(this, "UNKNOWN", jr.JStr("Unknown"))
    jr.set_field(this, "ON_EVENT", jr.JStr("onEvent"))
    jr.set_field(this, "IS_VALID", jr.JStr("isValid"))
    jr.set_field(this, "TOSTRING", jr.JStr("toString"))
    jr.set_field(this, "ADD_LISTENER", jr.JStr("addListener"))
    jr.set_field(this, "REMOVE_LISTENER", jr.JStr("removeListener"))
    jr.set_field(this, "SIZE", jr.JStr("size"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CommonStrings", "instance", jr.new("CommonStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CommonStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommonStrings",
        "org.allbinary.string.CommonStrings",
        "Object",
        [],
        False,
        [#("EMPTY", jr.JNull), #("CREATE_IMAGE", jr.JNull), #("PLEASE_WAIT", jr.JNull), #("PLEASE_WAIT_FOR_SERVER", jr.JNull), #("PERIODS", jr.JNull), #("LOADING", jr.JNull), #("CONSTRUCTOR", jr.JNull), #("START", jr.JNull), #("END", jr.JNull), #("EXCEPTION", jr.JNull), #("EXCEPTION_LABEL", jr.JNull), #("CLEANUP", jr.JNull), #("INIT", jr.JNull), #("CLOSE", jr.JNull), #("UP", jr.JNull), #("DOWN", jr.JNull), #("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("DIRECTION_NAME", jr.JNull), #("CREATE", jr.JNull), #("REMOVE", jr.JNull), #("UPDATE", jr.JNull), #("DELETE", jr.JNull), #("delete", jr.JNull), #("LOAD", jr.JNull), #("SAVE", jr.JNull), #("ADD", jr.JNull), #("DROP", jr.JNull), #("INSERT", jr.JNull), #("VISIT", jr.JNull), #("START_METHOD_NAME", jr.JNull), #("END_METHOD_NAME", jr.JNull), #("GET", jr.JNull), #("PROCESS", jr.JNull), #("GET_INSTANCE", jr.JNull), #("GET_LIST", jr.JNull), #("RUN", jr.JNull), #("START_RUNNABLE", jr.JNull), #("RUNNING", jr.JNull), #("END_RUNNABLE", jr.JNull), #("DISABLE", jr.JNull), #("ENABLE", jr.JNull), #("SUCCESS", jr.JNull), #("FAILURE", jr.JNull), #("NOT_IMPLEMENTED", jr.JNull), #("UNKNOWN", jr.JNull), #("ON_EVENT", jr.JNull), #("IS_VALID", jr.JNull), #("TOSTRING", jr.JNull), #("ADD_LISTENER", jr.JNull), #("REMOVE_LISTENER", jr.JNull), #("SIZE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

