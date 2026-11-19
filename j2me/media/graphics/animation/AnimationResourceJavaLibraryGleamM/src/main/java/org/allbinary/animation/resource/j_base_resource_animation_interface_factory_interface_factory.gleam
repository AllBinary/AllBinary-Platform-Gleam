// Generated Code Do Not Modify
// package org.allbinary.animation.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseResourceAnimationInterfaceFactoryInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m9__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m10__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Available List of Animations: ")]), "append_1", [jr.call(jr.get_field(this, "hashtable"), "toString_0", [])]), "toString_0", []), this, jr.get_field(l_common_strings, "INIT")])
        jr.call(this, "setInitialized_1", [jr.JBool(True)])
    jr.JNull
}

fn c1_m11__initimagecache(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_cache, l_level] = jargs
    let l_level = jr.as_i(l_level)
    jr.JNull
}

fn c1_m12__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_animation_interface_factory_interface] = jargs
        case jr.truth(jr.call(jr.get_field(this, "hashtable"), "containsKey_1", [l_resource])) {
            True -> {
            jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Resource Already Created: ")]), "append_1", [l_resource]), "toString_0", [])]))
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "hashtable"), "put_2", [l_resource, l_animation_interface_factory_interface])
    jr.JNull
}

fn c1_m13__getbasicanimationinterfacefactoryinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.method(fn() {
            let l_basic_animation_interface_factory_interface_can_be_null = jr.call(jr.get_field(this, "hashtable"), "get_1", [l_resource])
            case jr.truth(jr.eq(l_basic_animation_interface_factory_interface_can_be_null, jr.JNull)) {
            True -> {
            jr.ret(jr.get_static("NullAnimationFactory", "NULL_NOT_FOR_USE_ANIMATION_FACTORY"))
            Nil
        }
            False -> Nil
        }
            jr.ret(l_basic_animation_interface_factory_interface_can_be_null)
        jr.JNull
    })
}

fn c1_m14__getrectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.method(fn() {
            let l_rectangle_can_be_null = jr.call(jr.get_field(this, "rectangleHashtable"), "get_1", [l_resource])
            case jr.truth(jr.eq(l_rectangle_can_be_null, jr.JNull)) {
            True -> {
            jr.ret(jr.get_static("RectangleFactory", "SINGLETON"))
            Nil
        }
            False -> Nil
        }
            jr.ret(l_rectangle_can_be_null)
        jr.JNull
    })
}

fn c1_m15__addrectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_rectangle] = jargs
        jr.call(jr.get_field(this, "rectangleHashtable"), "put_2", [l_resource, l_rectangle])
    jr.JNull
}

fn c1_m16__getrectanglearrayofarrays(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.method(fn() {
            let l_value_can_be_null = jr.call(jr.get_field(this, "rectangleArrayOfArraysHashtable"), "get_1", [l_resource])
            case jr.truth(jr.ne(l_value_can_be_null, jr.JNull)) {
            True -> {
            let l_rectangle_array_of_arrays = l_value_can_be_null
            jr.ret(l_rectangle_array_of_arrays)
            Nil
        }
            False -> {
            jr.ret(jr.get_static("RectangleFactory", "ARRAY_OF_ARRAYS"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m17__addrectanglearrayofarrays(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_rectangle_array_of_arrays] = jargs
        jr.call(jr.get_field(this, "rectangleArrayOfArraysHashtable"), "put_2", [l_resource, l_rectangle_array_of_arrays])
    jr.JNull
}

fn c1_m18__isfeature(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m19__isloadinglevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
    jr.method(fn() {
            let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
            case jr.truth(jr.eq(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_ALL"), "getLevel_0", []))) {
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

fn c1_m20__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call(jr.call_inherited(this, "BaseResourceAnimationInterfaceFactoryInterfaceFactory", "getClass_0", []), "getName_0", [])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SEMICOLON")]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")]), "append_1", [jr.get_field(this, "name")]), "toString_0", [])
}

fn c1_m21__gethashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hashtable")
}

fn c1_m22__getrectanglehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "rectangleHashtable")
}

fn c1_m23__getrectanglearrayofarrayshashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "rectangleArrayOfArraysHashtable")
}

fn c1_m24__setinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialized] = jargs
        jr.set_field(this, "initialized", l_initialized)
    jr.JNull
}

fn c1_m25__isinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "initialized")
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name, l_hashtable, l_rectangle_hashtable, l_rectangle_array_hashtable] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "hashtable", l_hashtable)
        jr.set_field(this, "rectangleHashtable", l_rectangle_hashtable)
        jr.set_field(this, "rectangleArrayOfArraysHashtable", l_rectangle_array_hashtable)
        jr.set_field(this, "name", l_name)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseResourceAnimationInterfaceFactoryInterfaceFactory",
        "org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory",
        "Object",
        ["FeatureResourceAnimationInterfaceFactoryInterface"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("hashtable", jr.JNull), #("rectangleHashtable", jr.JNull), #("rectangleArrayOfArraysHashtable", jr.JNull), #("name", jr.JNull), #("initialized", jr.JBool(False))],
        [],
        [
            jr.Method("getName_0", [], False, c1_m9__getname), 
            jr.Method("init_1", ["int"], False, c1_m10__init), 
            jr.Method("initImageCache_2", ["ImageCache", "int"], False, c1_m11__initimagecache), 
            jr.Method("add_2", ["String", "BasicAnimationInterfaceFactoryInterface"], False, c1_m12__add), 
            jr.Method("getBasicAnimationInterfaceFactoryInstance_1", ["String"], False, c1_m13__getbasicanimationinterfacefactoryinstance), 
            jr.Method("getRectangle_1", ["String"], False, c1_m14__getrectangle), 
            jr.Method("addRectangle_2", ["String", "Rectangle"], False, c1_m15__addrectangle), 
            jr.Method("getRectangleArrayOfArrays_1", ["String"], False, c1_m16__getrectanglearrayofarrays), 
            jr.Method("addRectangleArrayOfArrays_2", ["String", "RectangleArrArr"], False, c1_m17__addrectanglearrayofarrays), 
            jr.Method("isFeature_0", [], False, c1_m18__isfeature), 
            jr.Method("isLoadingLevel_1", ["int"], False, c1_m19__isloadinglevel), 
            jr.Method("toString_0", [], False, c1_m20__tostring), 
            jr.Method("getHashtable_0", [], False, c1_m21__gethashtable), 
            jr.Method("getRectangleHashtable_0", [], False, c1_m22__getrectanglehashtable), 
            jr.Method("getRectangleArrayOfArraysHashtable_0", [], False, c1_m23__getrectanglearrayofarrayshashtable), 
            jr.Method("setInitialized_1", ["boolean"], False, c1_m24__setinitialized), 
            jr.Method("isInitialized_0", [], False, c1_m25__isinitialized), 
            jr.Method("jinit_4", ["String", "ABHashtable", "ABHashtable", "ABHashtable"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

