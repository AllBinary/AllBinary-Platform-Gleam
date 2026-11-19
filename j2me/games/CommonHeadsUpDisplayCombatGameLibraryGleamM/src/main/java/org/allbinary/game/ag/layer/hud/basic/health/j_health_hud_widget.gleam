// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.health
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HealthHudWidget

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.set_field(this, "timeDelayHelper", jr.get_static("NoTimeDelayHelper", "SINGLETON"))
    jr.set_field(this, "slowBeatTimeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(1280)]))
    jr.set_field(this, "mediumBeatTimeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(640)]))
    jr.set_field(this, "fastBeatTimeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(320)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.ne(jr.get_field(this, "xArray"), jr.JNull)) {
            True -> {
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(jr.get_field(this, "xArray"))) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.aset(jr.get_field(this, "xArray"), jr.get(l_index), jr.as_i(jr.add(jr.call_inherited(this, "HealthHudWidget", "getX_0", []), jr.mul(jr.get(l_index), jr.JInt(16)))))
                Nil
            })
                Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m9__setx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x] = jargs
    let l_x = jr.as_i(l_x)
        jr.call_super("BasicHud", this, "setX_1", [l_x])
        jr.call(this, "update_0", [])
    jr.JNull
}

fn c1_m14__onhealthchange(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "max", jr.as_i(jr.div(jr.call(jr.get_field(this, "healthInterface"), "getHealth_0", []), jr.get_field(this, "healthScale"))))
        jr.set_field(this, "timeDelayHelper", jr.get_static("NoTimeDelayHelper", "SINGLETON"))
        case jr.truth(case jr.truth(jr.le(jr.get_field(this, "max"), jr.JInt(1))) { True -> jr.call(jr.get_field(this, "healthInterface"), "isAlive_0", []) False -> jr.JBool(False) }) {
            True -> {
            jr.set_field(this, "max", jr.as_i(jr.JInt(1)))
            case jr.truth(jr.gt(jr.sub(jr.get_field(this, "healthScale"), jr.call(jr.get_field(this, "healthInterface"), "getHealth_0", [])), jr.div(jr.mul(jr.get_field(this, "healthScale"), jr.JInt(2)), jr.JInt(3)))) {
                True -> {
                jr.set_field(this, "timeDelayHelper", jr.get_field(this, "slowBeatTimeDelayHelper"))
                Nil
            }
                False -> case jr.truth(jr.gt(jr.sub(jr.get_field(this, "healthScale"), jr.call(jr.get_field(this, "healthInterface"), "getHealth_0", [])), jr.div(jr.get_field(this, "healthScale"), jr.JInt(3)))) {
                True -> {
                jr.set_field(this, "timeDelayHelper", jr.get_field(this, "mediumBeatTimeDelayHelper"))
                Nil
            }
                False -> {
                jr.set_field(this, "timeDelayHelper", jr.get_field(this, "fastBeatTimeDelayHelper"))
                Nil
            }
            }
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_inherited(this, "HealthHudWidget", "myFontProcessor"), "process_1", [l_graphics])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "max")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTime_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])) {
                True -> {
                jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.aget(jr.get_field(this, "xArray"), jr.get(l_index)), jr.call_inherited(this, "HealthHudWidget", "getY_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m16__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_health_interface, l_location, l_direction] = jargs
    let l_location = jr.as_i(l_location)
    let l_direction = jr.as_i(l_direction)
        jr.super_init("BasicHud", this, [l_location, l_direction, jr.JInt(2), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")])
        c1_jfields(this)
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.set_field(this, "healthInterface", l_health_interface)
        jr.call(jr.get_field(this, "healthInterface"), "addListener_1", [this])
        jr.set_field(this, "healthScale", jr.as_i(jr.add(jr.div(jr.call(jr.get_field(this, "healthInterface"), "getMaxHealth_0", []), jr.JInt(6)), jr.JInt(1))))
        jr.call(this, "onHealthChange_0", [])
        jr.set_inherited(this, "HealthHudWidget", "updateMaxWidth", jr.mul(jr.call(l_health_interface, "getMaxHealth_0", []), jr.JInt(16)))
        jr.set_inherited(this, "HealthHudWidget", "updateMaxHeight", jr.JInt(16))
        jr.set_field(this, "xArray", jr.new_array("I", 1, [jr.JInt(30)]))
        jr.call(this, "update_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HealthHudWidget",
        "org.allbinary.game.ag.layer.hud.basic.health.HealthHudWidget",
        "BasicHud",
        ["PaintableInterface", "HealthListenerInterface"],
        False,
        [#("healthScale", jr.JInt(0)), #("animationInterface", jr.JNull), #("healthInterface", jr.JNull), #("max", jr.JInt(0)), #("xArray", jr.JNull), #("gameTickTimeDelayHelper", jr.JNull), #("timeDelayHelper", jr.JNull), #("slowBeatTimeDelayHelper", jr.JNull), #("mediumBeatTimeDelayHelper", jr.JNull), #("fastBeatTimeDelayHelper", jr.JNull)],
        [],
        [
            jr.Method("update_0", [], False, c1_m8__update), 
            jr.Method("setX_1", ["int"], False, c1_m9__setx), 
            jr.Method("onHealthChange_0", [], False, c1_m14__onhealthchange), 
            jr.Method("paint_1", ["Graphics"], False, c1_m15__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m16__paintthreed), 
            jr.Method("jinit_4", ["Animation", "Health", "int", "int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

