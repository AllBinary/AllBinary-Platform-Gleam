// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageCache

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageCache", "NULL_IMAGE_CACHE", jr.new("ImageCache", []))
    jr.JNull
}

fn c1_m5__addlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_renderer] = jargs
    jr.JNull
}

fn c1_m6__getindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    jr.method(fn() {
            let l_gd_resources = jr.call_static("GDResources", "getInstance_0", [])
            let l_resource_string_array = jr.get_field(l_gd_resources, "resourceStringArray")
            let l_size = jr.as_i(jr.alen(l_resource_string_array))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.eq(jr.aget(l_resource_string_array, jr.get(l_index)), l_key)) {
                True -> {
                jr.ret(jr.as_i(jr.get(l_index)))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.call(jr.get_inherited(this, "ImageCache", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("unable to find key: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_key])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            jr.throw(jr.new("RuntimeException", []))
        jr.JNull
    })
}

fn c1_m7__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_caller, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_found_index = jr.cell(jr.as_i(jr.call_inherited(this, "ImageCache", "getIndexWH_2", [l_width, l_height])))
        let l_image = jr.cell(jr.call_inherited(this, "ImageCache", "getFromAvailable_3", [jr.get(l_found_index), l_width, l_height]))
        case jr.truth(jr.eq(jr.get(l_image), jr.get_static("NullImage", "NULL_IMAGE"))) {
            True -> {
            jr.compound(fn() { jr.get_inherited(this, "ImageCache", "volume") }, fn(jv) { jr.add(jv, jr.mul(l_width, l_height)) }, fn(jv) { jr.set_inherited(this, "ImageCache", "volume", jv) })
            case jr.truth(jr.gt(jr.get_inherited(this, "ImageCache", "volume"), jr.JInt(32000))) {
                True -> {
                jr.call(jr.get_field(this, "tsUtil"), "gc_0", [])
                jr.set_inherited(this, "ImageCache", "volume", jr.JInt(0))
                Nil
            }
                False -> Nil
            }
            jr.set(l_image, jr.call_inherited(this, "ImageCache", "createImage_3", [l_caller, l_width, l_height]))
            let l_widths = jr.get_inherited(this, "ImageCache", "widths")
            case jr.truth(jr.gt(jr.get_inherited(this, "ImageCache", "nextIndex"), jr.sub(jr.alen(l_widths), jr.JInt(1)))) {
                True -> {
                case jr.truth(jr.eq(jr.get(l_found_index), jr.JInt(-1))) {
                    True -> {
                    jr.set(l_found_index, jr.as_i(jr.get_inherited(this, "ImageCache", "nextIndex")))
                    jr.aset(l_widths, jr.get_inherited(this, "ImageCache", "nextIndex"), jr.as_i(l_width))
                    jr.aset(jr.get_inherited(this, "ImageCache", "heights"), jr.get_inherited(this, "ImageCache", "nextIndex"), l_height)
                    jr.incr(fn() { jr.get_inherited(this, "ImageCache", "nextIndex") }, fn(jv) { jr.set_inherited(this, "ImageCache", "nextIndex", jv) }, 1, True)
                    Nil
                }
                    False -> Nil
                }
                jr.call(jr.aget(jr.get_inherited(this, "ImageCache", "listOfList"), jr.get(l_found_index)), "add_1", [jr.get(l_image)])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.get(l_image)
}

fn c1_m8__getwithkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
        let l_image = jr.cell(jr.call_inherited(this, "ImageCache", "getImage_1", [l_key]))
        case jr.truth(jr.eq(jr.get(l_image), jr.get_static("NullImage", "NULL_IMAGE"))) {
            True -> {
            let l_resource_util = jr.call_static("ResourceUtil", "getInstance_0", [])
            let l_resource_input_stream = jr.call(l_resource_util, "getResourceAsStream_1", [l_key])
            case jr.truth(jr.eq(l_resource_input_stream, jr.JNull)) {
                True -> {
                jr.throw(jr.new("RuntimeException", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Image resource is not available for key: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_key])]), "toString_0", [])]))
                Nil
            }
                False -> Nil
            }
            jr.try_catch(fn() {
                jr.set(l_image, jr.call_inherited(this, "ImageCache", "createImageFromInputStream_2", [l_key, l_resource_input_stream]))
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.call(jr.get_inherited(this, "ImageCache", "logUtil"), "put_4", [jr.JStr("Exception: Trying Again After GC"), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET"), l_e])
                jr.call(jr.get_inherited(this, "ImageCache", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("InputStream: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_resource_input_stream])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET")])
                jr.call(jr.get_field(this, "tsUtil"), "gc_0", [])
                jr.call(jr.get_field(this, "tsUtil"), "gc_0", [])
                jr.call(jr.get_inherited(this, "ImageCache", "logUtil"), "putF_3", [jr.call_static("Memory", "getInfo_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "GET")])
                jr.call_static("Thread", "sleep_1", [jr.JInt(100)])
                jr.set(l_image, jr.call_inherited(this, "ImageCache", "createImageFromInputStream_2", [l_key, l_resource_input_stream]))
                Nil
            } })], fn() { Nil })
            case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
                True -> {
                Nil
            }
                False -> {
                jr.call(l_resource_input_stream, "close_0", [])
                Nil
            }
            }
            jr.call(jr.get_inherited(this, "ImageCache", "hashtable"), "put_2", [l_key, jr.get(l_image)])
            Nil
        }
            False -> Nil
        }
    jr.get(l_image)
}

fn c1_m9__loadimageforanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__progressended(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__runtask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m12__islazy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("ImageCacheBase", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageCache",
        "org.allbinary.image.ImageCache",
        "ImageCacheBase",
        [],
        False,
        [#("commonStrings", jr.JNull), #("tsUtil", jr.JNull)],
        [#("NULL_IMAGE_CACHE", jr.JNull)],
        [
            jr.Method("addListener_1", ["Object"], False, c1_m5__addlistener), 
            jr.Method("getIndex_1", ["Object"], False, c1_m6__getindex), 
            jr.Method("get_3", ["String", "int", "int"], False, c1_m7__get), 
            jr.Method("getWithKey_1", ["Object"], False, c1_m8__getwithkey), 
            jr.Method("loadImageForAnimation_0", [], False, c1_m9__loadimageforanimation), 
            jr.Method("progressEnded_0", [], False, c1_m10__progressended), 
            jr.Method("runTask_0", [], False, c1_m11__runtask), 
            jr.Method("isLazy_0", [], False, c1_m12__islazy), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

