// Generated Code Do Not Modify
// package org.allbinary.graphics.font
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MyFontProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MyFontProcessor", "instance", jr.new("MyFontProcessor", []))
    jr.JNull
}

fn c1_m1__defaultcharwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font] = jargs
    jr.as_i(jr.call(l_font, "charWidth_1", [jr.JChar(67)]))
}

fn c1_m2__defaultstringwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font, l_size] = jargs
    let l_size = jr.as_i(l_size)
    jr.as_i(jr.mul(jr.call_static("MyFontProcessor", "defaultCharWidth_1", [l_font]), l_size))
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MyFontProcessor", "instance")
}

fn c1_m5__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MyFontProcessor",
        "org.allbinary.graphics.font.MyFontProcessor",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("defaultCharWidth_1", ["Font"], True, c1_m1__defaultcharwidth), 
            jr.Method("defaultStringWidth_2", ["Font", "int"], True, c1_m2__defaultstringwidth), 
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("process_1", ["Graphics"], False, c1_m5__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

