// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DatabaseEncoder

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__encode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_array = l_value
            let l_string_buffer = jr.new("StringMaker", [])
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_array)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.call(l_string_buffer, "append_1", [jr.call(jr.new("Byte", [jr.aget(l_array, jr.get(l_index))]), "toString_0", [])])
                case jr.truth(jr.lt(jr.get(l_index), jr.sub(jr.alen(l_array), jr.JInt(1)))) {
                    True -> {
                    jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
                Nil
            }
            jr.ret(jr.call(l_string_buffer, "toString_0", []))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "putOE_4", [jr.get_field(l_common_strings, "EXCEPTION"), jr.JStr("DatabaseEncoder"), jr.JStr("decode"), l_e])
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m3__decode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_tokenizer = jr.new("Tokenizer", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
            let l_vector = jr.call(l_tokenizer, "getTokensFromString_2", [l_value, jr.new("BasicArrayListD", [])])
            let l_size = jr.as_i(jr.call(l_vector, "size_0", []))
            let l_decode = jr.new_array("B", 1, [l_size])
            let l_byte_of_data = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_byte_of_data, jr.aget(jr.get_field(l_vector, "objectArray"), jr.get(l_index)))
                jr.aset(l_decode, jr.get(l_index), jr.as_b(jr.call_static("Byte", "parseByte_1", [jr.get(l_byte_of_data)])))
                Nil
            })
                Nil
            }
            jr.ret(l_decode)
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "putSE_4", [jr.get_field(l_common_strings, "EXCEPTION"), jr.JStr("DatabaseEncoder"), jr.JStr("decode"), l_e])
            jr.ret(jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_BYTE_ARRAY"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DatabaseEncoder",
        "org.allbinary.logic.system.security.crypt.DatabaseEncoder",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("encode_1", ["byteArr"], True, c1_m2__encode), 
            jr.Method("decode_1", ["String"], True, c1_m3__decode), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

