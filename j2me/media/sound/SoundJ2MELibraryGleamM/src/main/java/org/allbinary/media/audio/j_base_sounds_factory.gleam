// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseSoundsFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m3__getsoundinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new_array("L", 1, [jr.JInt(0)])
}

fn c1_m4__setinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialized] = jargs
        jr.set_field(this, "initialized", l_initialized)
    jr.JNull
}

fn c1_m5__isinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "initialized")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseSoundsFactory",
        "org.allbinary.media.audio.BaseSoundsFactory",
        "Object",
        ["SoundsFactoryInterface"],
        False,
        [#("initialized", jr.JBool(False))],
        [],
        [
            jr.Method("init_0", [], False, c1_m2__init), 
            jr.Method("getSoundInterfaceArray_0", [], False, c1_m3__getsoundinterfacearray), 
            jr.Method("setInitialized_1", ["boolean"], False, c1_m4__setinitialized), 
            jr.Method("isInitialized_0", [], False, c1_m5__isinitialized), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

