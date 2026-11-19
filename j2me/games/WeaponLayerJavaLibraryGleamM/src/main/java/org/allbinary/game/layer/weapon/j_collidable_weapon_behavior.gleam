// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableWeaponBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CollidableWeaponBehavior", "NULL_COLLIDABLE_WEAPON_BEHAVIOR", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("CollidableWeaponBehavior", "NULL_COLLIDABLE_WEAPON_BEHAVIOR"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("CollidableWeaponBehavior", "NULL_COLLIDABLE_WEAPON_BEHAVIOR", jr.new("CollidableWeaponBehavior", [jr.JBool(False)]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("CollidableWeaponBehavior", "NULL_COLLIDABLE_WEAPON_BEHAVIOR")
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface] = jargs
        jr.call(this, "setCollided_1", [jr.JBool(False)])
        jr.call(jr.get_field(this, "collisionHelper"), "setOwnerLayerInterface_1", [l_source_layer_interface])
    jr.JNull
}

fn c1_m7__iscollision(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collision_layer] = jargs
    jr.method(fn() {
            case jr.truth(jr.call(jr.get_field(this, "collisionHelper"), "isCollidable_1", [l_collision_layer])) {
            True -> {
            case jr.truth(jr.ne(jr.aget(jr.call(l_owner_layer, "getGroupInterface_0", []), jr.JInt(0)), jr.aget(jr.call(l_collision_layer, "getGroupInterface_0", []), jr.JInt(0)))) {
                True -> {
                jr.ret(jr.call_super("CollidableDestroyableDamageableBehavior", this, "isCollision_2", [l_owner_layer, l_collision_layer]))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m8__collide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collision_layer] = jargs
        jr.call_super("CollidableDestroyableDamageableBehavior", this, "collide_2", [l_owner_layer, l_collision_layer])
        jr.set_field(this, "collided", jr.JBool(True))
    jr.JNull
}

fn c1_m9__iscollisioninterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
    jr.method(fn() {
            case jr.truth(jr.call(jr.get_field(this, "collisionHelper"), "isCollidable_1", [l_collidable_interface_composite_interface])) {
            True -> {
            let l_layer_interface = l_collidable_interface_composite_interface
            case jr.truth(jr.ne(jr.aget(jr.call(l_owner_layer, "getGroupInterface_0", []), jr.JInt(0)), jr.aget(jr.call(l_layer_interface, "getGroupInterface_0", []), jr.JInt(0)))) {
                True -> {
                case jr.truth(jr.call(jr.get_inherited(this, "CollidableWeaponBehavior", "layerCollisionUtil"), "isCollision_2", [l_owner_layer, l_layer_interface])) {
                    True -> {
                    jr.ret(jr.JBool(True))
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m10__collideinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
        let l_owner_damageable_interface = l_owner_layer
        let l_damageable_interface = l_collidable_interface_composite_interface
        jr.call(jr.get_inherited(this, "CollidableWeaponBehavior", "damageUtil"), "process_2", [l_owner_damageable_interface, l_damageable_interface])
        jr.set_field(this, "collided", jr.JBool(True))
    jr.JNull
}

fn c1_m11__getcollisiontypewith(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.get_field(jr.call_static("CollisionTypeFactory", "getInstance_0", []), "COLLISION")
}

fn c1_m12__iscollided(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "collided")
}

fn c1_m13__setcollided(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collided] = jargs
        jr.set_field(this, "collided", l_collided)
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable] = jargs
        jr.super_init("CollidableDestroyableDamageableBehavior", this, [l_collidable])
        c1_jfields(this)
        jr.call(this, "setCollided_1", [jr.JBool(False)])
        jr.call_inherited(this, "CollidableWeaponBehavior", "setCollidable_1", [jr.JBool(True)])
        jr.set_field(this, "collisionHelper", jr.call_static("CollidableHelperFactory", "getInstance_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableWeaponBehavior",
        "org.allbinary.game.layer.weapon.CollidableWeaponBehavior",
        "CollidableDestroyableDamageableBehavior",
        [],
        False,
        [#("collided", jr.JBool(False)), #("collisionHelper", jr.JNull)],
        [#("NULL_COLLIDABLE_WEAPON_BEHAVIOR", jr.JNull)],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("init_1", ["AllBinaryLayer"], False, c1_m6__init), 
            jr.Method("isCollision_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m7__iscollision), 
            jr.Method("collide_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m8__collide), 
            jr.Method("isCollisionInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m9__iscollisioninterface), 
            jr.Method("collideInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m10__collideinterface), 
            jr.Method("getCollisionTypeWith_1", ["AllBinaryLayer"], False, c1_m11__getcollisiontypewith), 
            jr.Method("isCollided_0", [], False, c1_m12__iscollided), 
            jr.Method("setCollided_1", ["boolean"], False, c1_m13__setcollided), 
            jr.Method("jinit_1", ["boolean"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

