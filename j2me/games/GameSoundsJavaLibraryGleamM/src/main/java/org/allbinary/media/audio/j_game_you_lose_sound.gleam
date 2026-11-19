// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameYouLoseSound

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameYouLoseSound", "soundInterface", jr.new("GameYouLoseSound", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameYouLoseSound", "soundInterface")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("CompositeSound", this, [jr.JStr("resource:/wav/youlose.wav")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameYouLoseSound",
        "org.allbinary.media.audio.GameYouLoseSound",
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

