// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryMediaManagerShutdown

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryMediaManagerShutdown", "instance", jr.new("AllBinaryMediaManagerShutdown", []))
    jr.JNull
}

fn c1_m2__shutdown(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sounds_factory_interface] = jargs
        let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(l_log_util, "putF_3", [jr.get_field(l_common_strings, "START"), jr.get_static("AllBinaryMediaManagerShutdown", "instance"), jr.JStr("shutdown")])
        jr.call_static("AllBinaryMediaManager", "shutdown_1", [l_sounds_factory_interface])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryMediaManagerShutdown",
        "org.allbinary.media.audio.AllBinaryMediaManagerShutdown",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("shutdown_1", ["SoundsFactoryInterface"], True, c1_m2__shutdown), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

