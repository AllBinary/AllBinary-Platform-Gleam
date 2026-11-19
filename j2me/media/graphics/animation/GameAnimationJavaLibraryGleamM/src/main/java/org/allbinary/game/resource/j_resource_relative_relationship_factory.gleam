// Generated Code Do Not Modify
// package org.allbinary.game.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ResourceRelativeRelationshipFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicArrayListUtil", jr.call_static("BasicArrayListUtil", "getInstance_0", []))
    jr.set_field(this, "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        jr.call(this, "setInitialized_1", [jr.JBool(True)])
    jr.JNull
}

fn c1_m5__getresourcerelativerelationshiplist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.method(fn() {
            let l_list_can_be_null = jr.call(jr.get_field(this, "hashtable"), "get_1", [l_resource])
            case jr.truth(jr.eq(l_list_can_be_null, jr.JNull)) {
            True -> {
            jr.ret(jr.call(jr.get_field(this, "basicArrayListUtil"), "getImmutableInstance_0", []))
            Nil
        }
            False -> Nil
        }
            jr.ret(l_list_can_be_null)
        jr.JNull
    })
}

fn c1_m6__addresourcerelativerelationship(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_hard_point] = jargs
        let l_list = jr.cell(jr.call(this, "getResourceRelativeRelationshipList_1", [l_resource]))
        case jr.truth(jr.eq(jr.get(l_list), jr.call(jr.get_field(this, "basicArrayListUtil"), "getImmutableInstance_0", []))) {
            True -> {
            jr.set(l_list, jr.new("BasicArrayListD", []))
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get(l_list), "add_1", [l_hard_point])
        jr.call(jr.get_field(this, "hashtable"), "put_2", [l_resource, jr.get(l_list)])
    jr.JNull
}

fn c1_m7__isloadinglevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
    jr.JBool(False)
}

fn c1_m8__isfeature(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m9__setinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialized] = jargs
        jr.set_field(this, "initialized", l_initialized)
    jr.JNull
}

fn c1_m10__isinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "initialized")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ResourceRelativeRelationshipFactory",
        "org.allbinary.game.resource.ResourceRelativeRelationshipFactory",
        "Object",
        ["ResourceRelativeRelationshipFactoryInterface"],
        False,
        [#("basicArrayListUtil", jr.JNull), #("hashtable", jr.JNull), #("initialized", jr.JBool(False))],
        [],
        [
            jr.Method("init_1", ["int"], False, c1_m4__init), 
            jr.Method("getResourceRelativeRelationshipList_1", ["String"], False, c1_m5__getresourcerelativerelationshiplist), 
            jr.Method("addResourceRelativeRelationship_2", ["String", "RelativeRelationship"], False, c1_m6__addresourcerelativerelationship), 
            jr.Method("isLoadingLevel_1", ["int"], False, c1_m7__isloadinglevel), 
            jr.Method("isFeature_0", [], False, c1_m8__isfeature), 
            jr.Method("setInitialized_1", ["boolean"], False, c1_m9__setinitialized), 
            jr.Method("isInitialized_0", [], False, c1_m10__isinitialized), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

