// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableBaseBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "layerCollisionUtil", jr.call_static("LayerCollisionUtil", "getInstance_0", []))
    jr.set_field(this, "collidable", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_inherited(this, "CollidableBaseBehavior", "getClass_0", []), "getName_0", [])
}

fn c1_m8__setcollidable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable] = jargs
        jr.set_field(this, "collidable", l_collidable)
    jr.JNull
}

fn c1_m9__iscollidable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer] = jargs
    jr.get_field(this, "collidable")
}

fn c1_m10__collide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_allbinary_collidable_layer] = jargs
        jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "COLON_SEP")]), "append_1", [jr.call(jr.call_inherited(this, "CollidableBaseBehavior", "getClass_0", []), "getName_0", [])]), "toString_0", [])]))
    jr.JNull
}

fn c1_m11__iscollision(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collision_layer] = jargs
    jr.call(jr.get_field(this, "layerCollisionUtil"), "isCollision_2", [l_owner_layer, l_collision_layer])
}

fn c1_m12__iscollisioninterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
    jr.call(jr.get_field(this, "layerCollisionUtil"), "isCollision_2", [l_owner_layer, l_collidable_interface_composite_interface])
}

fn c1_m13__collideinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_collidable_interface_composite_interface] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m14__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer, l_graphics] = jargs
    jr.JNull
}

fn c1_m15__getcollisiontypewith(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.get_field(jr.call_static("CollisionTypeFactory", "getInstance_0", []), "NONE")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "collidable", l_collidable)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableBaseBehavior",
        "org.allbinary.game.collision.CollidableBaseBehavior",
        "Object",
        ["CollidableInterface"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("layerCollisionUtil", jr.JNull), #("collidable", jr.JBool(False))],
        [],
        [
            jr.Method("update_0", [], False, c1_m6__update), 
            jr.Method("getName_0", [], False, c1_m7__getname), 
            jr.Method("setCollidable_1", ["boolean"], False, c1_m8__setcollidable), 
            jr.Method("isCollidable_1", ["CollidableCompositeLayer"], False, c1_m9__iscollidable), 
            jr.Method("collide_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m10__collide), 
            jr.Method("isCollision_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m11__iscollision), 
            jr.Method("isCollisionInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m12__iscollisioninterface), 
            jr.Method("collideInterface_2", ["CollidableCompositeLayer", "CollidableInterfaceCompositeInterface"], False, c1_m13__collideinterface), 
            jr.Method("paint_2", ["CollidableCompositeLayer", "Graphics"], False, c1_m14__paint), 
            jr.Method("getCollisionTypeWith_1", ["AllBinaryLayer"], False, c1_m15__getcollisiontypewith), 
            jr.Method("jinit_1", ["boolean"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

