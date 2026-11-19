// Generated Code Do Not Modify
// package org.allbinary.logic.system.os
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SystemProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "OS_NAME", jr.JStr("os.name"))
    jr.set_field(this, "OS_ARCH", jr.JStr("os.arch"))
    jr.set_field(this, "OS_VERSION", jr.JStr("os.version"))
    jr.set_field(this, "USER_HOME", jr.JStr("user.home"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SystemProperties", "instance", jr.new("SystemProperties", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SystemProperties", "instance")
}

fn c1_m8__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("System", "getProperty_1", [jr.get_field(this, "OS_NAME")])
}

fn c1_m9__getarch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("System", "getProperty_1", [jr.get_field(this, "OS_ARCH")])
}

fn c1_m10__getversion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("System", "getProperty_1", [jr.get_field(this, "OS_VERSION")])
}

fn c1_m11__getuserhomepath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("System", "getProperty_1", [jr.get_field(this, "USER_HOME")])
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SystemProperties",
        "org.allbinary.logic.system.os.SystemProperties",
        "Object",
        [],
        False,
        [#("OS_NAME", jr.JNull), #("OS_ARCH", jr.JNull), #("OS_VERSION", jr.JNull), #("USER_HOME", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getName_0", [], False, c1_m8__getname), 
            jr.Method("getArch_0", [], False, c1_m9__getarch), 
            jr.Method("getVersion_0", [], False, c1_m10__getversion), 
            jr.Method("getUserHomePath_0", [], False, c1_m11__getuserhomepath), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

