// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableCharacterNoDamageBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__collide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
        let l_collision_type_factory = jr.call_static("CollisionTypeFactory", "getInstance_0", [])
        let l_collision_type = jr.call(jr.call(l_collidable_interface_composite_interface, "getCollidableInferface_0", []), "getCollisionTypeWith_1", [l_owner_layer])
        case jr.truth(jr.eq(l_collision_type, jr.get_field(l_collision_type_factory, "PICKUP"))) {
            True -> {
            let l_collidable_destroyable_damageable_layer = l_owner_layer
            jr.call(jr.call(l_collidable_destroyable_damageable_layer, "getPickupBehavior_0", []), "doPickupLayer_1", [l_collidable_interface_composite_interface])
            Nil
        }
            False -> {
            Nil
        }
        }
    jr.JNull
}

fn c1_m3__collideinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.get_inherited(this, "CollidableCharacterNoDamageBehavior", "commonStrings"), "NOT_IMPLEMENTED"), this])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable] = jargs
        jr.super_init("CollidableDestroyableDamageableBehavior", this, [l_collidable])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableCharacterNoDamageBehavior",
        "org.allbinary.game.layer.special.CollidableCharacterNoDamageBehavior",
        "CollidableDestroyableDamageableBehavior",
        [],
        False,
        [],
        [],
        [
            jr.Method("collide_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m2__collide), 
            jr.Method("collideInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m3__collideinterface), 
            jr.Method("jinit_1", ["boolean"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

