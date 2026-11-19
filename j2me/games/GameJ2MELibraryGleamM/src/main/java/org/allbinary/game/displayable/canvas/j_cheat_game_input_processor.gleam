// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CheatGameInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "PROCESS_GAME", jr.JStr("processGame"))
    jr.set_field(this, "gameKeyFactory", jr.call_static("GameKeyFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CheatGameInputProcessor", "inputProcessor", jr.get_static("SpecialGameInputFactory", "NO_SPECIAL_GAME_INPUT"))
    jr.JNull
}

fn c1_m6__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_game_layer_manager = jr.call(jr.get_field(this, "gameCanvas"), "getLayerManager_0", [])
            let l_list = jr.call_inherited(this, "CheatGameInputProcessor", "getGameKeyEventList_0", [])
            let l_size = jr.as_i(jr.call(l_list, "size_0", []))
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                let l_any_type = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
                let l_key = jr.as_i(jr.call_static("GameKeyEventUtil", "getKey_1", [l_any_type]))
                case jr.truth(jr.eq(l_key, jr.call(jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEVEL_DOWN"), "getId_0", []))) {
                    True -> {
                    jr.call(jr.get_static("CheatGameInputProcessor", "inputProcessor"), "strafeLeft_0", [])
                    jr.brk("")
                    Nil
                }
                    False -> case jr.truth(jr.eq(l_key, jr.call(jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEVEL_UP"), "getId_0", []))) {
                    True -> {
                    jr.call(jr.get_static("CheatGameInputProcessor", "inputProcessor"), "strafeRight_0", [])
                    jr.brk("")
                    Nil
                }
                    False -> Nil
                }
                }
                case jr.truth(jr.eq(l_key, jr.call(jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEFT"), "getId_0", []))) {
                    True -> {
                    jr.call(jr.get_static("CheatGameInputProcessor", "inputProcessor"), "left_0", [])
                    jr.brk("")
                    Nil
                }
                    False -> case jr.truth(jr.eq(l_key, jr.call(jr.get_field(jr.get_field(this, "gameKeyFactory"), "RIGHT"), "getId_0", []))) {
                    True -> {
                    jr.call(jr.get_static("CheatGameInputProcessor", "inputProcessor"), "right_0", [])
                    jr.brk("")
                    Nil
                }
                    False -> case jr.truth(jr.eq(l_key, jr.call(jr.get_field(jr.get_field(this, "gameKeyFactory"), "UP"), "getId_0", []))) {
                    True -> {
                    jr.call(jr.get_static("CheatGameInputProcessor", "inputProcessor"), "up_0", [])
                    jr.brk("")
                    Nil
                }
                    False -> case jr.truth(jr.eq(l_key, jr.call(jr.get_field(jr.get_field(this, "gameKeyFactory"), "DOWN"), "getId_0", []))) {
                    True -> {
                    jr.call(jr.get_static("CheatGameInputProcessor", "inputProcessor"), "down_0", [])
                    jr.brk("")
                    Nil
                }
                    False -> case jr.truth(jr.eq(l_key, jr.call(jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM1"), "getId_0", []))) {
                    True -> {
                    jr.call(jr.get_static("CheatGameInputProcessor", "inputProcessor"), "special1_2", [l_game_layer_manager, jr.get_static("GameKeyEvent", "NONE")])
                    jr.brk("")
                    Nil
                }
                    False -> case jr.truth(jr.eq(l_key, jr.call(jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM3"), "getId_0", []))) {
                    True -> {
                    jr.call(jr.get_static("CheatGameInputProcessor", "inputProcessor"), "special2_2", [l_game_layer_manager, jr.get_static("GameKeyEvent", "NONE")])
                    jr.brk("")
                    Nil
                }
                    False -> Nil
                }
                }
                }
                }
                }
                }
                Nil
            })
                Nil
            }
            jr.call(l_list, "clear_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "CheatGameInputProcessor", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "CheatGameInputProcessor", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "CheatGameInputProcessor", "commonStrings"), "UPDATE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_canvas] = jargs
        jr.super_init("PlayerGameInput", this, [jr.new("BasicArrayListD", []), jr.new("BasicArrayListD", []), jr.JInt(-1)])
        c1_jfields(this)
        jr.set_field(this, "gameCanvas", l_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CheatGameInputProcessor",
        "org.allbinary.game.displayable.canvas.CheatGameInputProcessor",
        "PlayerGameInput",
        [],
        False,
        [#("PROCESS_GAME", jr.JNull), #("gameCanvas", jr.JNull), #("gameKeyFactory", jr.JNull)],
        [#("inputProcessor", jr.JNull)],
        [
            jr.Method("update_0", [], False, c1_m6__update), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

