// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABTextFieldItem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getlabel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m4__setlabel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label] = jargs
    jr.JNull
}

fn c1_m5__getstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m6__setstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
    jr.JNull
}

fn c1_m7__setfocus(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_state] = jargs
    jr.JNull
}

fn c1_m8__getfontheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "font"), "getHeight_0", []))
}

fn c1_m9__setbackgroundbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.JNull
}

fn c1_m10__setforegroundbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_canvas, l_visitor, l_label, l_value, l_max_size, l_layout, l_alt_text, l_font, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_max_size = jr.as_i(l_max_size)
    let l_layout = jr.as_i(l_layout)
        jr.super_init("ABTextItem", this, [l_label, l_layout, l_alt_text, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.set_field(this, "font", l_font)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABTextFieldItem",
        "org.allbinary.graphics.form.item.ABTextFieldItem",
        "ABTextItem",
        [],
        False,
        [#("font", jr.JNull)],
        [],
        [
            jr.Method("getLabel_0", [], False, c1_m3__getlabel), 
            jr.Method("setLabel_1", ["String"], False, c1_m4__setlabel), 
            jr.Method("getString_0", [], False, c1_m5__getstring), 
            jr.Method("setString_1", ["String"], False, c1_m6__setstring), 
            jr.Method("setFocus_1", ["boolean"], False, c1_m7__setfocus), 
            jr.Method("getFontHeight_0", [], False, c1_m8__getfontheight), 
            jr.Method("setBackgroundBasicColorP_1", ["BasicColor"], False, c1_m9__setbackgroundbasiccolorp), 
            jr.Method("setForegroundBasicColorP_1", ["BasicColor"], False, c1_m10__setforegroundbasiccolorp), 
            jr.Method("jinit_10", ["Canvas", "Visitor", "String", "String", "int", "int", "String", "Font", "BasicColor", "BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

