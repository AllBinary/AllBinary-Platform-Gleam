// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoCanvasBasicStartInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__processinputlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_list = jr.call_inherited(this, "DemoCanvasBasicStartInputProcessor", "getGameKeyEventList_0", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_game_key_event = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_game_key_event, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.call(jr.get_inherited(this, "DemoCanvasBasicStartInputProcessor", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Start GameKey: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get(l_game_key_event)])]), "toString_0", []), this, jr.get_field(jr.call_static("GameInputStrings", "getInstance_0", []), "PROCESS_INPUT")])
            Nil
        })
            Nil
        }
        jr.call(jr.call(jr.call_inherited(this, "DemoCanvasBasicStartInputProcessor", "getCanvas_0", []), "getCustomCommandListener_0", []), "commandAction_2", [jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "START_COMMAND"), jr.get_static("NullCanvas", "NULL_CANVAS")])
    jr.as_i(l_size)
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event_list, l_game_canvas] = jargs
        jr.super_init("BasicMenuInputProcessor", this, [l_game_key_event_list, jr.JInt(-1), l_game_canvas])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoCanvasBasicStartInputProcessor",
        "org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor",
        "BasicMenuInputProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("processInputList_0", [], False, c1_m2__processinputlist), 
            jr.Method("jinit_2", ["BasicArrayList", "RunnableCanvas"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

