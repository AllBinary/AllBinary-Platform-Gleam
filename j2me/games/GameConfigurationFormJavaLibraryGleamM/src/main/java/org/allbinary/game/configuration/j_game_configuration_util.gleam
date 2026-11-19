// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameConfigurationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "GAUGE_UPDATE", jr.JStr("Gauge Update: "))
    jr.set_field(this, "FROM", jr.JStr(" from: "))
    jr.set_field(this, "TO", jr.JStr(" to: "))
    jr.set_field(this, "COMPETITION_VALUE", jr.as_i(jr.JInt(1)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameConfigurationUtil", "instance", jr.new("GameConfigurationUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameConfigurationUtil", "instance")
}

fn c1_m5__change(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_options_form, l_gauge] = jargs
        jr.call(this, "update_1", [l_gauge])
        let l_game_configuration_singleton = jr.call_static("GameConfigurationSingleton", "getInstance_0", [])
        let l_game_configuration = jr.call(l_game_configuration_singleton, "getInstanceByName_1", [jr.call(l_gauge, "getLabel_0", [])])
        jr.call(this, "updateChallange_2", [l_game_options_form, l_game_configuration])
    jr.JNull
}

fn c1_m9__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gauge] = jargs
        let l_game_configuration_singleton = jr.call_static("GameConfigurationSingleton", "getInstance_0", [])
        let l_game_configuration = jr.call(l_game_configuration_singleton, "getInstanceByName_1", [jr.call(l_gauge, "getLabel_0", [])])
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        let l_value = jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.add(jr.call(l_gauge, "getValue_0", []), jr.call(jr.call(l_game_configuration, "getMinValue_0", []), "intValue_0", []))])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "GAUGE_UPDATE")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_game_configuration, "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "FROM")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(l_game_configuration, "getValue_0", []), "intValue_0", []))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "TO")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(l_value, "intValue_0", []))])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "UPDATE")])
        jr.call(l_game_configuration, "setValue_1", [l_value])
    jr.JNull
}

fn c1_m10__setdefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gauge] = jargs
        let l_game_configuration_singleton = jr.call_static("GameConfigurationSingleton", "getInstance_0", [])
        let l_game_configuration = jr.call(l_game_configuration_singleton, "getInstanceByName_1", [jr.call(l_gauge, "getLabel_0", [])])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Gauge Default: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_game_configuration, "getName_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(this, "TO")])
        jr.call(l_string_buffer, "appendint_1", [jr.to_i(jr.call(jr.call(l_game_configuration, "getDefaultValue_0", []), "intValue_0", []))])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.JStr("setDefault")])
        jr.call(l_gauge, "setValue_1", [jr.sub(jr.call(jr.call(l_game_configuration, "getDefaultValue_0", []), "intValue_0", []), jr.call(jr.call(l_game_configuration, "getMinValue_0", []), "intValue_0", []))])
        jr.call(l_game_configuration, "setValue_1", [jr.call(l_game_configuration, "getDefaultValue_0", [])])
    jr.JNull
}

