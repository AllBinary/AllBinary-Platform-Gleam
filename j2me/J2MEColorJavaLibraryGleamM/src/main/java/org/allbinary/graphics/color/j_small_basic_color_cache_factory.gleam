// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SmallBasicColorCacheFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SIZE", jr.as_i(jr.JInt(255)))
    jr.set_field(this, "INDEX_TO_COLOR", jr.new_array("I", 1, [jr.get_field(this, "SIZE")]))
    jr.set_field(this, "BASIC_COLOR_ARRAY", jr.new_array("L", 1, [jr.get_field(this, "SIZE")]))
    jr.set_field(this, "colorIndex", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SmallBasicColorCacheFactory", "instance", jr.new("SmallBasicColorCacheFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SmallBasicColorCacheFactory", "instance")
}

fn c1_m8__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_default_color] = jargs
        jr.aset(jr.get_field(this, "BASIC_COLOR_ARRAY"), jr.get_field(this, "colorIndex"), l_basic_default_color)
        jr.aset(jr.get_field(this, "INDEX_TO_COLOR"), jr.get_field(this, "colorIndex"), jr.as_i(jr.call(l_basic_default_color, "intValue_0", [])))
        jr.incr(fn() { jr.get_field(this, "colorIndex") }, fn(jv) { jr.set_field(this, "colorIndex", jv) }, 1, True)
    jr.JNull
}

fn c1_m9__getandorcreate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_color_as_int] = jargs
    let l_color_as_int = jr.as_i(l_color_as_int)
    jr.method(fn() {
            let l_basic_color = jr.cell(jr.JNull)
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "SIZE")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.eq(jr.aget(jr.get_field(this, "INDEX_TO_COLOR"), jr.get(l_index)), l_color_as_int)) {
                True -> {
                jr.ret(jr.aget(jr.get_field(this, "BASIC_COLOR_ARRAY"), jr.get(l_index)))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            let l__a_l_p_h_a___m_a_s_k = jr.as_i(jr.JInt(jr.wrap_i(0xFF000000)))
            jr.set(l_basic_color, jr.call(jr.call_static("BasicColorFactory", "getInstance_0", []), "createInstanceAN_3", [jr.band(l_color_as_int, l__a_l_p_h_a___m_a_s_k), jr.band(l_color_as_int, jr.JInt(jr.wrap_i(0x00FFFFFF))), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
            jr.call(this, "add_1", [jr.get(l_basic_color)])
            jr.ret(jr.get(l_basic_color))
        jr.JNull
    })
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SmallBasicColorCacheFactory",
        "org.allbinary.graphics.color.SmallBasicColorCacheFactory",
        "Object",
        [],
        False,
        [#("SIZE", jr.JInt(0)), #("INDEX_TO_COLOR", jr.JNull), #("BASIC_COLOR_ARRAY", jr.JNull), #("colorIndex", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("add_1", ["BasicColor"], False, c1_m8__add), 
            jr.Method("getAndOrCreate_1", ["int"], False, c1_m9__getandorcreate), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

