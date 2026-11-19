// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameConfigurationGauge

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_configuration] = jargs
        jr.super_init("Gauge", this, [jr.call(l_game_configuration, "getName_0", []), jr.call(jr.call(l_game_configuration, "isModifiable_0", []), "booleanValue_0", []), jr.sub(jr.call(jr.call(l_game_configuration, "getMaxValue_0", []), "intValue_0", []), jr.call(jr.call(l_game_configuration, "getMinValue_0", []), "intValue_0", [])), jr.sub(jr.call(jr.call(l_game_configuration, "getValue_0", []), "intValue_0", []), jr.call(jr.call(l_game_configuration, "getMinValue_0", []), "intValue_0", []))])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameConfigurationGauge",
        "org.allbinary.game.configuration.GameConfigurationGauge",
        "Gauge",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["GameConfiguration"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

