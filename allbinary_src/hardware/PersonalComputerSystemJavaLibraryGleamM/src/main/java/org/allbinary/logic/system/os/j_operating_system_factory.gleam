// Generated Code Do Not Modify
// package org.allbinary.logic.system.os
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OperatingSystemFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "genericOperatingSystem", jr.get_static("NoOperatingSystem", "NO_OPERATING_SYSTEM"))
    jr.set_field(this, "hasDetected", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OperatingSystemFactory", "instance", jr.new("OperatingSystemFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OperatingSystemFactory", "instance")
}

fn c1_m8__getoperatingsysteminstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_operating_systems = jr.call_static("OperatingSystems", "getInstance_0", [])
            let l_system_properties = jr.call_static("SystemProperties", "getInstance_0", [])
            let l_os_name = jr.call(l_system_properties, "getName_0", [])
            let l_os_arch = jr.call(l_system_properties, "getArch_0", [])
            let l_os_version = jr.call(l_system_properties, "getVersion_0", [])
            case jr.truth(jr.not(jr.get_field(this, "hasDetected"))) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.concat(jr.JStr("osName: "), l_os_name), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET_INSTANCE")])
                jr.set_field(this, "hasDetected", jr.JBool(True))
                case jr.truth(jr.ge(jr.call(l_os_name, "indexOf_1", [jr.get_field(l_operating_systems, "LINUX")]), jr.JInt(0))) {
                    True -> {
                    case jr.truth(jr.call(jr.get_static("LogConfigTypes", "LOGGING"), "contains_1", [jr.get_field(jr.call_static("LogConfigTypeFactory", "getInstance_0", []), "FACTORYERROR")])) {
                        True -> {
                        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Found a Linux OS"), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET_INSTANCE")])
                        Nil
                    }
                        False -> Nil
                    }
                    jr.set_field(this, "genericOperatingSystem", jr.call(jr.call_static("LinuxOperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", []))
                    Nil
                }
                    False -> case jr.truth(jr.ge(jr.call(l_os_name, "indexOf_1", [jr.get_field(l_operating_systems, "WINDOWS")]), jr.JInt(0))) {
                    True -> {
                    case jr.truth(jr.call(jr.get_static("LogConfigTypes", "LOGGING"), "contains_1", [jr.get_field(jr.call_static("LogConfigTypeFactory", "getInstance_0", []), "FACTORYERROR")])) {
                        True -> {
                        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Found a Windows OS"), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET_INSTANCE")])
                        Nil
                    }
                        False -> Nil
                    }
                    jr.set_field(this, "genericOperatingSystem", jr.call(jr.call_static("WindowsOperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", []))
                    Nil
                }
                    False -> case jr.truth(jr.ge(jr.call(l_os_name, "indexOf_1", [jr.get_field(l_operating_systems, "SOLARIS")]), jr.JInt(0))) {
                    True -> {
                    case jr.truth(jr.call(jr.get_static("LogConfigTypes", "LOGGING"), "contains_1", [jr.get_field(jr.call_static("LogConfigTypeFactory", "getInstance_0", []), "FACTORYERROR")])) {
                        True -> {
                        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Found a Solaris OS"), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET_INSTANCE")])
                        Nil
                    }
                        False -> Nil
                    }
                    jr.set_field(this, "genericOperatingSystem", jr.call(jr.call_static("SolarisOperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", []))
                    Nil
                }
                    False -> {
                    jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("OS Not Supported: ")]), "append_1", [l_os_name]), "toString_0", [])]))
                    Nil
                }
                }
                }
                }
                let l_log = jr.call_static("LogFactory", "getInstanceF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("OperatingSystem Info: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get_field(this, "genericOperatingSystem")])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET_INSTANCE")])
                jr.call(jr.get_static("System", "out"), "println_1", [jr.call(l_log, "toString_0", [])])
                jr.call(jr.get_field(this, "logUtil"), "putL_1", [l_log])
                Nil
            }
                False -> Nil
            }
            jr.ret(jr.get_field(this, "genericOperatingSystem"))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            case jr.truth(jr.call(jr.get_static("LogConfigTypes", "LOGGING"), "contains_1", [jr.get_field(jr.call_static("LogConfigTypeFactory", "getInstance_0", []), "FACTORYERROR")])) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET_INSTANCE"), l_e])
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

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("genericOperatingSystem", jr.JNull), #("hasDetected", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getOperatingSystemInstance_0", [], False, c1_m8__getoperatingsysteminstance), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

