// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialGameInputProcessor

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
        jr.set_field(this, "collidableDestroyableDamageableLayer", l_collidable_destroyable_damageable_layer)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialGameInputProcessor",
        "org.allbinary.game.layer.special.SpecialGameInputProcessor",
        "GameInputProcessor",
        [],
        False,
        [#("collidableDestroyableDamageableLayer", jr.JNull)],
        [],
        [
            jr.Method("jinit_1", ["CollidableDestroyableDamageableLayer"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

