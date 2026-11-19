// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameConfigurationTextInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "label", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "text", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameConfigurationTextInput", "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.set_static("GameConfigurationTextInput", "SIMULATOR_IP", jr.new("GameConfigurationTextInput", [jr.JStr("IP: "), jr.JStr("192.168.1.3")]))
    jr.set_static("GameConfigurationTextInput", "SIMULATOR_PORT", jr.new("GameConfigurationTextInput", [jr.JStr("Port: "), jr.JStr("8010")]))
    jr.JNull
}

fn c1_m7__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text_field] = jargs
        let l_any_type = jr.call(l_text_field, "getLabel_0", [])
        let l_game_configuration_text_input = jr.call(jr.get_static("GameConfigurationTextInput", "hashtable"), "get_1", [l_any_type])
        jr.call(l_game_configuration_text_input, "setText_1", [jr.call(l_text_field, "getString_0", [])])
    jr.JNull
}

fn c1_m8__settext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text] = jargs
        jr.set_field(this, "text", l_text)
    jr.JNull
}

fn c1_m9__gettext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "text")
}

fn c1_m10__setlabel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label] = jargs
        jr.set_field(this, "label", l_label)
    jr.JNull
}

fn c1_m11__getlabel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "label")
}

fn c1_m12__gethashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameConfigurationTextInput", "hashtable")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label, l_text] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setText_1", [l_text])
        jr.call(this, "setLabel_1", [l_label])
        jr.call(jr.get_static("GameConfigurationTextInput", "hashtable"), "put_2", [jr.call(this, "getLabel_0", []), this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameConfigurationTextInput",
        "org.allbinary.game.configuration.GameConfigurationTextInput",
        "Object",
        [],
        False,
        [#("label", jr.JNull), #("text", jr.JNull)],
        [#("hashtable", jr.JNull), #("SIMULATOR_IP", jr.JNull), #("SIMULATOR_PORT", jr.JNull)],
        [
            jr.Method("update_1", ["TextField"], True, c1_m7__update), 
            jr.Method("setText_1", ["String"], False, c1_m8__settext), 
            jr.Method("getText_0", [], False, c1_m9__gettext), 
            jr.Method("setLabel_1", ["String"], False, c1_m10__setlabel), 
            jr.Method("getLabel_0", [], False, c1_m11__getlabel), 
            jr.Method("getHashtable_0", [], True, c1_m12__gethashtable), 
            jr.Method("jinit_2", ["String", "String"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

