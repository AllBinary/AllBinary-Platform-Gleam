// Generated Code Do Not Modify
// package org.allbinary.game.configuration.persistance
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PersistanceStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SAVING", jr.JStr("Saving: "))
    jr.set_field(this, "NUMBER_OF_RECORDS", jr.JStr("Number of records: "))
    jr.set_field(this, "LOADING_ID", jr.JStr("Loading data with id: "))
    jr.set_field(this, "LOAD_ALL", jr.JStr("loadAll"))
    jr.set_field(this, "DELETING_WITH_ID", jr.JStr("Deleting data with id: "))
    jr.set_field(this, "CLOSING_RECORDSTORE", jr.JStr("Closing RecordStore"))
    jr.set_field(this, "NOT_SAVING", jr.JStr("Not Saving: "))
    jr.set_field(this, "ERROR_LOADING", jr.JStr("Error Loading gameActionInput: "))
    jr.set_field(this, "ERROR_LOADING_ID", jr.JStr("Error Loading id: "))
    jr.set_field(this, "ID", jr.JStr(" id: "))
    jr.set_field(this, "GAME_ACTION_INPUT", jr.JStr(" GameActionInput: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PersistanceStrings", "instance", jr.new("PersistanceStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PersistanceStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PersistanceStrings",
        "org.allbinary.game.configuration.persistance.PersistanceStrings",
        "Object",
        [],
        False,
        [#("SAVING", jr.JNull), #("NUMBER_OF_RECORDS", jr.JNull), #("LOADING_ID", jr.JNull), #("LOAD_ALL", jr.JNull), #("DELETING_WITH_ID", jr.JNull), #("CLOSING_RECORDSTORE", jr.JNull), #("NOT_SAVING", jr.JNull), #("ERROR_LOADING", jr.JNull), #("ERROR_LOADING_ID", jr.JNull), #("ID", jr.JNull), #("GAME_ACTION_INPUT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

