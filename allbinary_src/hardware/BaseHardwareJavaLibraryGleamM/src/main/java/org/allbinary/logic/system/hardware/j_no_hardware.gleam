// Generated Code Do Not Modify
// package org.allbinary.logic.system.hardware
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoHardware

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoHardware", "instance", jr.new("NoHardware", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoHardware", "instance")
}

fn c1_m3__getcomponent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.call_static("NoHardwareComponent", "getInstance_0", [])
}

fn c1_m4__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JStr("No Hardware")
}

fn c1_m5__compareto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hardware_interface] = jargs
    jr.JBool(True)
}

fn c1_m6__difference(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hardware_interface] = jargs
    jr.get_field(jr.call_static("StdUtil", "getInstance_0", []), "NULL_TABLE")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoHardware",
        "org.allbinary.logic.system.hardware.NoHardware",
        "Object",
        ["HardwareInterface"],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getComponent_1", ["int"], False, c1_m3__getcomponent), 
            jr.Method("toString_0", [], False, c1_m4__tostring), 
            jr.Method("compareTo_1", ["HardwareInterface"], False, c1_m5__compareto), 
            jr.Method("difference_1", ["HardwareInterface"], False, c1_m6__difference), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

