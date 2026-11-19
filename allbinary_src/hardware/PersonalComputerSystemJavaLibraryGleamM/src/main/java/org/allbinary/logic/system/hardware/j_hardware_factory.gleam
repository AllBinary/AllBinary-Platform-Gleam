// Generated Code Do Not Modify
// package org.allbinary.logic.system.hardware
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HardwareFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HardwareFactory", "instance", jr.new("HardwareFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("HardwareFactory", "instance")
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_os] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_operating_systems = jr.call_static("OperatingSystems", "getInstance_0", [])
            case jr.truth(jr.eq(jr.call(jr.call(l_os, "getName_0", []), "compareTo_1", [jr.get_field(l_operating_systems, "LINUX")]), jr.JInt(0))) {
                True -> {
                jr.ret(jr.new("LinuxHardware", []))
                Nil
            }
                False -> case jr.truth(jr.ge(jr.call(jr.call(l_os, "getName_0", []), "indexOf_1", [jr.get_field(l_operating_systems, "WINDOWS")]), jr.JInt(0))) {
                True -> {
                jr.ret(jr.new("WindowsHardware", []))
                Nil
            }
                False -> Nil
            }
            }
            jr.throw(jr.new("Exception", [jr.concat(jr.JStr("No Hardware Imp for: "), jr.call(l_os, "getName_0", []))]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HardwareFactory",
        "org.allbinary.logic.system.hardware.HardwareFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstance_1", ["GenericOperatingSystem"], True, c1_m4__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

