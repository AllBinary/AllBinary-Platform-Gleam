// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameConfigurationCentral

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "gameControlFidelity", jr.as_i(jr.JInt(36)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameConfigurationCentral", "SINGLETON", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("GameConfigurationCentral", "SINGLETON"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("GameConfigurationCentral", "SINGLETON", jr.new("GameConfigurationCentral", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("GameConfigurationCentral", "SINGLETON")
}

fn c1_m21__load(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.try_catch(fn() {
            let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
            let l_key_value_persistance = jr.call_static("GameConfigurationPersistanceSingleton", "getInstance_0", [])
            jr.call(l_key_value_persistance, "clear_0", [])
            jr.call(l_key_value_persistance, "loadAll_1", [l_abe_client_information])
            let l_list = jr.call(l_key_value_persistance, "getIds_0", [])
            case jr.truth(jr.gt(jr.call(l_list, "size_0", []), jr.JInt(0))) {
                True -> {
                let l_hashtable = jr.call(l_key_value_persistance, "get_1", [jr.JInt(0)])
                let l_any_type = jr.call(jr.get_field(this, "SCALE"), "getName_0", [])
                let l_value = jr.call(l_hashtable, "get_1", [l_any_type])
                jr.call(jr.get_field(this, "SCALE"), "setValue_1", [jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.call(jr.call_static("Integer", "valueOf_1", [l_value]), "intValue_0", [])])])
                Nil
            }
                False -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("No Game Configuration To Load"), this, jr.get_field(l_common_strings, "LOAD")])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "LOAD"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m22__setgamecontrolfidelity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_control_fidelity] = jargs
    let l_game_control_fidelity = jr.as_i(l_game_control_fidelity)
        jr.set_field(this, "gameControlFidelity", jr.as_i(l_game_control_fidelity))
    jr.JNull
}

fn c1_m23__getgamecontrolfidelity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "gameControlFidelity"))
}

fn c1_m24__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        let l_common_strings = jr.call_static("CommonSeps", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "SCALE"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "SCALE"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "ORIENTATION"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "ORIENTATION"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "SENSOR_UPDATE_RATE"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "SENSOR_UPDATE_RATE"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "VIBRATION"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "VIBRATION"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "CHALLENGE_LEVEL"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "COLLIDE_DAMAGE"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "COLLIDE_DAMAGE"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "DURABILITY_CHALLENGE_LEVEL"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "DURABILITY_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "SPEED_CHALLENGE_LEVEL"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "SPEED_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "ATTACK_CHALLENGE_LEVEL"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "ATTACK_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "CONTROL_LEVEL"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "CONTROL_LEVEL"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "SPEED"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "SPEED"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "MAX_GAME_OBJECTS"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "MAX_GAME_OBJECTS"), "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "COMMA_SEP")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "MAX_LAYERS"), "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_strings, "EQUALS")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(jr.get_field(this, "MAX_LAYERS"), "getValue_0", []), "intValue_0", []))])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit20(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        jr.set_field(this, "SCALE", jr.new("GameConfiguration", [jr.JStr("Scale"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(2)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(2)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(3)])]))
        jr.set_field(this, "ORIENTATION", jr.new("GameConfiguration", [jr.JStr("Orientation"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(8)])]))
        jr.set_field(this, "SENSOR_UPDATE_RATE", jr.new("GameConfiguration", [jr.JStr("Sensor Update Rate"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(3)])]))
        jr.set_field(this, "VIBRATION", jr.new("GameConfiguration", [jr.JStr("Vibration"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(3)])]))
        jr.set_field(this, "CHALLENGE_LEVEL", jr.new("GameConfiguration", [jr.JStr("Global Challenge Level"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(3)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "COLLIDE_DAMAGE", jr.new("GameConfiguration", [jr.JStr("Collide Damage Challenge Level"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(3)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "DURABILITY_CHALLENGE_LEVEL", jr.new("GameConfiguration", [jr.JStr("Enemy Durability Challenge Level"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(3)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "SPEED_CHALLENGE_LEVEL", jr.new("GameConfiguration", [jr.JStr("Enemy Speed Challenge Level"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(3)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "ATTACK_CHALLENGE_LEVEL", jr.new("GameConfiguration", [jr.JStr("Enemy Attack Challenge Level"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(3)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "CONTROL_LEVEL", jr.new("GameConfiguration", [jr.JStr("Control Fidelity"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(5)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "PLAYER_INPUT_WAIT", jr.new("GameConfiguration", [jr.JStr("Input Wait"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(5)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "SPEED", jr.new("GameConfiguration", [jr.JStr("Game Speed (Device Specific)"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(5)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "SOUND_VOLUME", jr.new("GameConfiguration", [jr.JStr("Sound Volume"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(6)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(0)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(10)])]))
        jr.set_field(this, "MAX_GAME_OBJECTS", jr.new("GameConfiguration", [jr.JStr("Max Game Objects"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(20)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(50)])]))
        jr.set_field(this, "MAX_LAYERS", jr.new("GameConfiguration", [jr.JStr("Max Layers"), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(20)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(1)]), jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.JInt(50)])]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameConfigurationCentral",
        "org.allbinary.game.configuration.GameConfigurationCentral",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("SCALE", jr.JNull), #("ORIENTATION", jr.JNull), #("SENSOR_UPDATE_RATE", jr.JNull), #("VIBRATION", jr.JNull), #("CHALLENGE_LEVEL", jr.JNull), #("COLLIDE_DAMAGE", jr.JNull), #("DURABILITY_CHALLENGE_LEVEL", jr.JNull), #("SPEED_CHALLENGE_LEVEL", jr.JNull), #("ATTACK_CHALLENGE_LEVEL", jr.JNull), #("CONTROL_LEVEL", jr.JNull), #("PLAYER_INPUT_WAIT", jr.JNull), #("SPEED", jr.JNull), #("SOUND_VOLUME", jr.JNull), #("MAX_GAME_OBJECTS", jr.JNull), #("MAX_LAYERS", jr.JNull), #("gameControlFidelity", jr.JInt(0))],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("load_1", ["AbeClientInformationInterface"], False, c1_m21__load), 
            jr.Method("setGameControlFidelity_1", ["int"], False, c1_m22__setgamecontrolfidelity), 
            jr.Method("getGameControlFidelity_0", [], False, c1_m23__getgamecontrolfidelity), 
            jr.Method("toString_0", [], False, c1_m24__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit20)],
        c1_jfields,
        c1_jclinit,
    )
}

