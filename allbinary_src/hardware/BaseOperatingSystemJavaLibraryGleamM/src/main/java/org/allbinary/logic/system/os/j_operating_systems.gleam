// Generated Code Do Not Modify
// package org.allbinary.logic.system.os
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OperatingSystems

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "LINUX", jr.JStr("Linux"))
    jr.set_field(this, "WINDOWS", jr.JStr("Windows"))
    jr.set_field(this, "SOLARIS", jr.JStr("Solaris"))
    jr.set_field(this, "WINDOWS2000", jr.JStr("Windows 2000"))
    jr.set_field(this, "WINDOWS_NT", jr.JStr("Windows NT"))
    jr.set_field(this, "WINDOWS_10", jr.JStr("Windows 10"))
    jr.set_field(this, "WINDOWS_11", jr.JStr("Windows 11"))
    jr.set_field(this, "WINDOWS_VISTA", jr.JStr("Windows Vista"))
    jr.set_field(this, "WINDOWS_XP", jr.JStr("Windows XP"))
    jr.set_field(this, "ANDROID", jr.get_field(this, "LINUX"))
    jr.set_field(this, "HARMONY", jr.JStr("HarmonyOS"))
    jr.set_field(this, "unknownSpecificOSAllowed", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OperatingSystems", "instance", jr.new("OperatingSystems", []))
    jr.JNull
}

fn c1_m15__isunknownspecificosallowed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "unknownSpecificOSAllowed")
}

fn c1_m16__setunknownspecificosallowed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_unknown_specific_o_s_allowed] = jargs
        jr.set_field(this, "unknownSpecificOSAllowed", l_a_unknown_specific_o_s_allowed)
    jr.JNull
}

fn c1_m17__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OperatingSystems", "instance")
}

fn c1_jinit13(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OperatingSystems",
        "org.allbinary.logic.system.os.OperatingSystems",
        "Object",
        [],
        False,
        [#("LINUX", jr.JNull), #("WINDOWS", jr.JNull), #("SOLARIS", jr.JNull), #("WINDOWS2000", jr.JNull), #("WINDOWS_NT", jr.JNull), #("WINDOWS_10", jr.JNull), #("WINDOWS_11", jr.JNull), #("WINDOWS_VISTA", jr.JNull), #("WINDOWS_XP", jr.JNull), #("ANDROID", jr.JNull), #("HARMONY", jr.JNull), #("unknownSpecificOSAllowed", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("isUnknownSpecificOSAllowed_0", [], False, c1_m15__isunknownspecificosallowed), 
            jr.Method("setUnknownSpecificOSAllowed_1", ["boolean"], False, c1_m16__setunknownspecificosallowed), 
            jr.Method("getInstance_0", [], True, c1_m17__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit13)],
        c1_jfields,
        c1_jclinit,
    )
}

