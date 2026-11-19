// Generated Code Do Not Modify
// package org.allbinary.game.collision.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryCollisionManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryCollisionManager", "allBinaryCollisionManager", jr.new("AllBinaryCollisionManager", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AllBinaryCollisionManager", "allBinaryCollisionManager")
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_collidable_interface_composite_interface, l_start_index] = jargs
    let l_start_index = jr.as_i(l_start_index)
        let l_size = jr.as_i(jr.call(l_layer_manager, "getSize_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.add(l_start_index, jr.JInt(1))))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_collidable_interface_composite_interface2 = jr.call(l_layer_manager, "getLayerAt_1", [jr.get(l_index)])
            jr.call(this, "collide_3", [l_layer_manager, l_collidable_interface_composite_interface, l_collidable_interface_composite_interface2])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m5__collide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager, l_collidable_interface_composite_interface, l_collidable_interface_composite_interface2] = jargs
        let l_collidable_base2 = jr.call(l_collidable_interface_composite_interface2, "getCollidableInferface_0", [])
        let l_collidable_base = jr.call(l_collidable_interface_composite_interface, "getCollidableInferface_0", [])
        case jr.truth(jr.call(l_collidable_base2, "isCollidable_1", [l_collidable_interface_composite_interface])) {
            True -> {
            case jr.truth(jr.call(l_collidable_base, "isCollisionInterface_2", [l_collidable_interface_composite_interface, l_collidable_interface_composite_interface2])) {
                True -> {
                jr.call(l_collidable_base, "collideInterface_2", [l_collidable_interface_composite_interface, l_collidable_interface_composite_interface2])
                jr.call(l_collidable_base2, "collideInterface_2", [l_collidable_interface_composite_interface, l_collidable_interface_composite_interface])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryCollisionManager",
        "org.allbinary.game.collision.layer.AllBinaryCollisionManager",
        "Object",
        [],
        False,
        [],
        [#("allBinaryCollisionManager", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("process_3", ["LayerManager", "CollidableInterfaceCompositeInterface", "int"], False, c1_m4__process), 
            jr.Method("collide_3", ["LayerManager", "CollidableInterfaceCompositeInterface", "CollidableInterfaceCompositeInterface"], False, c1_m5__collide), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

