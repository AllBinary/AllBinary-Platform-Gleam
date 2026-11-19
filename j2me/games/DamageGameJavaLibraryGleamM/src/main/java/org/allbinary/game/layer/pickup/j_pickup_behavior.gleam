// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PickupBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PickupBehavior", "NULL_PICKUP_BEHAVIOR", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getnullinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("PickupBehavior", "NULL_PICKUP_BEHAVIOR"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("PickupBehavior", "NULL_PICKUP_BEHAVIOR", jr.new("PickupBehavior", [jr.call_static("CollidableCompositeLayer", "getNullInstance_0", []), jr.JInt(0)]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("PickupBehavior", "NULL_PICKUP_BEHAVIOR")
}

fn c1_m7__dopickup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pickup_processor_interface] = jargs
        jr.try_catch(fn() {
            let l_health_interface_composite_interface = jr.get_field(this, "ownerLayerInterface")
            case jr.truth(jr.call(jr.call(l_health_interface_composite_interface, "getHealthInterface_0", []), "isAlive_0", [])) {
                True -> {
                jr.call(l_pickup_processor_interface, "process_1", [jr.get_field(this, "ownerLayerInterface")])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("doPickup"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m8__dopickuplayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pickup_layer_interface] = jargs
        jr.try_catch(fn() {
            let l_picked_up_layer_interface_factory_interface = jr.call(l_pickup_layer_interface, "getPickedUpLayerInterfaceFactoryInterface_0", [])
            let l_picked_up_layer_type = jr.call(l_picked_up_layer_interface_factory_interface, "getPickedUpLayerType_0", [])
            let l_picked_up_layer_type_factory = jr.call_static("PickedUpLayerTypeFactory", "getInstance_0", [])
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.eq(l_picked_up_layer_type, jr.get_field(l_picked_up_layer_type_factory, "BEAM"))) { True -> jr.JBool(True) False -> jr.eq(l_picked_up_layer_type, jr.get_field(l_picked_up_layer_type_factory, "MINE")) }) { True -> jr.JBool(True) False -> jr.eq(l_picked_up_layer_type, jr.get_field(l_picked_up_layer_type_factory, "PROJECTILE")) }) { True -> jr.JBool(True) False -> jr.eq(l_picked_up_layer_type, jr.get_field(l_picked_up_layer_type_factory, "ENHANCEMENT")) }) {
                True -> {
                jr.call(this, "add_1", [l_picked_up_layer_interface_factory_interface])
                Nil
            }
                False -> case jr.truth(jr.eq(jr.call(l_picked_up_layer_interface_factory_interface, "getPickedUpLayerType_0", []), jr.get_field(l_picked_up_layer_type_factory, "PART"))) {
                True -> {
                let l_collidable_destroyable_damageable_layer = jr.get_field(this, "ownerLayerInterface")
                jr.call(l_collidable_destroyable_damageable_layer, "addPart_1", [l_picked_up_layer_interface_factory_interface])
                Nil
            }
                False -> case jr.truth(jr.eq(l_picked_up_layer_type, jr.get_field(l_picked_up_layer_type_factory, "NONE"))) {
                True -> {
                Nil
            }
                False -> {
                let l_pickup_processor_interface = l_picked_up_layer_interface_factory_interface
                jr.call(this, "doPickup_1", [l_pickup_processor_interface])
                Nil
            }
            }
            }
            }
            jr.call(l_pickup_layer_interface, "setPickedUp_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("doPickup"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m9__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_counted_picked_up_layer_interface_factory_interface] = jargs
        let l_part_index = jr.as_i(jr.add(jr.call(l_counted_picked_up_layer_interface_factory_interface, "getId_0", []), jr.get_field(this, "countedIndex")))
        jr.call(this, "addAt_2", [l_counted_picked_up_layer_interface_factory_interface, l_part_index])
    jr.JNull
}

fn c1_m10__addat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_counted_picked_up_layer_interface_factory_interface, l_part_index] = jargs
    let l_part_index = jr.as_i(l_part_index)
        let l_collidable_destroyable_damageable_layer = jr.get_field(this, "ownerLayerInterface")
        let l_counted_layer_interface_factory = jr.aget(jr.call(l_collidable_destroyable_damageable_layer, "getPartInterfaceArray_0", []), l_part_index)
        jr.call(l_counted_layer_interface_factory, "setTotal_1", [jr.add(jr.call(l_counted_layer_interface_factory, "getTotal_0", []), jr.call(l_counted_picked_up_layer_interface_factory_interface, "getTotal_0", []))])
    jr.JNull
}

