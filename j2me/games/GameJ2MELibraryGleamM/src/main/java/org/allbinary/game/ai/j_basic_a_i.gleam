// Generated Code Do Not Modify
// package org.allbinary.game.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "gameKeyEventFactory", jr.call_static("GameKeyEventFactory", "getInstance_0", []))
    jr.set_field(this, "lastKey", jr.as_i(jr.JInt(-1)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicAI", "AI_VISITOR", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(2)]))
    jr.set_static("BasicAI", "ID", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(1)]))
    jr.JNull
}

fn c1_m10__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m11__processkeyai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    let l_key = jr.as_i(l_key)
        case jr.truth(jr.ne(l_key, jr.JInt(-1))) {
            True -> {
            jr.call(jr.get_field(this, "gameInput"), "add_1", [jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForKey_2", [this, l_key])])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m12__setlastkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_last_key] = jargs
    let l_last_key = jr.as_i(l_last_key)
        jr.set_field(this, "lastKey", jr.as_i(l_last_key))
    jr.JNull
}

fn c1_m13__getlastkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "lastKey"))
}

fn c1_m14__getownerlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "ownerLayerInterface")
}

fn c1_m15__getgameinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameInput")
}

fn c1_m16__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_inherited(this, "BasicAI", "getClass_0", []), "getName_0", [])
}

fn c1_m17__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "NEW_LINE")])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" LastKey: ")])
        jr.call(l_string_buffer, "append_1", [jr.call_static("CanvasUtil", "getKeyName_1", [jr.call(this, "getLastKey_0", [])])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m18__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(1))
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_game_input] = jargs
    jr.super_init("ArtificialIntelligence", this, [])
    c1_jfields(this)
        jr.set_field(this, "ownerLayerInterface", l_owner_layer_interface)
        jr.set_field(this, "gameInput", l_game_input)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicAI",
        "org.allbinary.game.ai.BasicAI",
        "ArtificialIntelligence",
        ["GameKeyEventSourceInterface"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("gameKeyEventFactory", jr.JNull), #("ownerLayerInterface", jr.JNull), #("gameInput", jr.JNull), #("lastKey", jr.JInt(0))],
        [#("AI_VISITOR", jr.JNull), #("ID", jr.JNull)],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m10__processai), 
            jr.Method("processKeyAI_1", ["int"], False, c1_m11__processkeyai), 
            jr.Method("setLastKey_1", ["int"], False, c1_m12__setlastkey), 
            jr.Method("getLastKey_0", [], False, c1_m13__getlastkey), 
            jr.Method("getOwnerLayerInterface_0", [], False, c1_m14__getownerlayerinterface), 
            jr.Method("getGameInput_0", [], False, c1_m15__getgameinput), 
            jr.Method("getName_0", [], False, c1_m16__getname), 
            jr.Method("toString_0", [], False, c1_m17__tostring), 
            jr.Method("getSourceId_0", [], False, c1_m18__getsourceid), 
            jr.Method("jinit_2", ["AllBinaryLayer", "GameInput"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

