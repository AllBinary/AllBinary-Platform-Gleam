// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic.time
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HudTimer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "startTime", jr.as_j(jr.to_j(jr.JInt(-1))))
    jr.set_field(this, "hundrethsString", jr.get_field(jr.call_static("PrimitiveLongSingleton", "getInstance_0", []), "ZERO"))
    jr.set_field(this, "totalDigits", jr.as_i(jr.JInt(1)))
    jr.set_field(this, "MAX", jr.array_of("C", [jr.JChar(76), jr.JChar(79), jr.JChar(76)]))
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m11__start(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "hundredthTime", jr.as_j(jr.JLong(0)))
        jr.set_field(this, "startTime", jr.as_j(jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")))
    jr.JNull
}

fn c1_m12__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "hundredthTime"))
}

fn c1_m13__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_last_lower_time = jr.as_j(jr.get_field(this, "hundredthTime"))
        let l_current_time = jr.cell(jr.as_j(jr.sub(jr.add(jr.get_field(this, "modifier"), jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")), jr.get_field(this, "startTime"))))
        case jr.truth(jr.lt(jr.get(l_current_time), jr.JLong(0))) {
            True -> {
            jr.set(l_current_time, jr.as_j(jr.JLong(0)))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "hundredthTime", jr.as_j(jr.div(jr.get(l_current_time), jr.JLong(100))))
        case jr.truth(jr.ge(jr.get_field(this, "hundredthTime"), jr.get_field(this, "maxTime"))) {
            True -> {
            case jr.truth(jr.gt(jr.get_field(this, "startTime"), jr.JLong(0))) {
                True -> {
                jr.set_field(this, "hundrethsString", jr.get_field(this, "MAX"))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> case jr.truth(jr.ne(l_last_lower_time, jr.get_field(this, "hundredthTime"))) {
            True -> {
            jr.set_field(this, "hundrethsString", jr.call(jr.get_field(this, "primitiveLongUtil"), "getCharArray_1", [jr.to_i(jr.get_field(this, "hundredthTime"))]))
            jr.set_field(this, "totalDigits", jr.as_i(jr.call(jr.get_field(this, "primitiveLongUtil"), "getCurrentTotalDigits_0", [])))
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_m14__reduce(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.compound(fn() { jr.get_field(this, "modifier") }, fn(jv) { jr.sub(jv, jr.to_j(l_value)) }, fn(jv) { jr.set_field(this, "modifier", jv) })
    jr.JNull
}

fn c1_m15__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.compound(fn() { jr.get_field(this, "modifier") }, fn(jv) { jr.add(jv, jr.to_j(l_value)) }, fn(jv) { jr.set_field(this, "modifier", jv) })
    jr.JNull
}

fn c1_m16__gettimechars(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "hundrethsString")
}

fn c1_m17__getcurrenttotaldigits(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "totalDigits"))
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_time] = jargs
    let l_max_time = jr.as_i(l_max_time)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "primitiveLongUtil", jr.call_static("PrimitiveLongUtil", "createPowerOfTen_1", [l_max_time]))
        jr.set_field(this, "maxTime", jr.as_j(jr.to_j(l_max_time)))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HudTimer",
        "org.allbinary.game.ag.layer.hud.basic.time.HudTimer",
        "Object",
        [],
        False,
        [#("startTime", jr.JLong(0)), #("hundredthTime", jr.JLong(0)), #("maxTime", jr.JLong(0)), #("modifier", jr.JLong(0)), #("hundrethsString", jr.JNull), #("totalDigits", jr.JInt(0)), #("primitiveLongUtil", jr.JNull), #("MAX", jr.JNull), #("gameTickTimeDelayHelper", jr.JNull)],
        [],
        [
            jr.Method("start_0", [], False, c1_m11__start), 
            jr.Method("get_0", [], False, c1_m12__get), 
            jr.Method("update_0", [], False, c1_m13__update), 
            jr.Method("reduce_1", ["int"], False, c1_m14__reduce), 
            jr.Method("add_1", ["int"], False, c1_m15__add), 
            jr.Method("getTimeChars_0", [], False, c1_m16__gettimechars), 
            jr.Method("getCurrentTotalDigits_0", [], False, c1_m17__getcurrenttotaldigits), 
            jr.Method("jinit_1", ["int"], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

