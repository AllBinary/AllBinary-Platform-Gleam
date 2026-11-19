// Generated Code Do Not Modify
// package org.allbinary.game.layer.resources
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OnDemandLoader

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_cache, l_level, l_loading_string] = jargs
    let l_level = jr.as_i(l_level)
    jr.method(fn() {
            let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
            case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "LOAD_ALL")])) {
            True -> {
            case jr.truth(jr.call(jr.get_field(this, "resourceAnimationInterfaceFactoryInterfaceFactory"), "isInitialized_0", [])) {
                True -> {
                jr.ret(jr.JNull)
                Nil
            }
                False -> Nil
            }
            jr.call(this, "initAll_2", [l_image_cache, l_loading_string])
            Nil
        }
            False -> case jr.truth(jr.ne(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_ALL"), "getLevel_0", []))) {
            True -> {
            let l_layer_placement_interface_basic_array_list_factory_interface = jr.call(jr.get_field(this, "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory"), "getInstance_1", [l_level])
            jr.call(this, "initLevel_4", [l_layer_placement_interface_basic_array_list_factory_interface, l_image_cache, l_level, l_loading_string])
            Nil
        }
            False -> Nil
        }
        }
        jr.JNull
    })
}

fn c1_m6__initall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_cache, l_loading_string] = jargs
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_portion = jr.as_i(jr.JInt(120))
        let l_on_demand_resources = jr.cell(jr.JNull)
        {
            let l_on_demand_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "onDemandResourcesFactory"), "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_on_demand_index) }, fn(jv) { jr.set(l_on_demand_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_on_demand_resources, jr.call(jr.get_field(this, "onDemandResourcesFactory"), "remove_1", [jr.get(l_on_demand_index)]))
            case jr.truth(jr.ne(jr.get(l_on_demand_resources), jr.get_static("OnDemandResources", "NULL_ON_DEMAND_RESOURCES"))) {
                True -> {
                jr.set(l_index, jr.as_i(jr.call(jr.get(l_on_demand_resources), "initAt_5", [l_image_cache, jr.get_field(this, "resourceAnimationInterfaceFactoryInterfaceFactory"), l_portion, l_loading_string, jr.get(l_index)])))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m7__initlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_placement_interface_basic_array_list_factory_interface, l_image_cache, l_level, l_loading_string] = jargs
    let l_level = jr.as_i(l_level)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        let l_portion = jr.as_i(jr.JInt(120))
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_on_demand_array = jr.call(l_layer_placement_interface_basic_array_list_factory_interface, "getOnDemandResources_0", [])
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(l_common_strings, "START")]), "appendint_1", [jr.alen(l_on_demand_array)]), "toString_0", []), this, jr.JStr("initLevel")])
        let l_on_demand_resources = jr.cell(jr.JNull)
        {
            let l_on_demand_index = jr.cell(jr.as_i(jr.alen(l_on_demand_array)))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_on_demand_index) }, fn(jv) { jr.set(l_on_demand_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.set(l_on_demand_resources, jr.call(jr.get_field(this, "onDemandResourcesFactory"), "remove_1", [jr.aget(l_on_demand_array, jr.get(l_on_demand_index))]))
            case jr.truth(jr.ne(jr.get(l_on_demand_resources), jr.get_static("OnDemandResources", "NULL_ON_DEMAND_RESOURCES"))) {
                True -> {
                jr.set(l_index, jr.as_i(jr.call(jr.get(l_on_demand_resources), "initAt_5", [l_image_cache, jr.get_field(this, "resourceAnimationInterfaceFactoryInterfaceFactory"), l_portion, l_loading_string, jr.get(l_index)])))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_on_demand_resources_factory, l_game_layer_placement_interface_basic_array_list_factory_interface_factory, l_resource_animation_interface_factory_interface_factory] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "onDemandResourcesFactory", l_on_demand_resources_factory)
        jr.set_field(this, "gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory", l_game_layer_placement_interface_basic_array_list_factory_interface_factory)
        jr.set_field(this, "resourceAnimationInterfaceFactoryInterfaceFactory", l_resource_animation_interface_factory_interface_factory)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OnDemandLoader",
        "org.allbinary.game.layer.resources.OnDemandLoader",
        "Object",
        [],
        False,
        [#("onDemandResourcesFactory", jr.JNull), #("gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory", jr.JNull), #("resourceAnimationInterfaceFactoryInterfaceFactory", jr.JNull)],
        [],
        [
            jr.Method("init_3", ["ImageCache", "int", "String"], False, c1_m5__init), 
            jr.Method("initAll_2", ["ImageCache", "String"], False, c1_m6__initall), 
            jr.Method("initLevel_4", ["LayerPlacementInterfaceBasicArrayListFactoryInterface", "ImageCache", "int", "String"], False, c1_m7__initlevel), 
            jr.Method("jinit_3", ["OnDemandResourcesFactory", "GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory", "BaseResourceAnimationInterfaceFactoryInterfaceFactory"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

