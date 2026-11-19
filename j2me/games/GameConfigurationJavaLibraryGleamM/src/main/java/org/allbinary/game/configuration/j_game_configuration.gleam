// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameConfiguration

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "name", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "defaultValue", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(0)]))
    jr.set_field(this, "value", jr.get_static("GameConfiguration", "MIN_VALUE"))
    jr.set_field(this, "minValue", jr.get_field(this, "defaultValue"))
    jr.set_field(this, "maxValue", jr.get_field(this, "defaultValue"))
    jr.set_field(this, "modifiable", jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "TRUE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameConfiguration", "MIN_VALUE", jr.new("Integer", [jr.get_static("Integer", "MIN_VALUE")]))
    jr.JNull
}

fn c1_m9__setvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
        case jr.truth(jr.ne(jr.get_field(this, "value"), l_value)) {
            True -> {
            let l_old_value = jr.get_field(this, "value")
            jr.set_field(this, "value", l_value)
            jr.call(jr.call_static("GameFeatureEventHandler", "getInstance_0", []), "fireEvent_1", [jr.new("GameFeatureEvent", [this, jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "name")]), "append_1", [jr.JStr(" value: from: ")]), "appendint_1", [jr.to_i(jr.call(l_old_value, "intValue_0", []))]), "append_1", [jr.JStr(" to ")]), "appendint_1", [jr.to_i(jr.call(jr.get_field(this, "value"), "intValue_0", []))]), "toString_0", [])])])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m10__getvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "value")
}

fn c1_m11__setmaxvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_value] = jargs
        jr.set_field(this, "maxValue", l_max_value)
    jr.JNull
}

fn c1_m12__getmaxvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "maxValue")
}

fn c1_m13__setminvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_min_value] = jargs
        jr.set_field(this, "minValue", l_min_value)
    jr.JNull
}

fn c1_m14__getminvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "minValue")
}

fn c1_m15__setname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.set_field(this, "name", l_name)
    jr.JNull
}

fn c1_m16__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m17__setdefaultvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_default_value] = jargs
        jr.set_field(this, "defaultValue", l_default_value)
    jr.JNull
}

fn c1_m18__getdefaultvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "defaultValue")
}

fn c1_m19__setdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setValue_1", [jr.call(this, "getDefaultValue_0", [])])
    jr.JNull
}

fn c1_m20__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Name: ")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "name")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Min: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(this, "getMinValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Max: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(this, "getMaxValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Value: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(this, "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Default: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(this, "getDefaultValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Modifiable: ")])
        jr.call(l_string_buffer, "appendboolean_1", [jr.call(jr.call(this, "isModifiable_0", []), "booleanValue_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m21__setmodifiable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_modifiable] = jargs
        jr.set_field(this, "modifiable", l_modifiable)
    jr.JNull
}

fn c1_m22__ismodifiable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "modifiable")
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_default_value, l_min_value, l_max_value] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setName_1", [l_name])
        jr.call(this, "setDefaultValue_1", [l_default_value])
        jr.set_field(this, "value", jr.call(this, "getDefaultValue_0", []))
        jr.call(this, "setMinValue_1", [l_min_value])
        jr.call(this, "setMaxValue_1", [l_max_value])
        jr.call(jr.call(jr.call_static("GameConfigurationSingleton", "getInstance_0", []), "getHashtable_0", []), "put_2", [jr.call(this, "getName_0", []), this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameConfiguration",
        "org.allbinary.game.configuration.GameConfiguration",
        "Object",
        [],
        False,
        [#("name", jr.JNull), #("defaultValue", jr.JNull), #("value", jr.JNull), #("minValue", jr.JNull), #("maxValue", jr.JNull), #("modifiable", jr.JNull)],
        [#("MIN_VALUE", jr.JNull)],
        [
            jr.Method("setValue_1", ["Integer"], False, c1_m9__setvalue), 
            jr.Method("getValue_0", [], False, c1_m10__getvalue), 
            jr.Method("setMaxValue_1", ["Integer"], False, c1_m11__setmaxvalue), 
            jr.Method("getMaxValue_0", [], False, c1_m12__getmaxvalue), 
            jr.Method("setMinValue_1", ["Integer"], False, c1_m13__setminvalue), 
            jr.Method("getMinValue_0", [], False, c1_m14__getminvalue), 
            jr.Method("setName_1", ["String"], False, c1_m15__setname), 
            jr.Method("getName_0", [], False, c1_m16__getname), 
            jr.Method("setDefaultValue_1", ["Integer"], False, c1_m17__setdefaultvalue), 
            jr.Method("getDefaultValue_0", [], False, c1_m18__getdefaultvalue), 
            jr.Method("setDefault_0", [], False, c1_m19__setdefault), 
            jr.Method("toString_0", [], False, c1_m20__tostring), 
            jr.Method("setModifiable_1", ["Boolean"], False, c1_m21__setmodifiable), 
            jr.Method("isModifiable_0", [], False, c1_m22__ismodifiable), 
            jr.Method("jinit_4", ["String", "Integer", "Integer", "Integer"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