fn c1_m11__updatechallange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_options_form, l_game_configuration] = jargs
        let l_game_configuration_singleton = jr.call_static("GameConfigurationSingleton", "getInstance_0", [])
        let l_game_configuration_central = jr.call_static("GameConfigurationCentral", "getInstance_0", [])
        case jr.truth(jr.eq(l_game_configuration, jr.get_field(l_game_configuration_central, "CHALLENGE_LEVEL"))) {
            True -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.JStr("updateChallange")])
            jr.call(jr.get_field(l_game_configuration_central, "COLLIDE_DAMAGE"), "setValue_1", [jr.call(l_game_configuration, "getValue_0", [])])
            jr.call(jr.get_field(l_game_configuration_central, "ATTACK_CHALLENGE_LEVEL"), "setValue_1", [jr.call(l_game_configuration, "getValue_0", [])])
            jr.call(jr.get_field(l_game_configuration_central, "DURABILITY_CHALLENGE_LEVEL"), "setValue_1", [jr.call(l_game_configuration, "getValue_0", [])])
            jr.call(jr.get_field(l_game_configuration_central, "SPEED_CHALLENGE_LEVEL"), "setValue_1", [jr.call(l_game_configuration, "getValue_0", [])])
            let l_size = jr.as_i(jr.call(l_game_options_form, "size_0", []))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                let l_item = jr.call(l_game_options_form, "get_1", [jr.get(l_index)])
                case jr.truth(jr.instance_of(l_item, "GameConfigurationGauge")) {
                    True -> {
                    let l_gauge = l_item
                    let l_name = jr.call(l_item, "getLabel_0", [])
                    let l_next_game_configuration = jr.call(l_game_configuration_singleton, "getInstanceByName_1", [l_name])
                    case jr.truth(jr.eq(l_next_game_configuration, jr.get_field(l_game_configuration_central, "COLLIDE_DAMAGE"))) {
                        True -> {
                        jr.call(l_gauge, "setValue_1", [jr.sub(jr.call(jr.call(jr.get_field(l_game_configuration_central, "COLLIDE_DAMAGE"), "getValue_0", []), "intValue_0", []), jr.call(jr.call(l_game_configuration, "getMinValue_0", []), "intValue_0", []))])
                        Nil
                    }
                        False -> case jr.truth(jr.eq(l_next_game_configuration, jr.get_field(l_game_configuration_central, "DURABILITY_CHALLENGE_LEVEL"))) {
                        True -> {
                        jr.call(l_gauge, "setValue_1", [jr.sub(jr.call(jr.call(jr.get_field(l_game_configuration_central, "DURABILITY_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", []), jr.call(jr.call(l_game_configuration, "getMinValue_0", []), "intValue_0", []))])
                        Nil
                    }
                        False -> case jr.truth(jr.eq(l_next_game_configuration, jr.get_field(l_game_configuration_central, "ATTACK_CHALLENGE_LEVEL"))) {
                        True -> {
                        jr.call(l_gauge, "setValue_1", [jr.sub(jr.call(jr.call(jr.get_field(l_game_configuration_central, "ATTACK_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", []), jr.call(jr.call(l_game_configuration, "getMinValue_0", []), "intValue_0", []))])
                        Nil
                    }
                        False -> case jr.truth(jr.eq(l_next_game_configuration, jr.get_field(l_game_configuration_central, "SPEED_CHALLENGE_LEVEL"))) {
                        True -> {
                        jr.call(l_gauge, "setValue_1", [jr.sub(jr.call(jr.call(jr.get_field(l_game_configuration_central, "SPEED_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", []), jr.call(jr.call(l_game_configuration, "getMinValue_0", []), "intValue_0", []))])
                        Nil
                    }
                        False -> Nil
                    }
                    }
                    }
                    }
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m13__updatecompetitionvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.JStr("updateCompetitionValue")])
        let l_game_configuration_central = jr.call_static("GameConfigurationCentral", "getInstance_0", [])
        jr.set_field(this, "COMPETITION_VALUE", jr.as_i(jr.add(jr.add(jr.add(jr.call(jr.call(jr.get_field(l_game_configuration_central, "COLLIDE_DAMAGE"), "getValue_0", []), "intValue_0", []), jr.call(jr.call(jr.get_field(l_game_configuration_central, "ATTACK_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", [])), jr.call(jr.call(jr.get_field(l_game_configuration_central, "DURABILITY_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", [])), jr.call(jr.call(jr.get_field(l_game_configuration_central, "SPEED_CHALLENGE_LEVEL"), "getValue_0", []), "intValue_0", []))))
        jr.set_field(this, "COMPETITION_VALUE", jr.as_i(jr.shr(jr.get_field(this, "COMPETITION_VALUE"), jr.JInt(2))))
    jr.JNull
}

fn c1_m14__getcompetitionvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "COMPETITION_VALUE"))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameConfigurationUtil",
        "org.allbinary.game.configuration.GameConfigurationUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("GAUGE_UPDATE", jr.JNull), #("FROM", jr.JNull), #("TO", jr.JNull), #("COMPETITION_VALUE", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("change_2", ["GameOptionsForm", "GameConfigurationGauge"], False, c1_m5__change), 
            jr.Method("update_1", ["GameConfigurationGauge"], False, c1_m9__update), 
            jr.Method("setDefault_1", ["GameConfigurationGauge"], False, c1_m10__setdefault), 
            jr.Method("updateChallange_2", ["GameOptionsForm", "GameConfiguration"], False, c1_m11__updatechallange), 
            jr.Method("updateCompetitionValue_0", [], False, c1_m13__updatecompetitionvalue), 
            jr.Method("getCompetitionValue_0", [], False, c1_m14__getcompetitionvalue), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

