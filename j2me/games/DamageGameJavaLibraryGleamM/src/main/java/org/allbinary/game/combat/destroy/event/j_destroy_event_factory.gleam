// Generated Code Do Not Modify
// package org.allbinary.game.combat.destroy.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DestroyEventFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("DestroyedEvent", [jr.get_field(this, "combatGameCanvas")])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_combat_game_canvas] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "combatGameCanvas", l_combat_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DestroyEventFactory",
        "org.allbinary.game.combat.destroy.event.DestroyEventFactory",
        "Object",
        ["AllBinaryEventObjectFactoryInterface"],
        False,
        [#("combatGameCanvas", jr.JNull)],
        [],
        [
            jr.Method("getInstance_0", [], False, c1_m3__getinstance), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

