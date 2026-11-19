// Generated Code Do Not Modify
// package org.allbinary.emulator
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class InitEmulatorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "initEmulator", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("InitEmulatorFactory", "instance", jr.new("InitEmulatorFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("InitEmulatorFactory", "instance")
}

fn c1_m3__setinitemulator(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_init_emulator] = jargs
        jr.set_field(this, "initEmulator", l_init_emulator)
    jr.JNull
}

fn c1_m4__isinitemulator(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "initEmulator")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "InitEmulatorFactory",
        "org.allbinary.emulator.InitEmulatorFactory",
        "Object",
        [],
        False,
        [#("initEmulator", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setInitEmulator_1", ["boolean"], False, c1_m3__setinitemulator), 
            jr.Method("isInitEmulator_0", [], False, c1_m4__isinitemulator), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

