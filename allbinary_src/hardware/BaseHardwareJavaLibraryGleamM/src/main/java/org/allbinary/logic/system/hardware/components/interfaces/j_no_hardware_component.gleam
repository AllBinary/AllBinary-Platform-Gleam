// Generated Code Do Not Modify
// package org.allbinary.logic.system.hardware.components.interfaces
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoHardwareComponent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoHardwareComponent", "instance", jr.new("NoHardwareComponent", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoHardwareComponent", "instance")
}

fn c1_m3__compareto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_component_interface] = jargs
    jr.method(fn() {
            case jr.truth(jr.eq(this, l_component_interface)) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m4__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoHardwareComponent",
        "org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent",
        "Object",
        ["HardwareComponentInterface"],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("compareTo_1", ["HardwareComponentInterface"], False, c1_m3__compareto), 
            jr.Method("toString_0", [], False, c1_m4__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

