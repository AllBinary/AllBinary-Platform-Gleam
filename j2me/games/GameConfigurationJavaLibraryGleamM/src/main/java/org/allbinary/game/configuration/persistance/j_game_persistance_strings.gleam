// Generated Code Do Not Modify
// package org.allbinary.game.configuration.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GamePersistanceStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SAVED_GAME_RECORD_ID", jr.JStr("_SG"))
    jr.set_field(this, "SAVED_GAME_CONFIGURATION_RECORD_ID", jr.JStr("_SGC"))
    jr.set_field(this, "DEFAULT_INPUT_MAPPING_RECORD_ID", jr.JStr("_DIM"))
    jr.set_field(this, "SAVED_INPUT_CONFIGURATION_RECORD_ID", jr.JStr("_SIC"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GamePersistanceStrings", "instance", jr.new("GamePersistanceStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GamePersistanceStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GamePersistanceStrings",
        "org.allbinary.game.configuration.persistance.GamePersistanceStrings",
        "Object",
        [],
        False,
        [#("SAVED_GAME_RECORD_ID", jr.JNull), #("SAVED_GAME_CONFIGURATION_RECORD_ID", jr.JNull), #("DEFAULT_INPUT_MAPPING_RECORD_ID", jr.JNull), #("SAVED_INPUT_CONFIGURATION_RECORD_ID", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

