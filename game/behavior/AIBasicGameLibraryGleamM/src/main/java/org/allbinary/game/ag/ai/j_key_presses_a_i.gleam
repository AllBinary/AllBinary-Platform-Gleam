// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KeyPressesAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "on", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        case jr.truth(jr.get_field(this, "on")) {
            True -> {
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(jr.get_field(this, "keys"))) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.call_super("BasicAI", this, "processKeyAI_1", [jr.call(jr.aget(jr.get_field(this, "keys"), jr.get(l_index)), "intValue_0", [])])
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

fn c1_m5__toggle(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(this, "isOn_0", [])) {
            True -> {
            jr.call(this, "setOn_1", [jr.JBool(False)])
            Nil
        }
            False -> {
            jr.call(this, "setOn_1", [jr.JBool(True)])
            Nil
        }
        }
    jr.JNull
}

fn c1_m6__disable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setOn_1", [jr.JBool(False)])
    jr.JNull
}

fn c1_m7__enable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setOn_1", [jr.JBool(True)])
    jr.JNull
}

fn c1_m8__seton(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_on] = jargs
        jr.set_field(this, "on", l_on)
    jr.JNull
}

fn c1_m9__ison(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "on")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "keys", jr.new_array("L", 1, [jr.call(l_hashtable, "size_0", [])]))
        let l_object_array = jr.call(jr.call_static("HashtableUtil", "getInstance_0", []), "getKeysAsArray_1", [l_hashtable])
        let l_size = jr.as_i(jr.alen(l_object_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "keys"), jr.get(l_index), jr.call(l_hashtable, "get_1", [jr.aget(l_object_array, jr.get(l_index))]))
            Nil
        })
            Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "KeyPressesAI",
        "org.allbinary.game.ag.ai.KeyPressesAI",
        "BasicAI",
        [],
        False,
        [#("on", jr.JBool(False)), #("keys", jr.JNull)],
        [],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m4__processai), 
            jr.Method("toggle_0", [], False, c1_m5__toggle), 
            jr.Method("disable_0", [], False, c1_m6__disable), 
            jr.Method("enable_0", [], False, c1_m7__enable), 
            jr.Method("setOn_1", ["boolean"], False, c1_m8__seton), 
            jr.Method("isOn_0", [], False, c1_m9__ison), 
            jr.Method("jinit_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

