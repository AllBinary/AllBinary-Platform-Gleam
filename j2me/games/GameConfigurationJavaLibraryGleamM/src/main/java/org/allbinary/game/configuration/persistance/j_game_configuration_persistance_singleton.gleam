// Generated Code Do Not Modify
// package org.allbinary.game.configuration.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameConfigurationPersistanceSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameConfigurationPersistanceSingleton", "GAME_PERSISTANCE", jr.new("GameConfigurationPersistanceSingleton", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameConfigurationPersistanceSingleton", "GAME_PERSISTANCE")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("KeyValuePersistance", this, [jr.get_field(jr.call_static("GamePersistanceStrings", "getInstance_0", []), "SAVED_GAME_CONFIGURATION_RECORD_ID")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameConfigurationPersistanceSingleton",
        "org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton",
        "KeyValuePersistance",
        [],
        False,
        [],
        [#("GAME_PERSISTANCE", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

