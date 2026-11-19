// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class EarlySoundsFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("EarlySoundsFactory", "instance", jr.new("EarlySoundsFactory", []))
    jr.JNull
}

fn c1_m2__getsoundinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_sound_interface_array = jr.new_array("L", 1, [jr.JInt(2)])
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        jr.aset(l_sound_interface_array, jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True), jr.call_static("SelectSound", "getInstance_0", []))
        jr.aset(l_sound_interface_array, jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True), jr.call_static("ErrorSound", "getInstance_0", []))
    l_sound_interface_array
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("EarlySoundsFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BaseSoundsFactory", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "EarlySoundsFactory",
        "org.allbinary.media.audio.EarlySoundsFactory",
        "BaseSoundsFactory",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getSoundInterfaceArray_0", [], False, c1_m2__getsoundinterfacearray), 
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

