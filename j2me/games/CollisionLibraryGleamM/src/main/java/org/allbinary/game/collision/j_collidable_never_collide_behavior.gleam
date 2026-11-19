// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableNeverCollideBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__iscollision(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_allbinary_collidable_layer] = jargs
    jr.JBool(False)
}

fn c1_m3__collide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_allbinary_collidable_layer] = jargs
    jr.JNull
}

fn c1_m4__collideinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
    jr.JNull
}

fn c1_m5__iscollisioninterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
    jr.JBool(False)
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_collidable] = jargs
        jr.super_init("CollidableBaseBehavior", this, [l_is_collidable])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableNeverCollideBehavior",
        "org.allbinary.game.collision.CollidableNeverCollideBehavior",
        "CollidableBaseBehavior",
        [],
        False,
        [],
        [],
        [
            jr.Method("isCollision_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m2__iscollision), 
            jr.Method("collide_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m3__collide), 
            jr.Method("collideInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m4__collideinterface), 
            jr.Method("isCollisionInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m5__iscollisioninterface), 
            jr.Method("jinit_1", ["boolean"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

