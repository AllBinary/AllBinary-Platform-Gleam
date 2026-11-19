// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialGameInputInterfaceProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_destroyable_damageable_layer] = jargs
    jr.super_init("GameInputProcessor", this, [])
    c1_jfields(this)
        jr.set_field(this, "specialGameInputInterface", l_collidable_destroyable_damageable_layer)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialGameInputInterfaceProcessor",
        "org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor",
        "GameInputProcessor",
        [],
        False,
        [#("specialGameInputInterface", jr.JNull)],
        [],
        [
            jr.Method("jinit_1", ["SpecialGameInputInterface"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

