// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABCustomGaugeItem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ABCustomGaugeItem", "NULL_GAUGE_ITEM", jr.new("ABCustomGaugeItem", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.JInt(1), jr.JInt(0), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label, l_max_value, l_initial_value, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_max_value = jr.as_i(l_max_value)
    let l_initial_value = jr.as_i(l_initial_value)
        jr.super_init("ABCustomItem", this, [l_label, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABCustomGaugeItem",
        "org.allbinary.graphics.form.item.ABCustomGaugeItem",
        "ABCustomItem",
        [],
        False,
        [],
        [#("NULL_GAUGE_ITEM", jr.JNull)],
        [
            jr.Method("jinit_5", ["String", "int", "int", "BasicColor", "BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

