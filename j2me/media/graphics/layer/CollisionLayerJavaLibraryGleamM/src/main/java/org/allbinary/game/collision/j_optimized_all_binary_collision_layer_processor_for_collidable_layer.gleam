// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__processat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager, l_layer_interface, l_start_index] = jargs
    let l_start_index = jr.as_i(l_start_index)
        let l_collidable_interface_composite_interface = l_layer_interface
        let l_collidable_base = jr.call(l_collidable_interface_composite_interface, "getCollidableInferface_0", [])
        case jr.truth(jr.call(l_collidable_base, "isCollidable_1", [l_collidable_interface_composite_interface])) {
            True -> {
            let l_layer_manager = jr.call_inherited(this, "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer", "getLayerManager_0", [])
            let l_size = jr.as_i(jr.call(l_layer_manager, "getSize_0", []))
            let l_collidable_interface_composite_interface2 = jr.cell(jr.JNull)
            let l_collidable_base2 = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(jr.add(l_start_index, jr.JInt(1))))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_collidable_interface_composite_interface2, jr.call(l_layer_manager, "getLayerAt_1", [jr.get(l_index)]))
                jr.set(l_collidable_base2, jr.call(jr.get(l_collidable_interface_composite_interface2), "getCollidableInferface_0", []))
                case jr.truth(case jr.truth(jr.call(jr.get(l_collidable_base2), "isCollidable_1", [l_collidable_interface_composite_interface])) { True -> jr.call(l_collidable_base, "isCollision_2", [l_collidable_interface_composite_interface, jr.get(l_collidable_interface_composite_interface2)]) False -> jr.JBool(False) }) {
                    True -> {
                    jr.call(l_collidable_base, "collide_2", [l_collidable_interface_composite_interface, jr.get(l_collidable_interface_composite_interface2)])
                    jr.call(jr.get(l_collidable_base2), "collide_2", [jr.get(l_collidable_interface_composite_interface2), l_collidable_interface_composite_interface])
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m3__isprocessorlayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.method(fn() {
            case jr.truth(jr.call(l_layer_interface, "implmentsCollidableInterface_0", [])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("LayerProcessor", this, [jr.new("OptimizedAllBinaryCollisionLayerManager", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer",
        "org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer",
        "LayerProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("processAt_3", ["AllBinaryLayerManager", "AllBinaryLayer", "int"], False, c1_m2__processat), 
            jr.Method("isProcessorLayer_1", ["AllBinaryLayer"], False, c1_m3__isprocessorlayer), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

