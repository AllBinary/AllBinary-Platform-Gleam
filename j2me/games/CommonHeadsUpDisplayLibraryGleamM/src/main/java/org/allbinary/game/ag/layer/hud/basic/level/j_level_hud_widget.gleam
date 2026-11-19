// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.level
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LevelHudWidget

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "levelNumberCharArray", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_CHAR_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createhud(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_maxlevel, l_location, l_direction] = jargs
    let l_maxlevel = jr.as_i(l_maxlevel)
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
    jr.new("LevelHudWidget", [l_maxlevel, l_location, l_direction])
}

fn c1_m10__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_inherited(this, "LevelHudWidget", "updateMaxWidth", jr.mul(jr.call(l_font, "getSize_0", []), jr.JInt(4)))
        jr.set_field(this, "offset", jr.as_i(jr.add(jr.call(l_font, "charsWidth_3", [jr.get_field(this, "levelString"), jr.JInt(0), jr.alen(jr.get_field(this, "levelString"))]), jr.call(l_font, "getSize_0", []))))
        jr.call_super("BasicHud", this, "updateMeasurement_1", [l_graphics])
    jr.JNull
}

fn c1_m11__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "levelNumberCharArray", jr.call(jr.get_field(this, "primitiveLongUtil"), "getCharArray_1", [jr.get_field(this, "level")]))
        jr.set_field(this, "levelNumberTotalDigits", jr.as_i(jr.call(jr.get_field(this, "primitiveLongUtil"), "getCurrentTotalDigits_0", [])))
    jr.JNull
}

fn c1_m12__setlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        jr.set_field(this, "level", jr.as_i(l_level))
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m13__nextlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.incr(fn() { jr.get_field(this, "level") }, fn(jv) { jr.set_field(this, "level", jv) }, 1, True)
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m14__previouslevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.incr(fn() { jr.get_field(this, "level") }, fn(jv) { jr.set_field(this, "level", jv) }, -1, True)
        case jr.truth(jr.lt(jr.get_field(this, "level"), jr.JInt(0))) {
            True -> {
            jr.set_field(this, "level", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> Nil
        }
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m15__iscomplete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.le(jr.get_field(this, "level"), jr.get_field(this, "maxlevel"))) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m16__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call_super("BasicHud", this, "paintDX_8", [l_graphics, jr.get_field(this, "levelString"), jr.JInt(0), jr.alen(jr.get_field(this, "levelString")), jr.get_field(this, "levelNumberCharArray"), jr.JInt(0), jr.get_field(this, "levelNumberTotalDigits"), jr.get_field(this, "offset")])
    jr.JNull
}

fn c1_m17__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_maxlevel, l_location, l_direction] = jargs
    let l_maxlevel = jr.as_i(l_maxlevel)
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
        jr.super_init("BasicHud", this, [l_location, l_direction, jr.JInt(2), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "GREY")])
        c1_jfields(this)
        jr.set_field(this, "primitiveLongUtil", jr.call_static("PrimitiveLongUtil", "createPowerOfTen_1", [jr.JInt(1000)]))
        let l__l_e_v_e_l = jr.JStr("Lv ")
        jr.set_field(this, "levelString", jr.call(l__l_e_v_e_l, "toCharArray_0", []))
        jr.set_field(this, "maxlevel", jr.as_i(l_maxlevel))
        jr.set_field(this, "level", jr.as_i(l_maxlevel))
        jr.call(this, "update_0", [])
        jr.set_inherited(this, "LevelHudWidget", "updateMaxHeight", jr.JInt(14))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LevelHudWidget",
        "org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget",
        "BasicHud",
        ["PaintableInterface"],
        False,
        [#("level", jr.JInt(0)), #("maxlevel", jr.JInt(0)), #("levelString", jr.JNull), #("levelNumberCharArray", jr.JNull), #("levelNumberTotalDigits", jr.JInt(0)), #("offset", jr.JInt(0)), #("primitiveLongUtil", jr.JNull)],
        [],
        [
            jr.Method("createHud_3", ["int", "int", "int"], True, c1_m1__createhud), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m10__updatemeasurement), 
            jr.Method("update_0", [], False, c1_m11__update), 
            jr.Method("setLevel_1", ["int"], False, c1_m12__setlevel), 
            jr.Method("nextLevel_0", [], False, c1_m13__nextlevel), 
            jr.Method("previousLevel_0", [], False, c1_m14__previouslevel), 
            jr.Method("isComplete_0", [], False, c1_m15__iscomplete), 
            jr.Method("paint_1", ["Graphics"], False, c1_m16__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m17__paintthreed), 
            jr.Method("jinit_3", ["int", "int", "int"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

