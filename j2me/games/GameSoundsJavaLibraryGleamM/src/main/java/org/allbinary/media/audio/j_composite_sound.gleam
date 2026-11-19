// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompositeSound

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_inherited(this, "CompositeSound", "setPlayerP_1", [jr.new("PlayerComposite", [jr.call_static("AllBinaryMediaManager", "createPlayer_1", [jr.call_inherited(this, "CompositeSound", "getResource_0", [])]), jr.JInt(570)])])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
        jr.super_init("Sound", this, [l_resource])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompositeSound",
        "org.allbinary.media.audio.CompositeSound",
        "Sound",
        [],
        False,
        [],
        [],
        [
            jr.Method("init_0", [], False, c1_m2__init), 
            jr.Method("jinit_1", ["String"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

