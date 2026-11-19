// Generated Code Do Not Modify
// package org.allbinary.logic.system.os.solaris
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SolarisOperatingSystemFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SolarisOperatingSystemFactory", "instance", jr.new("SolarisOperatingSystemFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SolarisOperatingSystemFactory", "instance")
}

fn c1_m5__getoperatingsysteminstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_operating_systems = jr.call_static("OperatingSystems", "getInstance_0", [])
            let l_os_name = jr.call(jr.call_static("SystemProperties", "getInstance_0", []), "getName_0", [])
            let l_operating_system_interface = jr.cell(jr.JNull)
            case jr.truth(jr.eq(jr.call(l_os_name, "compareTo_1", [jr.get_field(l_operating_systems, "SOLARIS")]), jr.JInt(0))) {
                True -> {
                jr.set(l_operating_system_interface, jr.new("SolarisOS", []))
                Nil
            }
                False -> {
                case jr.truth(jr.call(l_operating_systems, "isUnknownSpecificOSAllowed_0", [])) {
                    True -> {
                    jr.set(l_operating_system_interface, jr.new("SolarisOS", []))
                    Nil
                }
                    False -> {
                    jr.throw(jr.new("Exception", [jr.concat(jr.JStr("Specific Solaris OS Not Supported: "), l_os_name)]))
                    Nil
                }
                }
                Nil
            }
            }
            jr.ret(jr.get(l_operating_system_interface))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            case jr.truth(jr.call(jr.get_static("LogConfigTypes", "LOGGING"), "contains_1", [jr.get_field(jr.call_static("LogConfigTypeFactory", "getInstance_0", []), "FACTORYERROR")])) {
                True -> {
                let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "GET_INSTANCE"), l_e])
                Nil
            }
                False -> Nil
            }
            jr.ret(jr.get_static("NoOperatingSystem", "NO_OPERATING_SYSTEM"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SolarisOperatingSystemFactory",
        "org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getOperatingSystemInstance_0", [], False, c1_m5__getoperatingsysteminstance), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

