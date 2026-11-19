// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameAdStateFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameAdStateArray", jr.array_of("L", [jr.new("GameAdState", [jr.new("AppNameLicensingAdConfiguration", [])])]))
    jr.set_field(this, "gameAdState", jr.aget(jr.get_field(this, "gameAdStateArray"), jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameAdStateFactory", "instance", jr.new("GameAdStateFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameAdStateFactory", "instance")
}

fn c1_m5__getcurrentinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameAdState")
}

fn c1_m6__getinstanceforapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_software_information] = jargs
        jr.set_field(this, "gameAdState", jr.aget(jr.get_field(this, "gameAdStateArray"), jr.JInt(0)))
    jr.aget(jr.get_field(this, "gameAdStateArray"), jr.JInt(0))
}

fn c1_m7__isenabled(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameAdStateFactory",
        "org.allbinary.business.advertisement.GameAdStateFactory",
        "Object",
        ["GameAdStateFactoryInterface"],
        False,
        [#("gameAdStateArray", jr.JNull), #("gameAdState", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getCurrentInstance_0", [], False, c1_m5__getcurrentinstance), 
            jr.Method("getInstanceForApp_1", ["SoftwareInformation"], False, c1_m6__getinstanceforapp), 
            jr.Method("isEnabled_0", [], False, c1_m7__isenabled), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

