// Generated Code Do Not Modify
// package org.allbinary.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommonStateStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "CONTEXT", jr.JStr("Context: "))
    jr.set_field(this, "FINISH", jr.JStr("finish"))
    jr.set_field(this, "CREATE", jr.JStr("onCreate"))
    jr.set_field(this, "START", jr.JStr("onStart"))
    jr.set_field(this, "RESTART", jr.JStr("onRestart"))
    jr.set_field(this, "RESUME", jr.JStr("onResume"))
    jr.set_field(this, "PAUSE", jr.JStr("onPause"))
    jr.set_field(this, "STOP", jr.JStr("onStop"))
    jr.set_field(this, "DESTROY", jr.JStr("onDestroy"))
    jr.set_field(this, "BIND", jr.JStr("onBind"))
    jr.set_field(this, "ON_SAVE_INSTANCE_STATE", jr.JStr("onSaveInstanceState"))
    jr.set_field(this, "ON_START_COMMAND", jr.JStr("onStartCommand"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CommonStateStrings", "instance", jr.new("CommonStateStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CommonStateStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommonStateStrings",
        "org.allbinary.string.CommonStateStrings",
        "Object",
        [],
        False,
        [#("CONTEXT", jr.JNull), #("FINISH", jr.JNull), #("CREATE", jr.JNull), #("START", jr.JNull), #("RESTART", jr.JNull), #("RESUME", jr.JNull), #("PAUSE", jr.JNull), #("STOP", jr.JNull), #("DESTROY", jr.JNull), #("BIND", jr.JNull), #("ON_SAVE_INSTANCE_STATE", jr.JNull), #("ON_START_COMMAND", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

