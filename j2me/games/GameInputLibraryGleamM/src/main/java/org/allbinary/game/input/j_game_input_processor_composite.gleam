// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInputProcessorComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NAME_LABEL", jr.JStr(" GameInputProcessorInterface: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_list = jr.call_inherited(this, "GameInputProcessorComposite", "getGameKeyEventList_0", [])
            jr.call(jr.get_field(this, "gameInputProcessorInterface"), "onInput_1", [l_list])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "GameInputProcessorComposite", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "GameInputProcessorComposite", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "GameInputProcessorComposite", "commonStrings"), "UPDATE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m6__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call_super("PlayerGameInput", this, "toString_0", [])]), "append_1", [jr.get_field(this, "NAME_LABEL")]), "append_1", [jr.get_field(this, "name")]), "toString_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_game_input_processor_interface] = jargs
        jr.super_init("PlayerGameInput", this, [jr.new("BasicArrayListD", []), jr.new("BasicArrayListD", []), jr.JInt(-1)])
        c1_jfields(this)
        jr.set_field(this, "name", l_name)
        jr.set_field(this, "gameInputProcessorInterface", l_game_input_processor_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInputProcessorComposite",
        "org.allbinary.game.input.GameInputProcessorComposite",
        "PlayerGameInput",
        [],
        False,
        [#("name", jr.JNull), #("gameInputProcessorInterface", jr.JNull), #("NAME_LABEL", jr.JNull)],
        [],
        [
            jr.Method("update_0", [], False, c1_m4__update), 
            jr.Method("toString_0", [], False, c1_m6__tostring), 
            jr.Method("jinit_2", ["String", "GameInputProcessorInterface"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

