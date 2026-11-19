// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MultiKeyPressesAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "toggleTimeHelper", jr.new("TimeDelayHelper", [jr.JInt(600)]))
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
    jr.JNull
}

fn c1_m5__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_input = jr.call_inherited(this, "MultiKeyPressesAI", "getGameInput_0", [])
        let l_keys = jr.get_inherited(this, "MultiKeyPressesAI", "keys")
        let l_size = jr.as_i(jr.alen(l_keys))
        case jr.truth(jr.call_inherited(this, "MultiKeyPressesAI", "isOn_0", [])) {
            True -> {
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                let l_key = jr.as_i(jr.call(jr.aget(l_keys, jr.get(l_index)), "intValue_0", []))
                case jr.truth(jr.ne(l_key, jr.JInt(-1))) {
                    True -> {
                    jr.call(l_game_input, "add_1", [jr.call(jr.get_inherited(this, "MultiKeyPressesAI", "gameKeyEventFactory"), "getInstanceForKey_2", [this, l_key])])
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
            False -> {
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                let l_key = jr.as_i(jr.call(jr.aget(l_keys, jr.get(l_index)), "intValue_0", []))
                case jr.truth(jr.ne(l_key, jr.JInt(-1))) {
                    True -> {
                    jr.call(l_game_input, "addForRemoval_1", [jr.call(jr.get_inherited(this, "MultiKeyPressesAI", "gameKeyEventFactory"), "getInstanceForKey_2", [this, l_key])])
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
        }
    jr.JNull
}

fn c1_m6__toggle(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "toggleTimeHelper"), "isTime_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])) {
            True -> {
            jr.call_super("KeyPressesAI", this, "toggle_0", [])
            jr.call(this, "update_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m7__disable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "toggleTimeHelper"), "isTime_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])) {
            True -> {
            jr.call_super("KeyPressesAI", this, "disable_0", [])
            jr.call(this, "update_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m8__enable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "toggleTimeHelper"), "isTime_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])) {
            True -> {
            jr.call_super("KeyPressesAI", this, "enable_0", [])
            jr.call(this, "update_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("KeyPressesAI", this, [l_hashtable, l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.call(this, "update_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MultiKeyPressesAI",
        "org.allbinary.game.ag.ai.MultiKeyPressesAI",
        "KeyPressesAI",
        [],
        False,
        [#("toggleTimeHelper", jr.JNull), #("gameTickTimeDelayHelper", jr.JNull)],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m4__processai), 
            jr.Method("update_0", [], False, c1_m5__update), 
            jr.Method("toggle_0", [], False, c1_m6__toggle), 
            jr.Method("disable_0", [], False, c1_m7__disable), 
            jr.Method("enable_0", [], False, c1_m8__enable), 
            jr.Method("jinit_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

