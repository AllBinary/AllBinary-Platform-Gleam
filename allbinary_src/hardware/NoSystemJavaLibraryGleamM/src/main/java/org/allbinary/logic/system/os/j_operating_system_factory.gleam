// Generated Code Do Not Modify
// package org.allbinary.logic.system.os
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OperatingSystemFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "genericOperatingSystem", jr.get_static("NoOperatingSystem", "NO_OPERATING_SYSTEM"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OperatingSystemFactory", "instance", jr.new("OperatingSystemFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OperatingSystemFactory", "instance")
}

fn c1_m6__getoperatingsysteminstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.try_catch(fn() {
            let l_os_string = jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("OperatingSystem Info: ")]), "append_1", [jr.call(jr.get_field(this, "genericOperatingSystem"), "toString_0", [])]), "toString_0", [])
            jr.call(jr.get_static("System", "out"), "println_1", [l_os_string])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [l_os_string, this, jr.get_field(l_common_strings, "GET_INSTANCE")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "GET_INSTANCE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.get_field(this, "genericOperatingSystem")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OperatingSystemFactory",
        "org.allbinary.logic.system.os.OperatingSystemFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("genericOperatingSystem", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getOperatingSystemInstance_0", [], False, c1_m6__getoperatingsysteminstance), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

