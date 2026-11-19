// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.scroller
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RandomPatrolAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "changedDirection", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__updaterandomdistance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_inherited(this, "RandomPatrolAI", "currentDistance", jr.call(jr.call_static("MyRandomFactory", "getInstance_0", []), "getAbsoluteNextInt_1", [jr.call(jr.get_inherited(this, "RandomPatrolAI", "maxDistance"), "intValue_0", [])]))
    jr.JNull
}

fn c1_m4__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.call_super("BasePatrolAI", this, "update_0", [])
        jr.call_super("BasePatrolAI", this, "processKeyAI_1", [jr.get_inherited(this, "RandomPatrolAI", "keyDirection")])
        case jr.truth(jr.get_field(this, "changedDirection")) {
            True -> {
            jr.call_super("BasePatrolAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM1")])
            jr.call(this, "updateRandomDistance_0", [])
            jr.set_field(this, "changedDirection", jr.JBool(False))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m5__nextdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("BasePatrolAI", this, "nextDirection_0", [])
        jr.set_field(this, "changedDirection", jr.JBool(True))
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("BasePatrolAI", this, [l_hashtable, l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.call(this, "updateRandomDistance_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RandomPatrolAI",
        "org.allbinary.game.ag.ai.scroller.RandomPatrolAI",
        "BasePatrolAI",
        [],
        False,
        [#("changedDirection", jr.JBool(False))],
        [],
        [
            jr.Method("updateRandomDistance_0", [], False, c1_m3__updaterandomdistance), 
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m4__processai), 
            jr.Method("nextDirection_0", [], False, c1_m5__nextdirection), 
            jr.Method("jinit_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

