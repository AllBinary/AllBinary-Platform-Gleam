// Generated Code Do Not Modify
// package org.allbinary.game.graphics.hud
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicHud

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "canvasStrings", jr.call_static("CanvasStrings", "getInstance_0", []))
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "displayInfo", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "hudGraphicsPosition", jr.get_static("HudGraphicsPosition", "NULL_HUD_GRAPHICS_POSITION"))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m21__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.try_catch(fn() {
            jr.set_field(this, "hudGraphicsPosition", jr.call(this, "getHudGraphicsPositionWH_4", [jr.call(jr.get_field(this, "displayInfo"), "getLastWidth_0", []), jr.call(jr.get_field(this, "displayInfo"), "getLastHeight_0", []), jr.get_field(this, "updateMaxWidth"), jr.get_field(this, "updateMaxHeight")]))
            jr.set_field(this, "x", jr.as_i(jr.call(jr.call(jr.get_field(this, "hudGraphicsPosition"), "getPoint_0", []), "getX_0", [])))
            jr.call(this, "setY_1", [jr.call(jr.call(jr.get_field(this, "hudGraphicsPosition"), "getPoint_0", []), "getY_0", [])])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(jr.get_field(this, "canvasStrings"), "ON_DISPLAY_CHANGE_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m22__getlocation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "location"))
}

fn c1_m23__getdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "direction"))
}

fn c1_m24__gethudgraphicspositionwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_max_width, l_max_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_max_width = jr.as_i(l_max_width)
    let l_max_height = jr.as_i(l_max_height)
        let l_x = jr.cell(jr.as_i(jr.JInt(0)))
        let l_y = jr.cell(jr.as_i(jr.JInt(0)))
        let l_anchor = jr.cell(jr.as_i(jr.JInt(0)))
        let l_basic_hud_factory = jr.call_static("BasicHudFactory", "getInstance_0", [])
        case jr.truth(jr.eq(jr.get_field(l_basic_hud_factory, "BOTTOMLEFT"), jr.call(this, "getLocation_0", []))) {
            True -> {
            jr.set(l_x, jr.as_i(jr.add(jr.get_field(this, "bufferZone"), jr.JInt(2))))
            jr.set(l_y, jr.as_i(jr.sub(jr.sub(l_height, l_max_height), jr.get_field(this, "bufferZone"))))
            jr.set(l_anchor, jr.as_i(jr.band(jr.get_static("Graphics", "BOTTOM"), jr.get_static("Graphics", "LEFT"))))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(l_basic_hud_factory, "BOTTOMRIGHT"), jr.call(this, "getLocation_0", []))) {
            True -> {
            jr.set(l_x, jr.as_i(jr.sub(l_width, l_max_width)))
            jr.set(l_y, jr.as_i(jr.sub(jr.sub(l_height, l_max_height), jr.get_field(this, "bufferZone"))))
            jr.set(l_anchor, jr.as_i(jr.band(jr.get_static("Graphics", "BOTTOM"), jr.get_static("Graphics", "RIGHT"))))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(l_basic_hud_factory, "TOPLEFT"), jr.call(this, "getLocation_0", []))) {
            True -> {
            jr.set(l_x, jr.as_i(jr.add(jr.get_field(this, "bufferZone"), jr.JInt(2))))
            jr.set(l_y, jr.as_i(jr.get_field(this, "bufferZoneY")))
            jr.set(l_anchor, jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(l_basic_hud_factory, "TOPRIGHT"), jr.call(this, "getLocation_0", []))) {
            True -> {
            jr.set(l_x, jr.as_i(jr.sub(l_width, l_max_width)))
            jr.set(l_y, jr.as_i(jr.get_field(this, "bufferZoneY")))
            jr.set(l_anchor, jr.as_i(jr.band(jr.get_static("Graphics", "TOP"), jr.get_static("Graphics", "RIGHT"))))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(l_basic_hud_factory, "TOPCENTER"), jr.call(this, "getLocation_0", []))) {
            True -> {
            jr.set(l_x, jr.as_i(jr.div(jr.sub(l_width, l_max_width), jr.JInt(2))))
            jr.set(l_y, jr.as_i(jr.get_field(this, "bufferZoneY")))
            jr.set(l_anchor, jr.as_i(jr.band(jr.get_static("Graphics", "TOP"), jr.get_static("Graphics", "HCENTER"))))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(l_basic_hud_factory, "BOTTOMCENTER"), jr.call(this, "getLocation_0", []))) {
            True -> {
            jr.set(l_x, jr.as_i(jr.div(jr.sub(l_width, l_max_width), jr.JInt(2))))
            jr.set(l_y, jr.as_i(jr.sub(jr.sub(l_height, l_max_height), jr.get_field(this, "bufferZone"))))
            jr.set(l_anchor, jr.as_i(jr.band(jr.get_static("Graphics", "BOTTOM"), jr.get_static("Graphics", "HCENTER"))))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(l_basic_hud_factory, "ABSOLUTE"), jr.call(this, "getLocation_0", []))) {
            True -> {
            jr.set(l_x, jr.as_i(l_max_height))
            jr.set(l_y, jr.as_i(l_max_width))
            jr.set(l_anchor, jr.as_i(jr.JInt(0)))
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
    jr.new("HudGraphicsPosition", [jr.call(this, "getPoint_2", [jr.get(l_x), jr.get(l_y)]), jr.get(l_anchor)])
}

fn c1_m25__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m26__ondisplaychangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display_change_event] = jargs
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m27__getpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.call(jr.call_static("PointFactory", "getInstance_0", []), "createXY_2", [l_x, l_y])
}

