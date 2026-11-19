// Generated Code Do Not Modify
// package org.allbinary.game.health
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HealthBarAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicColorFactory", jr.call_static("BasicColorFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__onhealthchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_x2] = jargs
    let l_new_x2 = jr.as_i(l_new_x2)
        jr.set_field(this, "x2", jr.as_i(l_new_x2))
        let l_quarter = jr.as_i(jr.shr(jr.call(jr.get_field(this, "allbinaryLayer"), "getWidth_0", []), jr.JInt(2)))
        case jr.truth(jr.gt(jr.get_field(this, "x2"), jr.mul(l_quarter, jr.JInt(3)))) {
            True -> {
            jr.set_inherited(this, "HealthBarAnimation", "basicColor", jr.get_field(jr.get_field(this, "basicColorFactory"), "GREEN"))
            jr.set_inherited(this, "HealthBarAnimation", "colorP", jr.call(jr.get_inherited(this, "HealthBarAnimation", "basicColor"), "intValue_0", []))
            Nil
        }
            False -> case jr.truth(jr.gt(jr.get_field(this, "x2"), jr.mul(l_quarter, jr.JInt(2)))) {
            True -> {
            jr.set_inherited(this, "HealthBarAnimation", "basicColor", jr.get_field(jr.get_field(this, "basicColorFactory"), "YELLOW"))
            jr.set_inherited(this, "HealthBarAnimation", "colorP", jr.call(jr.get_inherited(this, "HealthBarAnimation", "basicColor"), "intValue_0", []))
            Nil
        }
            False -> case jr.truth(jr.gt(jr.get_field(this, "x2"), l_quarter)) {
            True -> {
            jr.set_inherited(this, "HealthBarAnimation", "basicColor", jr.get_field(jr.get_field(this, "basicColorFactory"), "ORANGE"))
            jr.set_inherited(this, "HealthBarAnimation", "colorP", jr.call(jr.get_inherited(this, "HealthBarAnimation", "basicColor"), "intValue_0", []))
            Nil
        }
            False -> {
            jr.set_inherited(this, "HealthBarAnimation", "basicColor", jr.get_field(jr.get_field(this, "basicColorFactory"), "RED"))
            jr.set_inherited(this, "HealthBarAnimation", "colorP", jr.call(jr.get_inherited(this, "HealthBarAnimation", "basicColor"), "intValue_0", []))
            Nil
        }
        }
        }
        }
    jr.JNull
}

fn c1_m8__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_basic_hud_factory = jr.call_static("BasicHudFactory", "getInstance_0", [])
            case jr.truth(jr.eq(jr.get_field(this, "location"), jr.get_field(l_basic_hud_factory, "TOPLEFT"))) {
            True -> {
            jr.ret(jr.as_i(jr.sub(jr.call(jr.call(jr.get_field(this, "allbinaryLayer"), "getViewPosition_0", []), "getY_0", []), jr.JInt(4))))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "location"), jr.get_field(l_basic_hud_factory, "BOTTOMLEFT"))) {
            True -> {
            jr.ret(jr.as_i(jr.add(jr.call(jr.call(jr.get_field(this, "allbinaryLayer"), "getViewPosition_0", []), "getY2_0", []), jr.JInt(4))))
            Nil
        }
            False -> Nil
        }
        }
            jr.ret(jr.as_i(jr.JInt(-1)))
        jr.JNull
    })
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_location] = jargs
    let l_location = jr.as_i(l_location)
    jr.super_init("Animation", this, [])
    c1_jfields(this)
        jr.set_field(this, "allbinaryLayer", l_layer_interface)
        jr.set_field(this, "location", jr.as_i(l_location))
        let l_basic_hud_factory = jr.call_static("BasicHudFactory", "getInstance_0", [])
        case jr.truth(case jr.truth(jr.ne(jr.get_field(this, "location"), jr.get_field(l_basic_hud_factory, "TOPLEFT"))) { True -> jr.ne(jr.get_field(this, "location"), jr.get_field(l_basic_hud_factory, "BOTTOMLEFT")) False -> jr.JBool(False) }) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Location Not Valid")]))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(jr.call(l_layer_interface, "getWidth_0", []), jr.JInt(40))) {
            True -> {
            jr.set_field(this, "thickness", jr.as_i(jr.JInt(3)))
            Nil
        }
            False -> case jr.truth(jr.gt(jr.call(l_layer_interface, "getWidth_0", []), jr.JInt(20))) {
            True -> {
            jr.set_field(this, "thickness", jr.as_i(jr.JInt(2)))
            Nil
        }
            False -> {
            jr.set_field(this, "thickness", jr.as_i(jr.JInt(1)))
            Nil
        }
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HealthBarAnimation",
        "org.allbinary.game.health.HealthBarAnimation",
        "Animation",
        [],
        False,
        [#("basicColorFactory", jr.JNull), #("x2", jr.JInt(0)), #("thickness", jr.JInt(0)), #("location", jr.JInt(0)), #("allbinaryLayer", jr.JNull)],
        [],
        [
            jr.Method("onHealthChange_1", ["int"], False, c1_m7__onhealthchange), 
            jr.Method("getY_0", [], False, c1_m8__gety), 
            jr.Method("jinit_2", ["AllBinaryLayer", "int"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

