// Generated Code Do Not Modify
// package org.allbinary.data.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ResourceUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ResourceUtil", "classLoader", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.set_static("ResourceUtil", "instance", jr.new("ResourceUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ResourceUtil", "instance")
}

fn c1_m6__setloadingpaths(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path, l_ext] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "NOT_IMPLEMENTED"), this, jr.JStr("setLoadingPaths")])
    jr.JNull
}

fn c1_m7__setclassloader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_loader] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Resource Loader: ")]), "append_1", [jr.call(jr.call(l_class_loader, "getClass_0", []), "getName_0", [])]), "toString_0", []), this, jr.JStr("setClassLoader")])
        jr.set_static("ResourceUtil", "classLoader", l_class_loader)
    jr.JNull
}

fn c1_m8__getresourceasstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
        let l_input_stream = jr.cell(jr.call(this, "getResourceAsStreamAtStart_2", [l_resource, jr.JInt(2)]))
        case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
            True -> {
            jr.set(l_input_stream, jr.call(this, "getResourceAsStreamAtStart_2", [l_resource, jr.JInt(1)]))
            case jr.truth(jr.eq(jr.get(l_input_stream), jr.JNull)) {
                True -> {
                jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Unable to obtain: ")]), "append_1", [l_resource]), "toString_0", [])]))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.get(l_input_stream)
}

fn c1_m9__getresourceasstreamatstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_start_index] = jargs
    let l_start_index = jr.as_i(l_start_index)
    jr.method(fn() {
            let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
            let l_index = jr.as_i(jr.call(l_resource, "indexOf_1", [jr.get_field(l_common_seps, "COLON")]))
            let l_resource_path = jr.call(l_resource, "substring_1", [jr.add(l_index, l_start_index)])
            let l_input_stream = jr.cell(jr.call(jr.call(l_resource, "getClass_0", []), "getResourceAsStream_1", [l_resource_path]))
            case jr.truth(jr.ne(jr.get(l_input_stream), jr.JNull)) {
            True -> {
            jr.ret(jr.get(l_input_stream))
            Nil
        }
            False -> Nil
        }
            let l_class_loader = jr.get_static("ResourceUtil", "classLoader")
            jr.set(l_input_stream, jr.call(l_class_loader, "getResourceAsStream_1", [l_resource_path]))
            case jr.truth(jr.ne(jr.get(l_input_stream), jr.JNull)) {
            True -> {
            jr.ret(jr.get(l_input_stream))
            Nil
        }
            False -> Nil
        }
            jr.set(l_input_stream, jr.call(jr.call(jr.call_static("Thread", "currentThread_0", []), "getContextClassLoader_0", []), "getResourceAsStream_1", [l_resource_path]))
            case jr.truth(jr.ne(jr.get(l_input_stream), jr.JNull)) {
            True -> {
            jr.ret(jr.get(l_input_stream))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.get(l_input_stream))
        jr.JNull
    })
}

fn c1_m10__addresource(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_value] = jargs
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ResourceUtil",
        "org.allbinary.data.resource.ResourceUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("classLoader", jr.JNull), #("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("setLoadingPaths_2", ["String", "String"], False, c1_m6__setloadingpaths), 
            jr.Method("setClassLoader_1", ["ClassLoader"], False, c1_m7__setclassloader), 
            jr.Method("getResourceAsStream_1", ["String"], False, c1_m8__getresourceasstream), 
            jr.Method("getResourceAsStreamAtStart_2", ["String", "int"], False, c1_m9__getresourceasstreamatstart), 
            jr.Method("addResource_2", ["String", "Integer"], False, c1_m10__addresource), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

