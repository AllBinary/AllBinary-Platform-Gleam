// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NumberOnOwnGroupSequenceAIFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input] = jargs
        let l_integer_array = jr.get_field(jr.call_static("NumberInSameGroupSequence", "getInstance_0", []), "NUMBER_ON_SAME_TEAM_SEQUENCE")
        let l_list = jr.new("BasicArrayListD", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_integer_array)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_integer_can_be_null = jr.call(l_hashtable, "get_1", [jr.aget(l_integer_array, jr.get(l_index))])
            case jr.truth(jr.eq(l_integer_can_be_null, jr.JNull)) {
                True -> {
                jr.brk("")
                Nil
            }
                False -> Nil
            }
            jr.call(l_list, "add_1", [l_integer_can_be_null])
            Nil
        })
            Nil
        }
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Total AI Properties: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(l_list, "size_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" == Total AI: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.alen(l_artificial_intelligence_interface)])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" + 1")])
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(l_common_strings, "GET_INSTANCE")])
        case jr.truth(jr.gt(jr.sub(jr.alen(l_artificial_intelligence_interface), jr.JInt(1)), jr.call(l_list, "size_0", []))) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Not enough AI properties.")]))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.sub(jr.alen(l_artificial_intelligence_interface), jr.JInt(1)), jr.call(l_list, "size_0", []))) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Too Many AI properties.")]))
            Nil
        }
            False -> Nil
        }
        let l_number_on_same_team = jr.new_array("L", 1, [jr.call(l_list, "size_0", [])])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_number_on_same_team)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_number_on_same_team, jr.get(l_index), jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            Nil
        })
            Nil
        }
    jr.new("NumberOnOwnGroupSequenceAI", [l_number_on_same_team, l_artificial_intelligence_interface, l_owner_layer_interface, l_game_input])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NumberOnOwnGroupSequenceAIFactory",
        "org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAIFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [],
        [
            jr.Method("getInstance_4", ["ABHashtable", "ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], False, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

