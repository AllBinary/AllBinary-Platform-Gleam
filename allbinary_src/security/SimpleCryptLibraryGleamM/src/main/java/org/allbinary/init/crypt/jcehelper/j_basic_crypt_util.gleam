// Generated Code Do Not Modify
// package org.allbinary.init.crypt.jcehelper
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicCryptUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "XML_START", jr.JStr("<?xml"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicCryptUtil", "instance", jr.new("BasicCryptUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicCryptUtil", "instance")
}

fn c1_m6__getdecryptedinputstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream, l_crypt_interface] = jargs
        let l_buffer = jr.new("ByteArrayOutputStream", [])
        let l_ch = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.JBool(True) }, fn() {
            jr.set(l_ch, jr.as_i(jr.call(l_input_stream, "read_0", [])))
            case jr.truth(jr.eq(jr.get(l_ch), jr.JInt(-1))) {
                True -> {
                jr.brk("")
                Nil
            }
                False -> Nil
            }
            jr.call(l_buffer, "write_1", [jr.get(l_ch)])
            Nil
        })
        let l_decrypted = jr.call(l_crypt_interface, "decrypt_1", [jr.call(l_buffer, "toByteArray_0", [])])
        let l_decrypted_string = jr.cell(jr.new("String", [l_decrypted]))
        let l_index = jr.as_i(jr.call(jr.get(l_decrypted_string), "indexOf_1", [jr.get_field(this, "XML_START")]))
        case jr.truth(jr.gt(l_index, jr.JInt(0))) {
            True -> {
            jr.set(l_decrypted_string, jr.call(jr.get(l_decrypted_string), "substring_1", [l_index]))
            Nil
        }
            False -> Nil
        }
    jr.new("ByteArrayInputStream", [jr.call(jr.get_field(this, "tsUtil"), "getByteArray_1", [jr.get(l_decrypted_string)])])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicCryptUtil",
        "org.allbinary.init.crypt.jcehelper.BasicCryptUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("tsUtil", jr.JNull), #("XML_START", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getDecryptedInputStream_2", ["InputStream", "CryptInterface"], False, c1_m6__getdecryptedinputstream), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

