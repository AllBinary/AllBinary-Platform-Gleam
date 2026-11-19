// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SensorFeature

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.super_init("Feature", this, [l_name])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SensorFeature",
        "org.allbinary.game.configuration.feature.SensorFeature",
        "Feature",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["String"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

