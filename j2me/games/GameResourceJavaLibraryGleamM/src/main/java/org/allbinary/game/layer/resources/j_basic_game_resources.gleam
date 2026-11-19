// Generated Code Do Not Modify
// package org.allbinary.game.layer.resources
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicGameResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "RESOURCE", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "RESOURCE_DESTROY", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicGameResources", "stringBuffer", jr.new("StringMaker", []))
    jr.JNull
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l__r_o_o_t, l__s_i_z_e] = jargs
        jr.try_catch(fn() {
            let l_scale = jr.as_i(jr.call(jr.call(jr.get_field(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "SCALE"), "getValue_0", []), "intValue_0", []))
            case jr.truth(case jr.truth(jr.gt(l_scale, jr.JInt(1))) { True -> jr.lt(jr.sub(l_scale, jr.JInt(1)), jr.alen(l__s_i_z_e)) False -> jr.JBool(False) }) {
                True -> {
                jr.call(this, "append_2", [l__r_o_o_t, jr.aget(l__s_i_z_e, jr.sub(l_scale, jr.JInt(1)))])
                Nil
            }
                False -> {
                jr.throw(jr.new("Exception", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Invalid Value: ")]), "appendint_1", [l_scale]), "toString_0", [])]))
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "INIT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m7__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l__r_o_o_t, l_size_string] = jargs
        let l__d_e_s_t_r_o_y = jr.JStr("_destroy")
        let l_string = jr.call(this, "getString_0", [])
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "delete_2", [jr.JInt(0), jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "length_0", [])])
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "append_1", [l__r_o_o_t])
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "append_1", [l_string])
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "append_1", [l_size_string])
        jr.set_field(this, "RESOURCE", jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "toString_0", []))
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "delete_2", [jr.JInt(0), jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "length_0", [])])
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "append_1", [l__r_o_o_t])
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "append_1", [l__d_e_s_t_r_o_y])
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "append_1", [l_string])
        jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "append_1", [l_size_string])
        jr.set_field(this, "RESOURCE_DESTROY", jr.call(jr.get_static("BasicGameResources", "stringBuffer"), "toString_0", []))
    jr.JNull
}

fn c1_m8__getstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_static("GameGraphicsResourceUtil", "getInstance_0", []), "getName_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicGameResources",
        "org.allbinary.game.layer.resources.BasicGameResources",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("RESOURCE", jr.JNull), #("RESOURCE_DESTROY", jr.JNull)],
        [#("stringBuffer", jr.JNull)],
        [
            jr.Method("init_2", ["String", "StringArr"], False, c1_m6__init), 
            jr.Method("append_2", ["String", "String"], False, c1_m7__append), 
            jr.Method("getString_0", [], False, c1_m8__getstring), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

