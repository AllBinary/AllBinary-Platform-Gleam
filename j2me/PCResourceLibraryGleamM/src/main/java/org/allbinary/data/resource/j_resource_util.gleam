// Generated Code Do Not Modify
// package org.allbinary.data.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ResourceUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "path", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "ext", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ResourceUtil", "instance", jr.new("ResourceUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ResourceUtil", "instance")
}

fn c1_m7__setloadingpaths(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_path, l_ext] = jargs
        jr.set_field(this, "path", l_path)
        jr.set_field(this, "ext", l_ext)
    jr.JNull
}

fn c1_m8__setclassloader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_class_loader] = jargs
    jr.JNull
}

fn c1_m9__getresourceasstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_m10__getresourceasstreamatstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_start_index] = jargs
    let l_start_index = jr.as_i(l_start_index)
    jr.method(fn() {
            let l_input_stream = jr.new("FileInputStream", [jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "path")]), "append_1", [l_resource]), "append_1", [jr.get_field(this, "ext")]), "toString_0", [])])
            case jr.truth(jr.ne(l_input_stream, jr.JNull)) {
            True -> {
            let l_byte_array = jr.new_array("B", 1, [jr.call(l_input_stream, "available_0", [])])
            jr.call(jr.call_static("StreamUtil", "getInstance_0", []), "getByteArray_3", [l_input_stream, jr.new("ByteArrayOutputStream", []), l_byte_array])
            jr.ret(jr.new("ByteArrayInputStream", [l_byte_array]))
            Nil
        }
            False -> Nil
        }
            jr.ret(l_input_stream)
        jr.JNull
    })
}

fn c1_m11__addresource(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource, l_value] = jargs
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("logUtil", jr.JNull), #("path", jr.JNull), #("ext", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setLoadingPaths_2", ["String", "String"], False, c1_m7__setloadingpaths), 
            jr.Method("setClassLoader_1", ["ClassLoader"], False, c1_m8__setclassloader), 
            jr.Method("getResourceAsStream_1", ["String"], False, c1_m9__getresourceasstream), 
            jr.Method("getResourceAsStreamAtStart_2", ["String", "int"], False, c1_m10__getresourceasstreamatstart), 
            jr.Method("addResource_2", ["String", "Integer"], False, c1_m11__addresource), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

