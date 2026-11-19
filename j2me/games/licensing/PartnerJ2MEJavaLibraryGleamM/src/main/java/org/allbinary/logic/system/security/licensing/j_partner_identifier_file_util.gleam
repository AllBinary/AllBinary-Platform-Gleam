// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PartnerIdentifierFileUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "FILE_NAME", jr.JStr("partner.txt"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PartnerIdentifierFileUtil", "instance", jr.new("PartnerIdentifierFileUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PartnerIdentifierFileUtil", "instance")
}

fn c1_m5__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            let l_resource_util = jr.call_static("ResourceUtil", "getInstance_0", [])
            let l_input_stream = jr.call(l_resource_util, "getResourceAsStream_1", [jr.get_field(this, "FILE_NAME")])
            let l_input_stream_reader = jr.new("InputStreamReader", [l_input_stream])
            let l_chars = jr.new_array("C", 1, [jr.JInt(30)])
            let l_size = jr.as_i(jr.call(l_input_stream_reader, "read_1", [l_chars]))
            let l_partner_string = jr.cell(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            case jr.truth(jr.gt(l_size, jr.JInt(0))) {
                True -> {
                jr.set(l_partner_string, jr.new("String", [l_chars, jr.JInt(0), l_size]))
                Nil
            }
                False -> Nil
            }
            jr.call(l_input_stream_reader, "close_0", [])
            jr.ret(jr.get(l_partner_string))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "GET"), l_e])
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PartnerIdentifierFileUtil",
        "org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("FILE_NAME", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("get_0", [], False, c1_m5__get), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

