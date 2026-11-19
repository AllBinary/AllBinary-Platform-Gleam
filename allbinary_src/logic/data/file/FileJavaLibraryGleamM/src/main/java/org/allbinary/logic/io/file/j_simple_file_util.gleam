// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SimpleFileUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "NULL_WRITER", jr.call_static("SimpleFileUtil", "nullWriter_0", []))
    jr.set_field(this, "NULL_READER", jr.call_static("SimpleFileUtil", "nullReader_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "nullUtil", jr.call_static("NullUtil", "getInstance_0", []))
    jr.set_field(this, "streamUtil", jr.call_static("StreamUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SimpleFileUtil", "instance", jr.new("SimpleFileUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SimpleFileUtil", "instance")
}

fn c1_m4__nulloutputstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullOutputStream", "NULL_OUTPUT_STREAM")
}

fn c1_m5__nullwriter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullWriter", "NULL_WRITER")
}

fn c1_m6__nullreader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullReader", "NULL_READER")
}

fn c1_m12__loadfileaslist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream, l_max, l_byte_array1] = jargs
    let l_max = jr.as_i(l_max)
    jr.call(this, "loadFileAsListReturnLine_4", [l_input_stream, l_max, l_byte_array1, jr.JInt(0)])
}

fn c1_m13__loadfileaslistreturnline(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream, l_max, l_byte_array1, l_include_return_line] = jargs
    let l_max = jr.as_i(l_max)
    let l_include_return_line = jr.as_i(l_include_return_line)
    jr.method(fn() {
            let l_string_list = jr.new("BasicArrayListD", [])
            case jr.truth(jr.eq(l_input_stream, jr.JNull)) {
            True -> {
            jr.ret(l_string_list)
            Nil
        }
            False -> Nil
        }
            let l_byte_array = jr.cell(jr.get_field(jr.get_field(this, "nullUtil"), "NULL_BYTE_ARRAY"))
            jr.try_catch(fn() {
            let l_output_stream2 = jr.new("ByteArrayOutputStream", [l_max])
            jr.set(l_byte_array, jr.call(jr.get_field(this, "streamUtil"), "getByteArray_3", [l_input_stream, l_output_stream2, l_byte_array1]))
            jr.call(jr.get_field(this, "streamUtil"), "close_1", [l_input_stream])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "streamUtil"), "close_1", [l_input_stream])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD"), l_e])
            Nil
        } })], fn() { Nil })
            case jr.truth(jr.eq(jr.get(l_byte_array), jr.JNull)) {
            True -> {
            jr.ret(l_string_list)
            Nil
        }
            False -> Nil
        }
            let l_size = jr.as_i(jr.alen(jr.get(l_byte_array)))
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            let l_start_index = jr.cell(jr.as_i(jr.JInt(0)))
            let l_return_line = jr.cell(jr.as_i(jr.JInt(0)))
            jr.while_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() {
            jr.set(l_start_index, jr.as_i(jr.get(l_index)))
            jr.while_loop("", fn() { case jr.truth(jr.lt(jr.get(l_index), jr.sub(l_size, jr.JInt(1)))) { True -> jr.ne(jr.aget(jr.get(l_byte_array), jr.get(l_index)), jr.to_b(jr.JChar(10))) False -> jr.JBool(False) } }, fn() {
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
                Nil
            })
            case jr.truth(jr.eq(l_include_return_line, jr.JInt(0))) {
                True -> {
                case jr.truth(case jr.truth(jr.gt(jr.get(l_index), jr.JInt(0))) { True -> jr.eq(jr.aget(jr.get(l_byte_array), jr.sub(jr.get(l_index), jr.JInt(1))), jr.to_b(jr.JChar(13))) False -> jr.JBool(False) }) {
                    True -> {
                    jr.set(l_return_line, jr.as_i(jr.JInt(1)))
                    Nil
                }
                    False -> {
                    jr.set(l_return_line, jr.as_i(jr.JInt(0)))
                    Nil
                }
                }
                Nil
            }
                False -> Nil
            }
            let l_s = jr.new("String", [jr.get(l_byte_array), jr.get(l_start_index), jr.sub(jr.sub(jr.add(jr.get(l_index), l_include_return_line), jr.get(l_return_line)), jr.get(l_start_index))])
            jr.call(l_string_list, "add_1", [l_s])
            jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
            Nil
        })
            jr.ret(l_string_list)
        jr.JNull
    })
}

fn c1_m14__createstringfromarrayofstrings(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string_array] = jargs
        let l_string_maker = jr.new("StringMaker", [])
        let l_size = jr.as_i(jr.alen(l_string_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_maker, "append_1", [jr.aget(l_string_array, jr.get(l_index))])
            Nil
        })
            Nil
        }
    jr.call(l_string_maker, "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SimpleFileUtil",
        "org.allbinary.logic.io.file.SimpleFileUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("NULL_WRITER", jr.JNull), #("NULL_READER", jr.JNull), #("commonStrings", jr.JNull), #("nullUtil", jr.JNull), #("streamUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("nullOutputStream_0", [], True, c1_m4__nulloutputstream), 
            jr.Method("nullWriter_0", [], True, c1_m5__nullwriter), 
            jr.Method("nullReader_0", [], True, c1_m6__nullreader), 
            jr.Method("loadFileAsList_3", ["InputStream", "int", "byteArr"], False, c1_m12__loadfileaslist), 
            jr.Method("loadFileAsListReturnLine_4", ["InputStream", "int", "byteArr", "int"], False, c1_m13__loadfileaslistreturnline), 
            jr.Method("createStringFromArrayOfStrings_1", ["StringArr"], False, c1_m14__createstringfromarrayofstrings), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