fn c1_m28__getbufferzone(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "bufferZone"))
}

fn c1_m29__setbufferzone(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_buffer_zone] = jargs
    let l_buffer_zone = jr.as_i(l_buffer_zone)
        jr.set_field(this, "bufferZone", jr.as_i(l_buffer_zone))
        case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
            True -> {
            jr.set_field(this, "bufferZoneY", jr.as_i(jr.get_field(this, "bufferZone")))
            Nil
        }
            False -> {
            jr.set_field(this, "bufferZoneY", jr.as_i(jr.add(jr.get_field(this, "bufferZone"), jr.JInt(5))))
            Nil
        }
        }
    jr.JNull
}

fn c1_m30__setlocation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_location] = jargs
    let l_location = jr.as_i(l_location)
        jr.set_field(this, "location", jr.as_i(l_location))
    jr.JNull
}

fn c1_m31__setdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction] = jargs
    let l_direction = jr.as_i(l_direction)
        jr.set_field(this, "direction", jr.as_i(l_direction))
    jr.JNull
}

fn c1_m32__gethudgraphicsposition(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hudGraphicsPosition")
}

fn c1_m33__getcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "color"))
}

fn c1_m34__getx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "x"))
}

fn c1_m35__setx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x] = jargs
    let l_x = jr.as_i(l_x)
        jr.set_field(this, "x", jr.as_i(l_x))
    jr.JNull
}

fn c1_m36__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
    jr.JNull
}

fn c1_m37__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_m38__sety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_y] = jargs
    let l_y = jr.as_i(l_y)
        jr.set_field(this, "y", jr.as_i(l_y))
    jr.JNull
}

fn c1_m39__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "y"))
}

fn c1_m40__paintsso(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_string, l_string2, l_offset] = jargs
    let l_offset = jr.as_i(l_offset)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.call(this, "getBasicColorP_0", [])])
        jr.call(l_graphics, "drawString_4", [l_string, jr.get_field(this, "x"), jr.call(this, "getY_0", []), jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
        jr.call(l_graphics, "drawString_4", [l_string2, jr.add(jr.get_field(this, "x"), l_offset), jr.call(this, "getY_0", []), jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
    jr.JNull
}

fn c1_m41__paintssoo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_string, l_string2, l_offset, l_offset2] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_offset2 = jr.as_i(l_offset2)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(l_graphics, "setColor_1", [jr.call(this, "getColor_0", [])])
        jr.call(l_graphics, "drawString_4", [l_string, jr.add(jr.get_field(this, "x"), l_offset), jr.call(this, "getY_0", []), jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
        jr.call(l_graphics, "drawString_4", [l_string2, jr.add(jr.get_field(this, "x"), l_offset2), jr.call(this, "getY_0", []), jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
    jr.JNull
}

fn c1_m42__paintdxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_char_array, l_offset, l_len, l_char_array2, l_offset2, l_len2, l_x_offset, l_x_offset2] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_len = jr.as_i(l_len)
    let l_offset2 = jr.as_i(l_offset2)
    let l_len2 = jr.as_i(l_len2)
    let l_x_offset = jr.as_i(l_x_offset)
    let l_x_offset2 = jr.as_i(l_x_offset2)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.call(this, "getBasicColorP_0", [])])
        let l_y = jr.as_i(jr.call(this, "getY_0", []))
        jr.call(l_graphics, "drawChars_6", [l_char_array, l_offset, l_len, jr.add(jr.get_field(this, "x"), l_x_offset), l_y, jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
        jr.call(l_graphics, "drawChars_6", [l_char_array2, l_offset2, l_len2, jr.add(jr.get_field(this, "x"), l_x_offset2), l_y, jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
    jr.JNull
}

fn c1_m43__paintdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_char_array, l_offset, l_len, l_char_array2, l_offset2, l_len2, l_x_offset] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_len = jr.as_i(l_len)
    let l_offset2 = jr.as_i(l_offset2)
    let l_len2 = jr.as_i(l_len2)
    let l_x_offset = jr.as_i(l_x_offset)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.call(this, "getBasicColorP_0", [])])
        let l_y = jr.as_i(jr.call(this, "getY_0", []))
        jr.call(l_graphics, "drawChars_6", [l_char_array, l_offset, l_len, jr.get_field(this, "x"), l_y, jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
        jr.call(l_graphics, "drawChars_6", [l_char_array2, l_offset2, l_len2, jr.add(jr.get_field(this, "x"), l_x_offset), l_y, jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
    jr.JNull
}

fn c1_m44__paintoffsetandlength(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_char_array, l_offset, l_len] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_len = jr.as_i(l_len)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.call(this, "getBasicColorP_0", [])])
        let l_y = jr.as_i(jr.call(this, "getY_0", []))
        jr.call(l_graphics, "drawChars_6", [l_char_array, l_offset, l_len, jr.get_field(this, "x"), l_y, jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
    jr.JNull
}

fn c1_m45__paintstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_string] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.call(this, "getBasicColorP_0", [])])
        let l_y = jr.as_i(jr.add(jr.call(this, "getY_0", []), jr.get_field(this, "offsetY")))
        jr.call(l_graphics, "drawString_4", [l_string, jr.get_field(this, "x"), l_y, jr.call(jr.get_field(this, "hudGraphicsPosition"), "getAnchor_0", [])])
    jr.JNull
}

