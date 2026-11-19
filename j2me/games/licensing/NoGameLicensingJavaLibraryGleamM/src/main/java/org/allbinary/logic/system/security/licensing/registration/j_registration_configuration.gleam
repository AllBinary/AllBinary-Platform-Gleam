// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing.registration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RegistrationConfiguration

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "registrationCode", jr.JStr("No Registration Code"))
    jr.set_field(this, "NAME", jr.JStr("registrationid"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RegistrationConfiguration", "SINGLETON", jr.new("RegistrationConfiguration", []))
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("RegistrationConfiguration", "SINGLETON")
}

fn c1_m6__read(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__write(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Registration Code: ")]), "append_1", [jr.call(this, "getRegistrationCode_0", [])]), "toString_0", [])
}

fn c1_m9__setregistrationcode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_registration_code] = jargs
        jr.set_field(this, "registrationCode", l_registration_code)
    jr.JNull
}

fn c1_m10__getregistrationcode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "registrationCode")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RegistrationConfiguration",
        "org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration",
        "Object",
        [],
        False,
        [#("registrationCode", jr.JNull), #("NAME", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("read_0", [], False, c1_m6__read), 
            jr.Method("write_0", [], False, c1_m7__write), 
            jr.Method("toString_0", [], False, c1_m8__tostring), 
            jr.Method("setRegistrationCode_1", ["String"], False, c1_m9__setregistrationcode), 
            jr.Method("getRegistrationCode_0", [], False, c1_m10__getregistrationcode), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