fn c1_m11__getfirstavailablecountedlayerinterfacefactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_picked_up_layer_type_array] = jargs
    jr.method(fn() {
            let l_collidable_destroyable_damageable_layer = jr.get_field(this, "ownerLayerInterface")
            let l_part_interface_array = jr.call(l_collidable_destroyable_damageable_layer, "getPartInterfaceArray_0", [])
            let l_size = jr.as_i(jr.alen(l_part_interface_array))
            let l_next_counted_layer_interface_factory = jr.cell(jr.JNull)
            let l_counted_picked_up_layer_interface_factory = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.get_field(this, "countedIndex")))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_next_counted_layer_interface_factory, jr.aget(jr.call(l_collidable_destroyable_damageable_layer, "getPartInterfaceArray_0", []), jr.get(l_index)))
            jr.set(l_counted_picked_up_layer_interface_factory, jr.call(jr.get(l_next_counted_layer_interface_factory), "getCountedPickedUpLayerInterfaceFactory_0", []))
            {
                let l_index2 = jr.cell(jr.as_i(jr.alen(l_picked_up_layer_type_array)))
                jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index2) }, fn(jv) { jr.set(l_index2, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
                case jr.truth(jr.eq(jr.call(jr.get(l_counted_picked_up_layer_interface_factory), "getPickedUpLayerType_0", []), jr.aget(l_picked_up_layer_type_array, jr.get(l_index2)))) {
                    True -> {
                    case jr.truth(jr.gt(jr.call(jr.get(l_next_counted_layer_interface_factory), "getTotal_0", []), jr.JInt(0))) {
                        True -> {
                        jr.ret(jr.get(l_next_counted_layer_interface_factory))
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.get_static("CountedLayerInterfaceFactoryPart", "NULL_COUNTED_LAYER_INTERFACE_FACTORY"))
        jr.JNull
    })
}

fn c1_m12__getcountedlayerinterfacefactoryforslot(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_slot_index] = jargs
    let l_slot_index = jr.as_i(l_slot_index)
    jr.method(fn() {
            let l_current_slot = jr.cell(jr.as_i(jr.JInt(0)))
            let l_collidable_destroyable_damageable_layer = jr.get_field(this, "ownerLayerInterface")
            let l_part_interface_array = jr.call(l_collidable_destroyable_damageable_layer, "getPartInterfaceArray_0", [])
            let l_size = jr.as_i(jr.alen(l_part_interface_array))
            let l_next_counted_layer_interface_factory = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.get_field(this, "countedIndex")))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_next_counted_layer_interface_factory, jr.aget(jr.call(l_collidable_destroyable_damageable_layer, "getPartInterfaceArray_0", []), jr.get(l_index)))
            case jr.truth(jr.gt(jr.call(jr.get(l_next_counted_layer_interface_factory), "getTotal_0", []), jr.JInt(0))) {
                True -> {
                case jr.truth(jr.eq(jr.get(l_current_slot), l_slot_index)) {
                    True -> {
                    jr.ret(jr.get(l_next_counted_layer_interface_factory))
                    Nil
                }
                    False -> {
                    jr.incr(fn() { jr.get(l_current_slot) }, fn(jv) { jr.set(l_current_slot, jv) }, 1, True)
                    Nil
                }
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.get_static("CountedLayerInterfaceFactoryPart", "NULL_COUNTED_LAYER_INTERFACE_FACTORY"))
        jr.JNull
    })
}

fn c1_m13__getcountedindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "countedIndex"))
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_owner_layer_interface, l_counted_index] = jargs
    let l_counted_index = jr.as_i(l_counted_index)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "ownerLayerInterface", l_owner_layer_interface)
        jr.set_field(this, "countedIndex", jr.as_i(l_counted_index))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PickupBehavior",
        "org.allbinary.game.layer.pickup.PickupBehavior",
        "Object",
        ["PickupBehaviorInterface"],
        False,
        [#("logUtil", jr.JNull), #("countedIndex", jr.JInt(0)), #("ownerLayerInterface", jr.JNull)],
        [#("NULL_PICKUP_BEHAVIOR", jr.JNull)],
        [
            jr.Method("getNullInstance_0", [], True, c1_m2__getnullinstance), 
            jr.Method("doPickup_1", ["PickupProcessorInterface"], False, c1_m7__dopickup), 
            jr.Method("doPickupLayer_1", ["PickedUpLayerInterface"], False, c1_m8__dopickuplayer), 
            jr.Method("add_1", ["CountedPickedUpLayerInterfaceFactoryInterface"], False, c1_m9__add), 
            jr.Method("addAt_2", ["CountedPickedUpLayerInterfaceFactoryInterface", "int"], False, c1_m10__addat), 
            jr.Method("getFirstAvailableCountedLayerInterfaceFactory_1", ["PickedUpLayerTypeArr"], False, c1_m11__getfirstavailablecountedlayerinterfacefactory), 
            jr.Method("getCountedLayerInterfaceFactoryForSlot_1", ["int"], False, c1_m12__getcountedlayerinterfacefactoryforslot), 
            jr.Method("getCountedIndex_0", [], False, c1_m13__getcountedindex), 
            jr.Method("jinit_2", ["CollidableCompositeLayer", "int"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

