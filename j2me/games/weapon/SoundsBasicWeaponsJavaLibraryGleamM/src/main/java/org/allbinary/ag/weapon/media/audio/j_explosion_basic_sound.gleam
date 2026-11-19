// Generated Code Do Not Modify
// package org.allbinary.ag.weapon.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ExplosionBasicSound

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ExplosionBasicSound", "soundInterface", jr.new("ExplosionBasicSound", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ExplosionBasicSound", "soundInterface")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("CompositeSound", this, [jr.JStr("resource:/wav/explosion.wav")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ExplosionBasicSound",
        "org.allbinary.ag.weapon.media.audio.ExplosionBasicSound",
        "CompositeSound",
        [],
        False,
        [],
        [#("soundInterface", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

