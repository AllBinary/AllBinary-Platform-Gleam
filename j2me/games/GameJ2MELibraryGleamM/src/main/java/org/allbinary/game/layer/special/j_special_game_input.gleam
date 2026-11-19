// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialGameInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__up(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m2__down(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m3__right(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__left(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__strafeleft(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m6__straferight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__fire(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m8__special1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m9__special2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m10__special3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m11__special4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m12__special5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_game_key_event] = jargs
    jr.JNull
}

fn c1_m13__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m14__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialGameInput",
        "org.allbinary.game.layer.special.SpecialGameInput",
        "Object",
        ["SpecialGameInputInterface"],
        False,
        [],
        [],
        [
            jr.Method("up_0", [], False, c1_m1__up), 
            jr.Method("down_0", [], False, c1_m2__down), 
            jr.Method("right_0", [], False, c1_m3__right), 
            jr.Method("left_0", [], False, c1_m4__left), 
            jr.Method("strafeLeft_0", [], False, c1_m5__strafeleft), 
            jr.Method("strafeRight_0", [], False, c1_m6__straferight), 
            jr.Method("fire_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m7__fire), 
            jr.Method("special1_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m8__special1), 
            jr.Method("special2_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m9__special2), 
            jr.Method("special3_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m10__special3), 
            jr.Method("special4_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m11__special4), 
            jr.Method("special5_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c1_m12__special5), 
            jr.Method("paint_1", ["Graphics"], False, c1_m13__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m14__paintthreed), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

