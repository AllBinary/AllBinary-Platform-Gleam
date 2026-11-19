// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageCacheBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "imageFactory", jr.call_static("ImageFactory", "getInstance_0", []))
    jr.set_field(this, "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.set_field(this, "SIZE", jr.as_i(jr.JInt(128)))
    jr.set_field(this, "widths", jr.new_array("I", 1, [jr.get_field(this, "SIZE")]))
    jr.set_field(this, "heights", jr.new_array("I", 1, [jr.get_field(this, "SIZE")]))
    jr.set_field(this, "listOfList", jr.new_array("L", 1, [jr.get_field(this, "SIZE")]))
    jr.set_field(this, "availableListOfList", jr.new_array("L", 1, [jr.get_field(this, "SIZE")]))
    jr.set_field(this, "volume", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "nextIndex", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m12__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource_id] = jargs
    jr.method(fn() {
            let l_image_can_be_null = jr.call(jr.get_field(this, "hashtable"), "get_1", [l_resource_id])
            case jr.truth(jr.eq(l_image_can_be_null, jr.JNull)) {
            True -> {
            jr.ret(jr.get_static("NullImage", "NULL_IMAGE"))
            Nil
        }
            False -> Nil
        }
            jr.ret(l_image_can_be_null)
        jr.JNull
    })
}

fn c1_m13__releaseall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "listOfList")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "availableListOfList"), jr.get(l_index)), "clear_0", [])
            jr.call(jr.aget(jr.get_field(this, "availableListOfList"), jr.get(l_index)), "addAllList_1", [jr.aget(jr.get_field(this, "listOfList"), jr.get(l_index))])
            Nil
        })
            Nil
        }
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("ImageCache: ")]), "append_1", [jr.call(this, "toString_0", [])]), "toString_0", []), this, jr.JStr("releaseAll")])
    jr.JNull
}

fn c1_m14__getindexwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.method(fn() {
            let l_found_index = jr.cell(jr.as_i(jr.JInt(-1)))
            let l_size = jr.as_i(jr.alen(jr.get_field(this, "widths")))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(case jr.truth(jr.eq(jr.aget(jr.get_field(this, "widths"), jr.get(l_index)), l_width)) { True -> jr.eq(jr.aget(jr.get_field(this, "heights"), jr.get(l_index)), l_height) False -> jr.JBool(False) }) {
                True -> {
                jr.set(l_found_index, jr.as_i(jr.get(l_index)))
                jr.ret(jr.as_i(jr.get(l_found_index)))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.as_i(jr.get(l_found_index)))
        jr.JNull
    })
}

fn c1_m15__getfromavailable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_found_index, l_width, l_height] = jargs
    let l_found_index = jr.as_i(l_found_index)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.method(fn() {
            case jr.truth(jr.ne(l_found_index, jr.JInt(-1))) {
            True -> {
            case jr.truth(jr.gt(jr.call(jr.aget(jr.get_field(this, "availableListOfList"), l_found_index), "size_0", []), jr.JInt(0))) {
                True -> {
                let l_list = jr.aget(jr.get_field(this, "availableListOfList"), l_found_index)
                jr.ret(jr.call(l_list, "removeAt_1", [jr.sub(jr.call(l_list, "size_0", []), jr.JInt(1))]))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.get_static("NullImage", "NULL_IMAGE"))
        jr.JNull
    })
}

fn c1_m16__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_caller, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m17__getwithkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m18__createimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_caller, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.call(jr.get_field(this, "imageFactory"), "createImage_3", [l_caller, l_width, l_height])
}

fn c1_m19__createimagefrominputstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key, l_input_stream] = jargs
    jr.call(jr.get_field(this, "imageFactory"), "createImageFromInputStream_2", [l_key, l_input_stream])
}

fn c1_m20__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.get_field(this, "nextIndex"), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_width = jr.as_i(jr.aget(jr.get_field(this, "widths"), jr.get(l_index)))
            let l_height = jr.as_i(jr.aget(jr.get_field(this, "heights"), jr.get(l_index)))
            let l_total = jr.as_i(jr.call(jr.aget(jr.get_field(this, "listOfList"), jr.get(l_index)), "size_0", []))
            let l_total_available = jr.as_i(jr.call(jr.aget(jr.get_field(this, "availableListOfList"), jr.get(l_index)), "size_0", []))
            jr.call(l_string_buffer, "append_1", [jr.JStr(" w: ")])
            jr.call(l_string_buffer, "appendint_1", [l_width])
            jr.call(l_string_buffer, "append_1", [jr.JStr(" h: ")])
            jr.call(l_string_buffer, "appendint_1", [l_height])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "TOTAL_LABEL")])
            jr.call(l_string_buffer, "appendint_1", [l_total])
            jr.call(l_string_buffer, "append_1", [jr.JStr(" available: ")])
            jr.call(l_string_buffer, "appendint_1", [l_total_available])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m21__gethashtablep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hashtable")
}

fn c1_m22__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    jr.JNull
}

fn c1_m23__initprogress(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "listOfList")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "listOfList"), jr.get(l_index), jr.new("BasicArrayListD", []))
            Nil
        })
            Nil
        }
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.alen(jr.get_field(this, "availableListOfList")), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "availableListOfList"), jr.get(l_index), jr.new("BasicArrayListD", []))
            Nil
        })
            Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageCacheBase",
        "org.allbinary.image.ImageCacheBase",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("imageFactory", jr.JNull), #("hashtable", jr.JNull), #("SIZE", jr.JInt(0)), #("widths", jr.JNull), #("heights", jr.JNull), #("listOfList", jr.JNull), #("availableListOfList", jr.JNull), #("volume", jr.JInt(0)), #("nextIndex", jr.JInt(0))],
        [],
        [
            jr.Method("getImage_1", ["Object"], False, c1_m12__getimage), 
            jr.Method("releaseAll_0", [], False, c1_m13__releaseall), 
            jr.Method("getIndexWH_2", ["int", "int"], False, c1_m14__getindexwh), 
            jr.Method("getFromAvailable_3", ["int", "int", "int"], False, c1_m15__getfromavailable), 
            jr.Method("get_3", ["String", "int", "int"], False, c1_m16__get), 
            jr.Method("getWithKey_1", ["Object"], False, c1_m17__getwithkey), 
            jr.Method("createImage_3", ["String", "int", "int"], False, c1_m18__createimage), 
            jr.Method("createImageFromInputStream_2", ["Object", "InputStream"], False, c1_m19__createimagefrominputstream), 
            jr.Method("toString_0", [], False, c1_m20__tostring), 
            jr.Method("getHashtableP_0", [], False, c1_m21__gethashtablep), 
            jr.Method("init_1", ["Image"], False, c1_m22__init), 
            jr.Method("initProgress_0", [], False, c1_m23__initprogress), 
            jr.Method("jinit_0", [], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

