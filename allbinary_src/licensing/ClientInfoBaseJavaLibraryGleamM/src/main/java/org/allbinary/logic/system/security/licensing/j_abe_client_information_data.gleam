// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbeClientInformationData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "KEY", jr.JStr("KEY"))
    jr.set_field(this, "NAME", jr.JStr("NAME"))
    jr.set_field(this, "VERSION", jr.JStr("VERSION"))
    jr.set_field(this, "SPECIALNAME", jr.JStr("SPECIALNAME"))
    jr.set_field(this, "LICENSEID", jr.JStr("LICENSEID"))
    jr.set_field(this, "LICENSE_TYPE", jr.JStr("LICENSETYPE"))
    jr.set_field(this, "PREVIOUSLICENSEID", jr.JStr("PREVIOUSLICENSEID"))
    jr.set_field(this, "OSNAME", jr.JStr("OSNAME"))
    jr.set_field(this, "OSARCH", jr.JStr("OSARCH"))
    jr.set_field(this, "OSVERSION", jr.JStr("OSVERSION"))
    jr.set_field(this, "OS", jr.JStr("OS"))
    jr.set_field(this, "HARDWARE", jr.JStr("HARDWARE"))
    jr.set_field(this, "LICENSESERVERS", jr.JStr("LICENSESERVERS"))
    jr.set_field(this, "NEWLICENSE", jr.JStr("NEWLICENSE"))
    jr.set_field(this, "ISNEW", jr.JStr("ISNEW"))
    jr.set_field(this, "SPECIAL", jr.JStr("SPECIAL"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AbeClientInformationData", "instance", jr.new("AbeClientInformationData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AbeClientInformationData", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbeClientInformationData",
        "org.allbinary.logic.system.security.licensing.AbeClientInformationData",
        "Object",
        [],
        False,
        [#("KEY", jr.JNull), #("NAME", jr.JNull), #("VERSION", jr.JNull), #("SPECIALNAME", jr.JNull), #("LICENSEID", jr.JNull), #("LICENSE_TYPE", jr.JNull), #("PREVIOUSLICENSEID", jr.JNull), #("OSNAME", jr.JNull), #("OSARCH", jr.JNull), #("OSVERSION", jr.JNull), #("OS", jr.JNull), #("HARDWARE", jr.JNull), #("LICENSESERVERS", jr.JNull), #("NEWLICENSE", jr.JNull), #("ISNEW", jr.JNull), #("SPECIAL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

