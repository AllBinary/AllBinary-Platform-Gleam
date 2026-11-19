// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicColorUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ZERO_ARRAY", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.set_field(this, "ALPHA", jr.as_i(jr.JInt(jr.wrap_i(0xFF000000))))
    jr.set_field(this, "isAlpha", jr.JBool(True))
    jr.set_field(this, "ffOpaque", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicColorUtil", "instance", jr.new("BasicColorUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicColorUtil", "instance")
}

fn c1_m7__getrgb(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_red, l_green, l_blue] = jargs
    let l_red = jr.as_i(l_red)
    let l_green = jr.as_i(l_green)
    let l_blue = jr.as_i(l_blue)
        let l_value = jr.cell(jr.as_i(jr.JInt(0)))
        case jr.truth(jr.get_field(this, "isAlpha")) {
            True -> {
            case jr.truth(jr.get_field(this, "ffOpaque")) {
                True -> {
                jr.set(l_value, jr.as_i(jr.get_field(this, "ALPHA")))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
        jr.set(l_value, jr.as_i(jr.bor(jr.shl(l_red, jr.JInt(16)), jr.get(l_value))))
        jr.set(l_value, jr.as_i(jr.bor(jr.shl(l_green, jr.JInt(8)), jr.get(l_value))))
        jr.set(l_value, jr.as_i(jr.bor(l_blue, jr.get(l_value))))
    jr.as_i(jr.get(l_value))
}

fn c1_m8__getargb(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha_value, l_r, l_g, l_b] = jargs
    let l_alpha_value = jr.as_i(l_alpha_value)
    let l_r = jr.as_i(l_r)
    let l_g = jr.as_i(l_g)
    let l_b = jr.as_i(l_b)
    jr.as_i(jr.add(jr.add(jr.add(jr.band(jr.shl(l_alpha_value, jr.JInt(24)), jr.get_field(this, "ALPHA")), jr.band(jr.shl(l_r, jr.JInt(16)), jr.JInt(jr.wrap_i(0x00FF0000)))), jr.band(jr.shl(l_g, jr.JInt(8)), jr.JInt(jr.wrap_i(0x0000FF00)))), jr.band(l_b, jr.JInt(jr.wrap_i(0x000000FF)))))
}

fn c1_m9__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha_value, l_color] = jargs
    let l_alpha_value = jr.as_i(l_alpha_value)
    let l_color = jr.as_i(l_color)
    jr.as_i(jr.add(jr.band(jr.shl(l_alpha_value, jr.JInt(24)), jr.get_field(this, "ALPHA")), l_color))
}

fn c1_m10__invert(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_color] = jargs
    let l_color = jr.as_i(l_color)
    jr.as_i(jr.bor(jr.sub(jr.JInt(jr.wrap_i(0xFFFFFF)), l_color), jr.get_field(this, "ALPHA")))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicColorUtil",
        "org.allbinary.graphics.color.BasicColorUtil",
        "Object",
        [],
        False,
        [#("ZERO_ARRAY", jr.JNull), #("ALPHA", jr.JInt(0)), #("isAlpha", jr.JBool(False)), #("ffOpaque", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getRGB_3", ["int", "int", "int"], False, c1_m7__getrgb), 
            jr.Method("getARGB_4", ["int", "int", "int", "int"], False, c1_m8__getargb), 
            jr.Method("get_2", ["int", "int"], False, c1_m9__get), 
            jr.Method("invert_1", ["int"], False, c1_m10__invert), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

