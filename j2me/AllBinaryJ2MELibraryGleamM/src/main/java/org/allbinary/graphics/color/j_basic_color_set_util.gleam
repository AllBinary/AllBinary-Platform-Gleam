// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicColorSetUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicColorSetUtil", "instance", jr.new("BasicColorSetUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicColorSetUtil", "instance")
}

fn c1_m4__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_basic_color] = jargs
        jr.call(l_graphics, "setColor_1", [jr.call(l_basic_color, "intValue_0", [])])
    jr.JNull
}

fn c1_m5__setbasiccolorp3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_basic_color, l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.call(l_graphics, "setColor_1", [l_value])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicColorSetUtil",
        "org.allbinary.graphics.color.BasicColorSetUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setBasicColorP_2", ["Graphics", "BasicColor"], False, c1_m4__setbasiccolorp), 
            jr.Method("setBasicColorP3_3", ["Graphics", "BasicColor", "int"], False, c1_m5__setbasiccolorp3), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

