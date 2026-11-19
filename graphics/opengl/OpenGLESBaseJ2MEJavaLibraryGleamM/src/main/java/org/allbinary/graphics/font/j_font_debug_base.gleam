// Generated Code Do Not Modify
// package org.allbinary.graphics.font
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FontDebugBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SET_FONT", jr.JStr("setFont"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FontDebugBase", "instanceBase", jr.new("FontDebugBase", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FontDebugBase", "instanceBase")
}

fn c1_m4__debugmetrics(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_font, l_converted_text_size, l_display_metrics, l_string_buffer] = jargs
    let l_converted_text_size = jr.as_f(l_converted_text_size)
    jr.JNull
}

fn c1_m5__debugdpi(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_density_dpi, l_string_buffer] = jargs
    let l_density_dpi = jr.as_i(l_density_dpi)
    jr.JNull
}

fn c1_m6__debugdimension(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_font, l_converted_text_size, l_longest_dimension_total_pixels, l_string_buffer] = jargs
    let l_converted_text_size = jr.as_f(l_converted_text_size)
    let l_longest_dimension_total_pixels = jr.as_i(l_longest_dimension_total_pixels)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FontDebugBase",
        "org.allbinary.graphics.font.FontDebugBase",
        "Object",
        [],
        False,
        [#("SET_FONT", jr.JNull)],
        [#("instanceBase", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("debugMetrics_4", ["Font", "float", "Object", "StringMaker"], False, c1_m4__debugmetrics), 
            jr.Method("debugDpi_2", ["int", "StringMaker"], False, c1_m5__debugdpi), 
            jr.Method("debugDimension_4", ["Font", "float", "int", "StringMaker"], False, c1_m6__debugdimension), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