fn c1_jinit20(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_location, l_direction, l_buffer_zone, l_basic_color] = jargs
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    let l_buffer_zone = jr.as_i(l_buffer_zone)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setLocation_1", [l_location])
        jr.call(this, "setDirection_1", [l_direction])
        jr.call(this, "setBufferZone_1", [l_buffer_zone])
        jr.call(this, "onDisplayChangeEvent_1", [jr.get_field(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "displayChangeEvent")])
        jr.call(this, "setBasicColorP_1", [l_basic_color])
        jr.set_field(this, "color", jr.as_i(jr.call(l_basic_color, "intValue_0", [])))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicHud",
        "org.allbinary.game.graphics.hud.BasicHud",
        "Object",
        ["UpdateMyFontInterface"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("canvasStrings", jr.JNull), #("basicSetColorUtil", jr.JNull), #("displayInfo", jr.JNull), #("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("location", jr.JInt(0)), #("direction", jr.JInt(0)), #("bufferZone", jr.JInt(0)), #("bufferZoneY", jr.JInt(0)), #("hudGraphicsPosition", jr.JNull), #("x", jr.JInt(0)), #("y", jr.JInt(0)), #("basicColor", jr.JNull), #("color", jr.JInt(0)), #("updateMaxWidth", jr.JInt(0)), #("updateMaxHeight", jr.JInt(0)), #("offsetY", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m21__updatemeasurement), 
            jr.Method("getLocation_0", [], False, c1_m22__getlocation), 
            jr.Method("getDirection_0", [], False, c1_m23__getdirection), 
            jr.Method("getHudGraphicsPositionWH_4", ["int", "int", "int", "int"], False, c1_m24__gethudgraphicspositionwh), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m25__onevent), 
            jr.Method("onDisplayChangeEvent_1", ["DisplayChangeEvent"], False, c1_m26__ondisplaychangeevent), 
            jr.Method("getPoint_2", ["int", "int"], False, c1_m27__getpoint), 
            jr.Method("getBufferZone_0", [], False, c1_m28__getbufferzone), 
            jr.Method("setBufferZone_1", ["int"], False, c1_m29__setbufferzone), 
            jr.Method("setLocation_1", ["int"], False, c1_m30__setlocation), 
            jr.Method("setDirection_1", ["int"], False, c1_m31__setdirection), 
            jr.Method("getHudGraphicsPosition_0", [], False, c1_m32__gethudgraphicsposition), 
            jr.Method("getColor_0", [], False, c1_m33__getcolor), 
            jr.Method("getX_0", [], False, c1_m34__getx), 
            jr.Method("setX_1", ["int"], False, c1_m35__setx), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m36__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m37__getbasiccolorp), 
            jr.Method("setY_1", ["int"], False, c1_m38__sety), 
            jr.Method("getY_0", [], False, c1_m39__gety), 
            jr.Method("paintSSO_4", ["Graphics", "String", "String", "int"], False, c1_m40__paintsso), 
            jr.Method("paintSSOO_5", ["Graphics", "String", "String", "int", "int"], False, c1_m41__paintssoo), 
            jr.Method("paintDXY_9", ["Graphics", "charArr", "int", "int", "charArr", "int", "int", "int", "int"], False, c1_m42__paintdxy), 
            jr.Method("paintDX_8", ["Graphics", "charArr", "int", "int", "charArr", "int", "int", "int"], False, c1_m43__paintdx), 
            jr.Method("paintOffsetAndLength_4", ["Graphics", "charArr", "int", "int"], False, c1_m44__paintoffsetandlength), 
            jr.Method("paintString_2", ["Graphics", "String"], False, c1_m45__paintstring), 
            jr.Method("jinit_4", ["int", "int", "int", "BasicColor"], False, c1_jinit20)],
        c1_jfields,
        c1_jclinit,
    )
}

