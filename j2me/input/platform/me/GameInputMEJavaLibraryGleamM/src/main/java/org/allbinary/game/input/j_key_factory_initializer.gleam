// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KeyFactoryInitializer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "KeyFactoryInitializer", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "KeyFactoryInitializer", "commonStrings"), "INIT")])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Init", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "KeyFactoryInitializer",
        "org.allbinary.game.input.KeyFactoryInitializer",
        "Init",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m2__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

