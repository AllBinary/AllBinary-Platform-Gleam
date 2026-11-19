// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ColorTemperatureUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicColorFactory", jr.call_static("BasicColorFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ColorTemperatureUtil", "instance", jr.new("ColorTemperatureUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ColorTemperatureUtil", "instance")
}

fn c1_m4__getbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_third_temp] = jargs
    let l_third_temp = jr.as_i(l_third_temp)
        let l_basic_color = jr.cell(jr.get_field(jr.get_field(this, "basicColorFactory"), "RED"))
        case jr.truth(jr.gt(l_third_temp, jr.JInt(3700))) {
            True -> {
            jr.set(l_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "PURPLE"))
            Nil
        }
            False -> case jr.truth(jr.gt(l_third_temp, jr.JInt(3200))) {
            True -> {
            jr.set(l_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "BLUE"))
            Nil
        }
            False -> case jr.truth(jr.gt(l_third_temp, jr.JInt(2700))) {
            True -> {
            jr.set(l_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "PUCE"))
            Nil
        }
            False -> case jr.truth(jr.gt(l_third_temp, jr.JInt(2200))) {
            True -> {
            jr.set(l_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "WHITE"))
            Nil
        }
            False -> case jr.truth(jr.gt(l_third_temp, jr.JInt(1700))) {
            True -> {
            jr.set(l_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "GREEN"))
            Nil
        }
            False -> case jr.truth(jr.gt(l_third_temp, jr.JInt(1200))) {
            True -> {
            jr.set(l_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "YELLOW"))
            Nil
        }
            False -> case jr.truth(jr.gt(l_third_temp, jr.JInt(700))) {
            True -> {
            jr.set(l_basic_color, jr.get_field(jr.get_field(this, "basicColorFactory"), "ORANGE"))
            Nil
        }
            False -> Nil
        }
        }
        }
        }
        }
        }
        }
    jr.get(l_basic_color)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ColorTemperatureUtil",
        "org.allbinary.graphics.color.ColorTemperatureUtil",
        "Object",
        [],
        False,
        [#("basicColorFactory", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getBasicColor_1", ["int"], False, c1_m4__getbasiccolor), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

