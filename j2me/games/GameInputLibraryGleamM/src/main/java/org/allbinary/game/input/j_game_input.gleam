// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.get_field(this, "isRemoveDuplicateKeyPresses")) { True -> jr.call(jr.get_field(this, "gameKeyEventList"), "contains_1", [l_game_key_event]) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.ne(l_game_key_event, jr.JNull)) {
            True -> {
            jr.call(jr.get_field(this, "gameKeyEventList"), "add_1", [l_game_key_event])
            Nil
        }
            False -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Danger Passed Null GameKeyEvent"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD")])
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m8__addforremoval(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.call(jr.get_field(this, "removalGameKeyEventList"), "add_1", [l_game_key_event])
    jr.JNull
}

fn c1_m9__isforremoval(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
    jr.call(jr.get_field(this, "removalGameKeyEventList"), "contains_1", [l_game_key_event])
}

fn c1_m10__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameKeyEventList"), "clear_0", [])
    jr.JNull
}

fn c1_m11__removenonaiinputgamekeyevents(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_list = jr.get_field(this, "gameKeyEventList")
        let l_game_key_event = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.call(l_list, "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_game_key_event, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            case jr.truth(jr.ne(jr.call(jr.get(l_game_key_event), "getSourceId_0", []), jr.JInt(1))) {
                True -> {
                jr.call(l_list, "removeAt_1", [jr.get(l_index)])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m12__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_remove_list = jr.get_field(this, "removalGameKeyEventList")
        let l_list = jr.get_field(this, "gameKeyEventList")
        let l_size = jr.as_i(jr.call(l_remove_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_any_type = jr.aget(jr.get_field(l_remove_list, "objectArray"), jr.get(l_index))
            {
                let l_index2 = jr.cell(jr.as_i(jr.call(l_list, "size_0", [])))
                jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
                case jr.truth(jr.eq(jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index2)), l_any_type)) {
                    True -> {
                    jr.call(l_list, "removeAt_1", [jr.get(l_index2)])
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
        jr.call(l_remove_list, "clear_0", [])
    jr.JNull
}

fn c1_m13__getremovalgamekeyeventlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "removalGameKeyEventList")
}

fn c1_m14__getgamekeyeventlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameKeyEventList")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event_list, l_removal_game_key_event_list] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "gameKeyEventList", l_game_key_event_list)
        jr.set_field(this, "removalGameKeyEventList", l_removal_game_key_event_list)
        jr.set_field(this, "isRemoveDuplicateKeyPresses", jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("InputFeatureFactory", "getInstance_0", []), "REMOVE_DUPLICATE_KEY_PRESSES")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInput",
        "org.allbinary.game.input.GameInput",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("gameKeyEventList", jr.JNull), #("removalGameKeyEventList", jr.JNull), #("isRemoveDuplicateKeyPresses", jr.JBool(False))],
        [],
        [
            jr.Method("add_1", ["GameKeyEvent"], False, c1_m7__add), 
            jr.Method("addForRemoval_1", ["GameKeyEvent"], False, c1_m8__addforremoval), 
            jr.Method("isForRemoval_1", ["GameKeyEvent"], False, c1_m9__isforremoval), 
            jr.Method("clear_0", [], False, c1_m10__clear), 
            jr.Method("removeNonAIInputGameKeyEvents_0", [], False, c1_m11__removenonaiinputgamekeyevents), 
            jr.Method("update_0", [], False, c1_m12__update), 
            jr.Method("getRemovalGameKeyEventList_0", [], False, c1_m13__getremovalgamekeyeventlist), 
            jr.Method("getGameKeyEventList_0", [], False, c1_m14__getgamekeyeventlist), 
            jr.Method("jinit_2", ["BasicArrayList", "BasicArrayList"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

