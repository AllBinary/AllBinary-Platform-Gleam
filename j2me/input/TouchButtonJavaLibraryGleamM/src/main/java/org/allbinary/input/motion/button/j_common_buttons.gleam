// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommonButtons

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CommonButtons", "instance", jr.new("CommonButtons", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CommonButtons", "instance")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_common_button_size = jr.cell(jr.as_i(jr.JInt(128)))
        jr.while_loop("", fn() { jr.gt(jr.get(l_common_button_size), jr.JInt(64)) }, fn() {
            let l_total_columns = jr.as_i(jr.div(jr.call(l_display_info, "getLastWidth_0", []), jr.get(l_common_button_size)))
            let l_total_rows = jr.as_i(jr.div(jr.call(l_display_info, "getLastHeight_0", []), jr.get(l_common_button_size)))
            let l_max = jr.cell(jr.as_i(l_total_columns))
            case jr.truth(jr.gt(l_total_rows, jr.get(l_max))) {
                True -> {
                jr.set(l_max, jr.as_i(l_total_rows))
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.gt(jr.get(l_max), jr.JInt(9))) {
                True -> {
                jr.brk("")
                Nil
            }
                False -> Nil
            }
            jr.set(l_common_button_size, jr.as_i(jr.shr(jr.get(l_common_button_size), jr.JInt(1))))
            Nil
        })
        jr.set_field(this, "STANDARD_BUTTON_SIZE", jr.as_i(jr.get(l_common_button_size)))
        jr.set_field(this, "NORMAL_BUTTON", jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.get_field(this, "STANDARD_BUTTON_SIZE"), jr.get_field(this, "STANDARD_BUTTON_SIZE")]))
        jr.set_field(this, "LARGE_BUTTON", jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.shl(jr.get_field(this, "STANDARD_BUTTON_SIZE"), jr.JInt(1)), jr.shl(jr.get_field(this, "STANDARD_BUTTON_SIZE"), jr.JInt(1))]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommonButtons",
        "org.allbinary.input.motion.button.CommonButtons",
        "Object",
        [],
        False,
        [#("STANDARD_BUTTON_SIZE", jr.JInt(0)), #("NORMAL_BUTTON", jr.JNull), #("LARGE_BUTTON", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

