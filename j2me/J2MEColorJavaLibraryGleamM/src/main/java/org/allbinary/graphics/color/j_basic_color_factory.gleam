// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicColorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NULL_COLOR", jr.call(this, "createInstanceARGB_5", [jr.JInt(255), jr.JInt(255), jr.JInt(255), jr.JInt(255), jr.JStr("null color")]))
    jr.set_field(this, "TAN", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0xE9D8B5))]))
    jr.set_field(this, "SKIN_PINK", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0xFDCECE))]))
    jr.set_field(this, "RED", jr.call(this, "createInstanceAN_3", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), jr.JInt(jr.wrap_i(0xFF0000)), jr.JStr("red")]))
    jr.set_field(this, "LIGHT_RED", jr.call(this, "createInstanceAN_3", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), jr.JInt(jr.wrap_i(0xFFA0A0)), jr.JStr("light red")]))
    jr.set_field(this, "DARK_GREEN", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0x00FF00))]))
    jr.set_field(this, "GREEN", jr.call(this, "createInstanceAN_3", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), jr.JInt(jr.wrap_i(0x00DD00)), jr.JStr("green")]))
    jr.set_field(this, "LIGHT_GREEN", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0x007700))]))
    jr.set_field(this, "PURPLE", jr.call(this, "createInstanceAN_3", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), jr.JInt(jr.wrap_i(0x400040)), jr.JStr("purple")]))
    jr.set_field(this, "BLUE", jr.call(this, "createInstanceAN_3", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), jr.JInt(jr.wrap_i(0x0000FF)), jr.JStr("blue")]))
    jr.set_field(this, "LIGHT_BLUE", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0x00aaff))]))
    jr.set_field(this, "VERY_LIGHT_BLUE", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0x000033))]))
    jr.set_field(this, "PUCE", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0xFF00AA))]))
    jr.set_field(this, "AQUA", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0x00FFFF))]))
    jr.set_field(this, "YELLOW", jr.call(this, "createInstanceAN_3", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), jr.JInt(jr.wrap_i(0xFFFF00)), jr.JStr("yellow")]))
    jr.set_field(this, "PINK", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0xFF00FF))]))
    jr.set_field(this, "BLACK", jr.call(this, "createInstanceAN_3", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), jr.JInt(jr.wrap_i(0x000000)), jr.JStr("black")]))
    jr.set_field(this, "GREY", jr.call(this, "createInstanceAN_3", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), jr.JInt(jr.wrap_i(0xAAAAAA)), jr.JStr("grey")]))
    jr.set_field(this, "LIGHT_GREY", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0xC0C0C0))]))
    jr.set_field(this, "DARK_GREY", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0x404040))]))
    jr.set_field(this, "ORANGE", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0xe07718))]))
    jr.set_field(this, "BROWN", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0x956B00))]))
    jr.set_field(this, "WHITE", jr.call(this, "createInstance_1", [jr.JInt(jr.wrap_i(0xFFFFFF))]))
    jr.set_field(this, "TRANSPARENT_COLOR", jr.call(this, "createInstanceAN_3", [jr.JInt(jr.wrap_i(0x00000000)), jr.JInt(jr.wrap_i(0x000000)), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.set_field(this, "TRANSPARENT_GREY", jr.call(this, "createInstanceAN_3", [jr.JInt(jr.wrap_i(0x52000000)), jr.JInt(jr.wrap_i(0xECECEC)), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.set_field(this, "TRANSPARENT_BLACK", jr.call(this, "createInstanceAN_3", [jr.JInt(jr.wrap_i(0x52000000)), jr.JInt(jr.wrap_i(0x000000)), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.set_field(this, "TRANSPARENT_RED", jr.call(this, "createInstanceAN_3", [jr.JInt(jr.wrap_i(0x52000000)), jr.JInt(jr.wrap_i(0xFF0000)), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.set_field(this, "CLEAR_COLOR", jr.get_field(this, "BLACK"))
    jr.set_field(this, "BORDER_COLOR", jr.get_field(this, "WHITE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicColorFactory", "instance", jr.new("BasicColorFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicColorFactory", "instance")
}

fn c1_m3__createinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
    jr.new("BasicColor", [jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ALPHA"), l_value, jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")])
}

fn c1_m4__createinstancea(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha_value, l_value] = jargs
    let l_alpha_value = jr.as_i(l_alpha_value)
    let l_value = jr.as_i(l_value)
    jr.new("BasicColor", [l_alpha_value, l_value, jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")])
}

fn c1_m5__createinstancean(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha_value, l_value, l_name] = jargs
    let l_alpha_value = jr.as_i(l_alpha_value)
    let l_value = jr.as_i(l_value)
    jr.new("BasicColor", [l_alpha_value, l_value, l_name])
}

fn c1_m6__createinstanceargb(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha_value, l_r, l_g, l_b, l_name] = jargs
    let l_alpha_value = jr.as_i(l_alpha_value)
    let l_r = jr.as_i(l_r)
    let l_g = jr.as_i(l_g)
    let l_b = jr.as_i(l_b)
        let l__a_l_p_h_a___m_a_s_k = jr.as_i(jr.JInt(jr.wrap_i(0xFF000000)))
    jr.new("BasicColor", [l_alpha_value, jr.add(jr.add(jr.add(jr.band(jr.shl(l_alpha_value, jr.JInt(24)), l__a_l_p_h_a___m_a_s_k), jr.band(jr.shl(l_r, jr.JInt(16)), jr.JInt(jr.wrap_i(0x00FF0000)))), jr.band(jr.shl(l_g, jr.JInt(8)), jr.JInt(jr.wrap_i(0x0000FF00)))), jr.band(l_b, jr.JInt(jr.wrap_i(0x000000FF)))), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicColorFactory",
        "org.allbinary.graphics.color.BasicColorFactory",
        "Object",
        [],
        False,
        [#("NULL_COLOR", jr.JNull), #("TAN", jr.JNull), #("SKIN_PINK", jr.JNull), #("RED", jr.JNull), #("LIGHT_RED", jr.JNull), #("DARK_GREEN", jr.JNull), #("GREEN", jr.JNull), #("LIGHT_GREEN", jr.JNull), #("PURPLE", jr.JNull), #("BLUE", jr.JNull), #("LIGHT_BLUE", jr.JNull), #("VERY_LIGHT_BLUE", jr.JNull), #("PUCE", jr.JNull), #("AQUA", jr.JNull), #("YELLOW", jr.JNull), #("PINK", jr.JNull), #("BLACK", jr.JNull), #("GREY", jr.JNull), #("LIGHT_GREY", jr.JNull), #("DARK_GREY", jr.JNull), #("ORANGE", jr.JNull), #("BROWN", jr.JNull), #("WHITE", jr.JNull), #("TRANSPARENT_COLOR", jr.JNull), #("TRANSPARENT_GREY", jr.JNull), #("TRANSPARENT_BLACK", jr.JNull), #("TRANSPARENT_RED", jr.JNull), #("CLEAR_COLOR", jr.JNull), #("BORDER_COLOR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createInstance_1", ["int"], False, c1_m3__createinstance), 
            jr.Method("createInstanceA_2", ["int", "int"], False, c1_m4__createinstancea), 
            jr.Method("createInstanceAN_3", ["int", "int", "String"], False, c1_m5__createinstancean), 
            jr.Method("createInstanceARGB_5", ["int", "int", "int", "int", "String"], False, c1_m6__createinstanceargb), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

