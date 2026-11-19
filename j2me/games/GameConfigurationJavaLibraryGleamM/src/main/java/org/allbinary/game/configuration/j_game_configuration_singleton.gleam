// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameConfigurationSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameConfigurationSingleton", "SINGLETON", jr.new("GameConfigurationSingleton", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameConfigurationSingleton", "SINGLETON")
}

fn c1_m6__getinstancebyname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.call(jr.get_field(this, "hashtable"), "get_1", [l_name])
}

fn c1_m7__getoptionsbasicarraylist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_m8__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_configuration] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_game_configuration])
    jr.JNull
}

fn c1_m9__gethashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hashtable")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "list", jr.new("BasicArrayListD", []))
        jr.set_field(this, "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameConfigurationSingleton",
        "org.allbinary.game.configuration.GameConfigurationSingleton",
        "Object",
        [],
        False,
        [#("list", jr.JNull), #("hashtable", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("getInstanceByName_1", ["String"], False, c1_m6__getinstancebyname), 
            jr.Method("getOptionsBasicArrayList_0", [], False, c1_m7__getoptionsbasicarraylist), 
            jr.Method("add_1", ["GameConfiguration"], False, c1_m8__add), 
            jr.Method("getHashtable_0", [], False, c1_m9__gethashtable), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

