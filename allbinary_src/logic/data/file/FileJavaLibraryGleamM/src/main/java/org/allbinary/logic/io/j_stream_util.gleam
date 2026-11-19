// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StreamUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("StreamUtil", "instance", jr.new("StreamUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("StreamUtil", "instance")
}

fn c1_m5__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream, l_output_stream, l_buffer] = jargs
        let l_len = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.JBool(True) }, fn() {
            jr.set(l_len, jr.as_i(jr.call(l_input_stream, "read_3", [l_buffer, jr.JInt(0), jr.alen(l_buffer)])))
            case jr.truth(jr.ne(jr.get(l_len), jr.JInt(-1))) {
                True -> {
                Nil
            }
                False -> {
                jr.brk("")
                Nil
            }
            }
            jr.call(l_output_stream, "write_3", [l_buffer, jr.JInt(0), jr.get(l_len)])
            Nil
        })
    l_output_stream
}

fn c1_m6__getbytearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream, l_output_stream2, l_byte_array] = jargs
    jr.method(fn() {
            let l_output_stream = l_output_stream2
            jr.try_catch(fn() {
            jr.call(this, "get_3", [l_input_stream, l_output_stream, l_byte_array])
            jr.ret(jr.call(l_output_stream, "toByteArray_0", []))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.throw(l_e)
            Nil
        } })], fn() {
            jr.call(this, "close_1", [l_output_stream])
            Nil
        })
        jr.JNull
    })
}

fn c1_m7__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_closeable] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            case jr.truth(jr.ne(l_closeable, jr.JNull)) {
                True -> {
                jr.call(l_closeable, "close_0", [])
                Nil
            }
                False -> Nil
            }
            jr.ret(jr.JBool(True))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "CLOSE"), l_e])
            jr.ret(jr.JBool(False))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StreamUtil",
        "org.allbinary.logic.io.StreamUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("get_3", ["InputStream", "OutputStream", "byteArr"], False, c1_m5__get), 
            jr.Method("getByteArray_3", ["InputStream", "ByteArrayOutputStream", "byteArr"], False, c1_m6__getbytearray), 
            jr.Method("close_1", ["Closeable"], False, c1_m7__close), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

