// Generated Code Do Not Modify
// package org.allbinary.logic.system.hardware
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SystemHardwareFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "hardwareInterface", jr.call_static("NoHardware", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SystemHardwareFactory", "instance", jr.new("SystemHardwareFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SystemHardwareFactory", "instance")
}

fn c1_m7__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_operating_system_interface] = jargs
        jr.try_catch(fn() {
            case jr.truth(jr.eq(jr.get_field(this, "hardwareInterface"), jr.call_static("NoHardware", "getInstance_0", []))) {
                True -> {
                jr.set_field(this, "hardwareInterface", jr.call(jr.call_static("HardwareFactory", "getInstance_0", []), "getInstance_1", [l_operating_system_interface]))
                Nil
            }
                False -> Nil
            }
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Found Hardware"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR"), l_e])
            Nil
        } })], fn() { Nil })
    jr.get_field(this, "hardwareInterface")
}

fn c1_m8__static__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_system_hardware_factory = jr.call_static("SystemHardwareFactory", "getInstance_0", [])
        let l_os_buffer = jr.new("StringMaker", [])
        jr.call(l_os_buffer, "append_1", [jr.JStr("Hardware Info: \n")])
        case jr.truth(jr.ne(jr.get_field(l_system_hardware_factory, "hardwareInterface"), jr.JNull)) {
            True -> {
            jr.call(l_os_buffer, "append_1", [jr.call(jr.get_field(l_system_hardware_factory, "hardwareInterface"), "toString_0", [])])
            Nil
        }
            False -> {
            jr.call(l_os_buffer, "append_1", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")])
            Nil
        }
        }
    jr.call(l_os_buffer, "toString_0", [])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SystemHardwareFactory",
        "org.allbinary.logic.system.hardware.SystemHardwareFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("hardwareInterface", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getInstance_1", ["GenericOperatingSystem"], False, c1_m7__getinstance), 
            jr.Method("static_toString_0", [], True, c1_m8__static__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

