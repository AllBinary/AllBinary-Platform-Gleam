// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.time
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TimeHudWidget

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "TIME_STRING", jr.JStr("Time "))
    jr.set_field(this, "TIME_CHAR_ARRAY", jr.array_of("C", [jr.JChar(84), jr.JChar(105), jr.JChar(109), jr.JChar(101), jr.JChar(32)]))
    jr.set_field(this, "string", jr.get_field(jr.call_static("PrimitiveLongSingleton", "getInstance_0", []), "ZERO"))
    jr.set_field(this, "totalDigits", jr.as_i(jr.JInt(1)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_location, l_direction, l_basic_color, l_timer] = jargs
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    jr.new("TimeHudWidget", [l_location, l_direction, jr.JInt(2), l_basic_color, l_timer])
}

fn c1_m9__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_inherited(this, "TimeHudWidget", "updateMaxWidth", jr.mul(jr.call(l_font, "getSize_0", []), jr.JInt(5)))
        jr.set_field(this, "offset", jr.as_i(jr.add(jr.call(l_font, "stringWidth_1", [jr.get_field(this, "TIME_STRING")]), jr.call_static("MyFontProcessor", "defaultStringWidth_2", [l_font, jr.JInt(3)]))))
        jr.call_super("BasicHud", this, "updateMeasurement_1", [l_graphics])
    jr.JNull
}

fn c1_m10__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "timer"), "update_0", [])
        jr.call(this, "set_0", [])
    jr.JNull
}

fn c1_m11__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "string", jr.call(jr.get_field(this, "timer"), "getTimeChars_0", []))
        jr.set_field(this, "totalDigits", jr.as_i(jr.call(jr.get_field(this, "timer"), "getCurrentTotalDigits_0", [])))
    jr.JNull
}

fn c1_m12__gettimer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "timer")
}

fn c1_m13__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call_super("BasicHud", this, "paintDX_8", [l_graphics, jr.get_field(this, "TIME_CHAR_ARRAY"), jr.JInt(0), jr.alen(jr.get_field(this, "TIME_CHAR_ARRAY")), jr.get_field(this, "string"), jr.JInt(0), jr.get_field(this, "totalDigits"), jr.get_field(this, "offset")])
    jr.JNull
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_location, l_direction, l_buffer_zone, l_basic_color, l_timer] = jargs
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    let l_buffer_zone = jr.as_i(l_buffer_zone)
        jr.super_init("BasicHud", this, [l_location, l_direction, l_buffer_zone, l_basic_color])
        c1_jfields(this)
        jr.set_field(this, "timer", l_timer)
        jr.call(this, "set_0", [])
        jr.set_inherited(this, "TimeHudWidget", "updateMaxHeight", jr.JInt(14))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TimeHudWidget",
        "org.allbinary.game.ag.layer.hud.basic.time.TimeHudWidget",
        "BasicHud",
        [],
        False,
        [#("TIME_STRING", jr.JNull), #("TIME_CHAR_ARRAY", jr.JNull), #("offset", jr.JInt(0)), #("string", jr.JNull), #("totalDigits", jr.JInt(0)), #("timer", jr.JNull)],
        [],
        [
            jr.Method("getInstance_4", ["int", "int", "BasicColor", "HudTimer"], True, c1_m1__getinstance), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m9__updatemeasurement), 
            jr.Method("update_0", [], False, c1_m10__update), 
            jr.Method("set_0", [], False, c1_m11__set), 
            jr.Method("getTimer_0", [], False, c1_m12__gettimer), 
            jr.Method("paint_1", ["Graphics"], False, c1_m13__paint), 
            jr.Method("jinit_5", ["int", "int", "int", "BasicColor", "HudTimer"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

