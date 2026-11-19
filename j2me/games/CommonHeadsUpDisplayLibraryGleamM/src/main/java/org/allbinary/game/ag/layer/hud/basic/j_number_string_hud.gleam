// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NumberStringHud

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m10__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "offset", jr.as_i(jr.add(jr.call(l_font, "stringWidth_1", [jr.get_field(this, "prependString")]), jr.call_static("MyFontProcessor", "defaultCharWidth_1", [l_font]))))
        jr.call_super("BasicHud", this, "updateMeasurement_1", [l_graphics])
    jr.JNull
}

fn c1_m11__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "value"))
}

fn c1_m12__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.call(this, "set_1", [jr.add(jr.get_field(this, "value"), l_value)])
    jr.JNull
}

fn c1_m13__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.set_field(this, "value", jr.as_i(l_value))
        case jr.truth(jr.gt(jr.get_field(this, "value"), jr.get_field(this, "max"))) {
            True -> {
            jr.set_field(this, "value", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "valueString", jr.call(jr.get_field(this, "primitiveLongUtil"), "getCharArray_1", [jr.get_field(this, "value")]))
        jr.set_field(this, "valueTotalDigits", jr.as_i(jr.call(jr.get_field(this, "primitiveLongUtil"), "getCurrentTotalDigits_0", [])))
    jr.JNull
}

fn c1_m14__reduce(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.call(this, "set_1", [jr.sub(jr.get_field(this, "value"), l_value)])
    jr.JNull
}

fn c1_m15__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call_super("BasicHud", this, "paintDX_8", [l_graphics, jr.get_field(this, "PREPEND_STRING"), jr.JInt(0), jr.alen(jr.get_field(this, "PREPEND_STRING")), jr.get_field(this, "valueString"), jr.JInt(0), jr.get_field(this, "valueTotalDigits"), jr.get_field(this, "offset")])
    jr.JNull
}

fn c1_m16__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "NumberStringHud", "myFontProcessor"), "process_1", [l_graphics])
        let l_char_array = jr.get_field(this, "PREPEND_STRING")
        let l_len = jr.as_i(jr.alen(jr.get_field(this, "PREPEND_STRING")))
        let l_char_array2 = jr.get_field(this, "valueString")
        let l_len2 = jr.as_i(jr.get_field(this, "valueTotalDigits"))
        jr.call(jr.get_inherited(this, "NumberStringHud", "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.call_inherited(this, "NumberStringHud", "getBasicColorP_0", [])])
        jr.call(l_graphics, "drawChars_6", [l_char_array, jr.JInt(0), l_len, l_x, l_y, jr.JInt(0)])
        jr.call(l_graphics, "drawChars_6", [l_char_array2, jr.JInt(0), l_len2, jr.sub(l_x, jr.get_field(this, "offset")), l_y, jr.JInt(0)])
    jr.JNull
}

fn c1_m17__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_prepend_string, l_max, l_location, l_direction, l_buffer_zone, l_basic_color] = jargs
    let l_max = jr.as_i(l_max)
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    let l_buffer_zone = jr.as_i(l_buffer_zone)
        jr.super_init("BasicHud", this, [l_location, l_direction, l_buffer_zone, l_basic_color])
        c1_jfields(this)
        jr.set_field(this, "prependString", l_prepend_string)
        jr.set_field(this, "PREPEND_STRING", jr.call(l_prepend_string, "toCharArray_0", []))
        jr.set_field(this, "valueString", jr.aget(jr.get_field(jr.call_static("PrimitiveLongSingleton", "getInstance_0", []), "NUMBER_CHAR_ARRAYS"), jr.JInt(0)))
        jr.set_field(this, "primitiveLongUtil", jr.call_static("PrimitiveLongUtil", "createPowerOfTen_1", [jr.add(l_max, jr.JInt(1))]))
        jr.set_field(this, "max", jr.as_i(l_max))
        jr.set_field(this, "value", jr.as_i(jr.JInt(0)))
        case jr.truth(jr.eq(l_direction, jr.JInt(0))) {
            True -> {
            jr.throw(jr.new("RuntimeException", [jr.get_field(jr.call_static("BasicHudFactory", "getInstance_0", []), "DIRECTION_EXCEPTION")]))
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NumberStringHud",
        "org.allbinary.game.ag.layer.hud.basic.NumberStringHud",
        "BasicHud",
        ["PaintableInterface"],
        False,
        [#("primitiveLongUtil", jr.JNull), #("prependString", jr.JNull), #("PREPEND_STRING", jr.JNull), #("value", jr.JInt(0)), #("max", jr.JInt(0)), #("offset", jr.JInt(0)), #("valueString", jr.JNull), #("valueTotalDigits", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m10__updatemeasurement), 
            jr.Method("get_0", [], False, c1_m11__get), 
            jr.Method("add_1", ["int"], False, c1_m12__add), 
            jr.Method("set_1", ["int"], False, c1_m13__set), 
            jr.Method("reduce_1", ["int"], False, c1_m14__reduce), 
            jr.Method("paint_1", ["Graphics"], False, c1_m15__paint), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m16__paintxy), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m17__paintthreed), 
            jr.Method("jinit_6", ["String", "int", "int", "int", "int", "BasicColor"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

