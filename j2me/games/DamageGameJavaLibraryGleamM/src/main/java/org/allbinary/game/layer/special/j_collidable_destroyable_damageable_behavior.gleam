// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableDestroyableDamageableBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "damageUtil", jr.call_static("DamageUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__iscollision(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collision_layer] = jargs
    jr.method(fn() {
            case jr.truth(jr.ne(jr.aget(jr.call(l_owner_layer, "getGroupInterface_0", []), jr.JInt(0)), jr.aget(jr.call(l_collision_layer, "getGroupInterface_0", []), jr.JInt(0)))) {
            True -> {
            jr.ret(jr.call_super("CollidableBaseBehavior", this, "isCollision_2", [l_owner_layer, l_collision_layer]))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m4__collide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
        let l_owner_collidable_destroyable_damageable_layer = l_owner_layer
        let l_collidable_destroyable_damageable_layer = l_collidable_interface_composite_interface
        jr.call(l_owner_collidable_destroyable_damageable_layer, "damage_2", [jr.call(l_collidable_destroyable_damageable_layer, "getDamage_1", [jr.JInt(0)]), jr.JInt(0)])
    jr.JNull
}

fn c1_m5__iscollisioninterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.JStr("No Longer Used"), this])
    jr.JBool(False)
}

fn c1_m6__collideinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.JStr("No Longer Used"), this])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable] = jargs
        jr.super_init("CollidableBaseBehavior", this, [l_collidable])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableDestroyableDamageableBehavior",
        "org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior",
        "CollidableBaseBehavior",
        [],
        False,
        [#("damageUtil", jr.JNull)],
        [],
        [
            jr.Method("isCollision_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m3__iscollision), 
            jr.Method("collide_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m4__collide), 
            jr.Method("isCollisionInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m5__iscollisioninterface), 
            jr.Method("collideInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m6__collideinterface), 
            jr.Method("jinit_1", ["boolean"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

