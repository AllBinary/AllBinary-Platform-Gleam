// Generated Code Do Not Modify
// package org.allbinary.logic.string.tokens
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Tokenizer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "endSep", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setsep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sep] = jargs
        jr.set_field(this, "sep", l_sep)
    jr.JNull
}

fn c1_m5__setendsep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_end_sep] = jargs
        jr.set_field(this, "endSep", l_end_sep)
    jr.JNull
}

fn c1_m6__getinsidesep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
        let l_token_list = jr.new("BasicArrayListD", [])
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size = jr.as_i(jr.call(l_string, "length_0", []))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() {
            jr.set(l_index, jr.as_i(jr.call(l_string, "indexOf_2", [jr.get_field(this, "sep"), jr.get(l_index)])))
            case jr.truth(jr.ne(jr.get(l_index), jr.JInt(-1))) {
                True -> {
                let l_end = jr.as_i(jr.call(l_string, "indexOf_2", [jr.get_field(this, "endSep"), jr.add(jr.get(l_index), jr.call(jr.get_field(this, "sep"), "length_0", []))]))
                case jr.truth(jr.ne(l_end, jr.JInt(-1))) {
                    True -> {
                    jr.call(l_token_list, "add_1", [jr.call(l_string, "substring_2", [jr.add(jr.get(l_index), jr.call(jr.get_field(this, "sep"), "length_0", [])), jr.sub(l_end, jr.sub(jr.call(jr.get_field(this, "endSep"), "length_0", []), jr.JInt(1)))])])
                    jr.set(l_index, jr.as_i(jr.add(l_end, jr.call(jr.get_field(this, "endSep"), "length_0", []))))
                    Nil
                }
                    False -> {
                    Nil
                }
                }
                Nil
            }
                False -> {
                jr.brk("")
                Nil
            }
            }
            Nil
        })
    l_token_list
}

fn c1_m7__gettokensfromstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string, l_token_vector] = jargs
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_end = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.lt(jr.get(l_index), jr.call(l_string, "length_0", [])) }, fn() {
            jr.set(l_end, jr.as_i(jr.call(l_string, "indexOf_2", [jr.get_field(this, "sep"), jr.get(l_index)])))
            case jr.truth(jr.ne(jr.get(l_end), jr.JInt(-1))) {
                True -> {
                jr.call(l_token_vector, "add_1", [jr.call(l_string, "substring_2", [jr.get(l_index), jr.get(l_end)])])
                jr.set(l_index, jr.as_i(jr.add(jr.get(l_end), jr.call(jr.get_field(this, "sep"), "length_0", []))))
                Nil
            }
                False -> {
                jr.call(l_token_vector, "add_1", [jr.call(l_string, "substring_2", [jr.get(l_index), jr.call(l_string, "length_0", [])])])
                jr.brk("")
                Nil
            }
            }
            Nil
        })
    l_token_vector
}

fn c1_m8__gettokens(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string_vector] = jargs
        let l_token_hashtable = jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", [])
        let l_string = jr.cell(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
        let l_end = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size = jr.as_i(jr.call(l_string_vector, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_string, jr.aget(jr.get_field(l_string_vector, "objectArray"), jr.get(l_index)))
            jr.set(l_end, jr.as_i(jr.call(jr.get(l_string), "indexOf_1", [jr.get_field(this, "sep")])))
            case jr.truth(jr.ge(jr.get(l_end), jr.JInt(0))) {
                True -> {
                jr.call(l_token_hashtable, "put_2", [jr.call(jr.get(l_string), "substring_2", [jr.JInt(0), jr.get(l_end)]), jr.call(jr.get(l_string), "substring_2", [jr.add(jr.get(l_end), jr.JInt(1)), jr.call(jr.get(l_string), "length_0", [])])])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    l_token_hashtable
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sep] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        case jr.truth(jr.eq(jr.call(jr.call_static("TsUtil", "getInstance_0", []), "compareTo_2", [l_sep, jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]), jr.JInt(0))) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Sep provided is not valid")]))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "sep", l_sep)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Tokenizer",
        "org.allbinary.logic.string.tokens.Tokenizer",
        "Object",
        [],
        False,
        [#("sep", jr.JNull), #("endSep", jr.JNull)],
        [],
        [
            jr.Method("setSep_1", ["String"], False, c1_m4__setsep), 
            jr.Method("setEndSep_1", ["String"], False, c1_m5__setendsep), 
            jr.Method("getInsideSep_1", ["String"], False, c1_m6__getinsidesep), 
            jr.Method("getTokensFromString_2", ["String", "BasicArrayList"], False, c1_m7__gettokensfromstring), 
            jr.Method("getTokens_1", ["BasicArrayList"], False, c1_m8__gettokens), 
            jr.Method("jinit_1", ["String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

