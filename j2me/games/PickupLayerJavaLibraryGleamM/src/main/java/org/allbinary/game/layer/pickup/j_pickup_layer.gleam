// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PickupLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "pickedUpLayerInterfaceFactoryInterface", jr.get_static("CountedPickedUpLayerInterfaceFactory", "NULL_COUNTED_PICKUP_LAYER_FACTORY"))
    jr.set_field(this, "animationInterface", jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_picked_up_layer_interface_factory_interface, l_animation_interface] = jargs
        jr.set_field(this, "pickedUpLayerInterfaceFactoryInterface", l_picked_up_layer_interface_factory_interface)
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.call(this, "setDestroyed_1", [jr.JBool(False)])
    jr.JNull
}

fn c1_m6__initxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.call_inherited(this, "PickupLayer", "setPosition_3", [l_x, l_y, l_z])
    jr.JNull
}

fn c1_m7__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_view_position = jr.call_inherited(this, "PickupLayer", "getViewPosition_0", [])
        let l_view_x = jr.as_i(jr.call(l_view_position, "getX_0", []))
        let l_view_y = jr.as_i(jr.call(l_view_position, "getY_0", []))
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, l_view_x, l_view_y])
    jr.JNull
}

fn c1_m8__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_view_position = jr.call_inherited(this, "PickupLayer", "getViewPosition_0", [])
        let l_view_x = jr.as_i(jr.call(l_view_position, "getX_0", []))
        let l_view_y = jr.as_i(jr.call(l_view_position, "getY_0", []))
        jr.call(jr.get_field(this, "animationInterface"), "paintThreedXYZ_4", [l_graphics, l_view_x, l_view_y, jr.JInt(3)])
    jr.JNull
}

fn c1_m9__getpickeduplayerinterfacefactoryinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "pickedUpLayerInterfaceFactoryInterface")
}

fn c1_m10__setpickedup(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setDestroyed_1", [jr.JBool(True)])
    jr.JNull
}

fn c1_m11__isdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "destroyed")
}

fn c1_m12__setdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_destroyed] = jargs
        jr.set_field(this, "destroyed", l_destroyed)
        case jr.truth(jr.call(this, "isDestroyed_0", [])) {
            True -> {
            jr.call(jr.call_static("DestroyedLayerProcessor", "getInstance_0", []), "add_1", [this])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m13__damage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage, l_damage_type] = jargs
    let l_damage = jr.as_i(l_damage)
    let l_damage_type = jr.as_i(l_damage_type)
    jr.JNull
}

fn c1_m14__getdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage_type] = jargs
    let l_damage_type = jr.as_i(l_damage_type)
    jr.as_i(jr.JInt(0))
}

fn c1_m15__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
        let l_open_g_l_surface_changed_interface = jr.get_field(this, "animationInterface")
        jr.call(l_open_g_l_surface_changed_interface, "set_1", [l_gl])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_remote_info, l_total, l_picked_up_layer_interface_factory_interface, l_animation_interface, l_rectangle, l_view_position] = jargs
    let l_total = jr.as_i(l_total)
        jr.super_init("MultiPlayerGameLayer", this, [l_remote_info, jr.get_field(jr.call_static("BasicGroupFactory", "getInstance_0", []), "NONE_ARRAY"), l_name, l_rectangle, l_view_position])
        c1_jfields(this)
        jr.call_inherited(this, "PickupLayer", "setCollidableInferface_1", [jr.call(jr.call_static("CollidableAlwaysPickupNeverCollideBehaviorFactory", "getInstance_0", []), "createBehavior_0", [])])
        jr.call_inherited(this, "PickupLayer", "setLayerWidth_1", [jr.JInt(10)])
        jr.call_inherited(this, "PickupLayer", "setLayerHeight_1", [jr.JInt(10)])
        jr.call(this, "init_2", [l_picked_up_layer_interface_factory_interface, l_animation_interface])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PickupLayer",
        "org.allbinary.game.layer.pickup.PickupLayer",
        "MultiPlayerGameLayer",
        ["PickedUpLayerInterface", "PickupableInterface"],
        False,
        [#("pickedUpLayerInterfaceFactoryInterface", jr.JNull), #("destroyed", jr.JBool(False)), #("animationInterface", jr.JNull)],
        [],
        [
            jr.Method("init_2", ["PickedUpLayerInterfaceFactoryInterface", "Animation"], False, c1_m5__init), 
            jr.Method("initXYZ_3", ["int", "int", "int"], False, c1_m6__initxyz), 
            jr.Method("paint_1", ["Graphics"], False, c1_m7__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m8__paintthreed), 
            jr.Method("getPickedUpLayerInterfaceFactoryInterface_0", [], False, c1_m9__getpickeduplayerinterfacefactoryinterface), 
            jr.Method("setPickedUp_0", [], False, c1_m10__setpickedup), 
            jr.Method("isDestroyed_0", [], False, c1_m11__isdestroyed), 
            jr.Method("setDestroyed_1", ["boolean"], False, c1_m12__setdestroyed), 
            jr.Method("damage_2", ["int", "int"], False, c1_m13__damage), 
            jr.Method("getDamage_1", ["int"], False, c1_m14__getdamage), 
            jr.Method("set_1", ["GL"], False, c1_m15__set), 
            jr.Method("jinit_7", ["String", "RemoteInfo", "int", "PickedUpLayerInterfaceFactoryInterface", "Animation", "Rectangle", "ViewPositionBase"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

