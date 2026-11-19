// Generated Code Do Not Modify
// package org.allbinary.logic.system.hardware
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HardwareFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SINGLETON", jr.call_static("NoHardware", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HardwareFactory", "instance", jr.new("HardwareFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("HardwareFactory", "instance")
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_os] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.get_field(this, "SINGLETON"))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
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
        "HardwareFactory",
        "org.allbinary.logic.system.hardware.HardwareFactory",
        "Object",
        [],
        False,
        [#("SINGLETON", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstance_1", ["OperatingSystemInterface"], False, c1_m5__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

