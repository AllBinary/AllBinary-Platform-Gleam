// Generated Code Do Not Modify
// package org.allbinary.game.combat.destroy
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DestroyableSimpleBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "destroyed", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__isdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "destroyed")
}

fn c1_m5__setdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_destroyed] = jargs
        jr.set_field(this, "destroyed", l_destroyed)
        case jr.truth(jr.call(this, "isDestroyed_0", [])) {
            True -> {
            jr.call(jr.call_static("DestroyedLayerProcessor", "getInstance_0", []), "add_1", [jr.get_field(this, "ownerLayer")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer] = jargs
    jr.super_init("DestroyableBaseBehavior", this, [])
    c1_jfields(this)
        jr.set_field(this, "ownerLayer", l_owner_layer)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DestroyableSimpleBehavior",
        "org.allbinary.game.combat.destroy.DestroyableSimpleBehavior",
        "DestroyableBaseBehavior",
        [],
        False,
        [#("ownerLayer", jr.JNull), #("destroyed", jr.JBool(False))],
        [],
        [
            jr.Method("isDestroyed_0", [], False, c1_m4__isdestroyed), 
            jr.Method("setDestroyed_1", ["boolean"], False, c1_m5__setdestroyed), 
            jr.Method("jinit_1", ["CollidableCompositeLayer"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

