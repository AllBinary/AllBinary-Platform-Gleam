// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicColor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m12__intvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "value"))
}

fn c1_m13__toint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "value"))
}

fn c1_m14__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("BasicColor: ")])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Alpha: ")])
        jr.call(l_string_buffer, "appendshort_1", [jr.get_field(this, "alpha")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Red: ")])
        jr.call(l_string_buffer, "appendshort_1", [jr.get_field(this, "red")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Green: ")])
        jr.call(l_string_buffer, "appendshort_1", [jr.get_field(this, "green")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Blue: ")])
        jr.call(l_string_buffer, "appendshort_1", [jr.get_field(this, "blue")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Value: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "value")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m15__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "name")
}

fn c1_m16__getredcomponent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "redComponent"))
}

fn c1_m17__getgreencomponent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "greenComponent"))
}

fn c1_m18__getbluecomponent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "blueComponent"))
}

fn c1_m19__getalphacomponent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_f(jr.get_field(this, "alphaComponent"))
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha_value, l_value, l_name] = jargs
    let l_alpha_value = jr.as_i(l_alpha_value)
    let l_value = jr.as_i(l_value)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "name", l_name)
        let l_temp_value = jr.cell(jr.as_i(jr.JInt(0)))
        let l_basic_color_util = jr.call_static("BasicColorUtil", "getInstance_0", [])
        case jr.truth(jr.get_field(l_basic_color_util, "isAlpha")) {
            True -> {
            case jr.truth(jr.get_field(l_basic_color_util, "ffOpaque")) {
                True -> {
                jr.set(l_temp_value, jr.as_i(jr.bor(l_alpha_value, l_value)))
                Nil
            }
                False -> {
                jr.set(l_temp_value, jr.as_i(jr.bor(jr.JInt(jr.wrap_i(0x00000000)), l_value)))
                Nil
            }
            }
            Nil
        }
            False -> {
            jr.set(l_temp_value, jr.as_i(l_value))
            Nil
        }
        }
        let l_alpha_int = jr.as_i(jr.band(jr.shr(jr.get(l_temp_value), jr.JInt(24)), jr.JInt(255)))
        jr.set_field(this, "alpha", jr.as_s(jr.to_s(l_alpha_int)))
        jr.set_field(this, "alphaComponent", jr.as_f(jr.div(jr.to_f(l_alpha_int), jr.JFloat(255.0))))
        let l_red_int = jr.as_i(jr.band(jr.shr(jr.get(l_temp_value), jr.JInt(16)), jr.JInt(255)))
        jr.set_field(this, "red", jr.as_s(jr.to_s(l_red_int)))
        jr.set_field(this, "redComponent", jr.as_f(jr.div(jr.to_f(l_red_int), jr.JFloat(255.0))))
        let l_green_int = jr.as_i(jr.band(jr.shr(jr.get(l_temp_value), jr.JInt(8)), jr.JInt(255)))
        jr.set_field(this, "green", jr.as_s(jr.to_s(l_green_int)))
        jr.set_field(this, "greenComponent", jr.as_f(jr.div(jr.to_f(l_green_int), jr.JFloat(255.0))))
        let l_blue_int = jr.as_i(jr.band(jr.get(l_temp_value), jr.JInt(255)))
        jr.set_field(this, "blue", jr.as_s(jr.to_s(l_blue_int)))
        jr.set_field(this, "blueComponent", jr.as_f(jr.div(jr.to_f(l_blue_int), jr.JFloat(255.0))))
        jr.set_field(this, "value", jr.as_i(jr.get(l_temp_value)))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicColor",
        "org.allbinary.graphics.color.BasicColor",
        "Object",
        [],
        False,
        [#("name", jr.JNull), #("value", jr.JInt(0)), #("redComponent", jr.JFloat(0.0)), #("greenComponent", jr.JFloat(0.0)), #("blueComponent", jr.JFloat(0.0)), #("alphaComponent", jr.JFloat(0.0)), #("red", jr.JShort(0)), #("green", jr.JShort(0)), #("blue", jr.JShort(0)), #("alpha", jr.JShort(0))],
        [],
        [
            jr.Method("intValue_0", [], False, c1_m12__intvalue), 
            jr.Method("toInt_0", [], False, c1_m13__toint), 
            jr.Method("toString_0", [], False, c1_m14__tostring), 
            jr.Method("getName_0", [], False, c1_m15__getname), 
            jr.Method("getRedComponent_0", [], False, c1_m16__getredcomponent), 
            jr.Method("getGreenComponent_0", [], False, c1_m17__getgreencomponent), 
            jr.Method("getBlueComponent_0", [], False, c1_m18__getbluecomponent), 
            jr.Method("getAlphaComponent_0", [], False, c1_m19__getalphacomponent), 
            jr.Method("jinit_3", ["int", "int", "String"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

