// Generated Code Do Not Modify
// package org.allbinary.game.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FeaturedResourceRelativeRelationshipFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicArrayListUtil", jr.call_static("BasicArrayListUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FeaturedResourceRelativeRelationshipFactory", "INSTANCE", jr.new("FeaturedResourceRelativeRelationshipFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FeaturedResourceRelativeRelationshipFactory", "INSTANCE")
}

fn c1_m5__getrelativerelationshiplist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_layer] = jargs
    jr.method(fn() {
            let l_feature_release_list = jr.call_inherited(this, "FeaturedResourceRelativeRelationshipFactory", "getList_0", [])
            let l_size = jr.as_i(jr.call(jr.call_inherited(this, "FeaturedResourceRelativeRelationshipFactory", "getList_0", []), "size_0", []))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_feature_interface = jr.aget(jr.get_field(l_feature_release_list, "objectArray"), jr.get(l_index))
            case jr.truth(jr.call(l_feature_interface, "isFeature_0", [])) {
                True -> {
                let l_list = jr.call(l_feature_interface, "getResourceRelativeRelationshipList_1", [l_resource])
                case jr.truth(jr.ne(l_list, jr.call(jr.get_field(this, "basicArrayListUtil"), "getImmutableInstance_0", []))) {
                    True -> {
                    jr.ret(jr.call(this, "duplicate_2", [l_list, l_layer]))
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
            jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Not available for current feature selection or Resource: ")]), "append_1", [l_resource]), "toString_0", [])]))
        jr.JNull
    })
}

fn c1_m6__duplicate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list, l_layer] = jargs
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        let l_new_list = jr.new("BasicArrayListD", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_relative_relationship = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            jr.call(l_new_list, "add_1", [jr.new("RelativeLayerRelationship", [l_layer, jr.call(l_point_factory, "createXY_2", [jr.call(l_relative_relationship, "getX_0", []), jr.call(l_relative_relationship, "getY_0", [])]), jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", [])])])
            Nil
        })
            Nil
        }
    l_new_list
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("FeaturedResourceFactory", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FeaturedResourceRelativeRelationshipFactory",
        "org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory",
        "FeaturedResourceFactory",
        [],
        False,
        [#("basicArrayListUtil", jr.JNull)],
        [#("INSTANCE", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getRelativeRelationshipList_2", ["String", "AllBinaryLayer"], False, c1_m5__getrelativerelationshiplist), 
            jr.Method("duplicate_2", ["BasicArrayList", "AllBinaryLayer"], False, c1_m6__duplicate), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

