// Generated Code Do Not Modify
// package org.allbinary.graphics.font
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class UpdateMyFontProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "updateMeasurementProcessor"), "updateMeasurement_1", [l_graphics])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_value_draw_char_array] = jargs
    jr.super_init("MyFontProcessor", this, [])
    c1_jfields(this)
        jr.set_field(this, "updateMeasurementProcessor", l_key_value_draw_char_array)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "UpdateMyFontProcessor",
        "org.allbinary.graphics.font.UpdateMyFontProcessor",
        "MyFontProcessor",
        [],
        False,
        [#("updateMeasurementProcessor", jr.JNull)],
        [],
        [
            jr.Method("process_1", ["Graphics"], False, c1_m3__process), 
            jr.Method("jinit_1", ["UpdateMyFontInterface"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

