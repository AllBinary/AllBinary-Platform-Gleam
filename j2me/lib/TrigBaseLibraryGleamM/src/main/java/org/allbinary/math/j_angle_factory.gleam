// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AngleFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "TOTAL_ANGLE", jr.as_s(jr.JInt(360)))
    jr.set_field(this, "QUARTER_TOTAL_ANGLE", jr.as_s(jr.JInt(90)))
    jr.set_field(this, "angleArray", jr.new_array("L", 1, [jr.to_i(jr.get_field(this, "TOTAL_ANGLE"))]))
    jr.set_field(this, "NEGATIVE_ONE", jr.as_s(jr.to_s(jr.JInt(-1))))
    jr.set_field(this, "NOT_ANGLE", jr.new("NamedAngle", [jr.get_field(this, "NEGATIVE_ONE"), jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "EMPTY")]))
    jr.set_field(this, "frameUtil", jr.call_static("FrameUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AngleFactory", "instance", jr.new("AngleFactory", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AngleFactory", "instance")
}

fn c1_m15__getat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_adjusted_index = jr.as_i(jr.call(jr.get_field(this, "frameUtil"), "adjustAngleToFrameAngle_1", [l_index]))
    jr.aget(jr.get_field(this, "angleArray"), l_adjusted_index)
}

fn c1_m16__getclosestdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    let l_angle = jr.as_i(l_angle)
    jr.method(fn() {
            case jr.truth(case jr.truth(case jr.truth(jr.ge(l_angle, jr.JInt(315))) { True -> jr.lt(l_angle, jr.JInt(360)) False -> jr.JBool(False) }) { True -> jr.JBool(True) False -> case jr.truth(jr.ge(l_angle, jr.JInt(0))) { True -> jr.lt(l_angle, jr.JInt(45)) False -> jr.JBool(False) } }) {
            True -> {
            jr.ret(jr.get_field(this, "UP"))
            Nil
        }
            False -> case jr.truth(case jr.truth(jr.ge(l_angle, jr.JInt(45))) { True -> jr.lt(l_angle, jr.JInt(135)) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.get_field(this, "RIGHT"))
            Nil
        }
            False -> case jr.truth(case jr.truth(jr.ge(l_angle, jr.JInt(135))) { True -> jr.lt(l_angle, jr.JInt(225)) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.get_field(this, "DOWN"))
            Nil
        }
            False -> case jr.truth(case jr.truth(jr.ge(l_angle, jr.JInt(225))) { True -> jr.lt(l_angle, jr.JInt(315)) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.get_field(this, "LEFT"))
            Nil
        }
            False -> Nil
        }
        }
        }
        }
            jr.throw(jr.new("RuntimeException", []))
        jr.JNull
    })
}

fn c1_m17__getgeneraldirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "NOT_ANGLE")
}

fn c1_m18__main(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_args] = jargs
        let l_string_maker = jr.new("StringMaker", [])
        let l_angle_factory = jr.call_static("AngleFactory", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.JInt(360)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.call(jr.call(jr.call(l_string_maker, "appendint_1", [jr.get(l_index)]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "FORWARD_SLASH")]), "appendshort_1", [jr.call(jr.call(l_angle_factory, "getClosestDirection_1", [jr.get(l_index)]), "getValue_0", [])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "NEW_LINE")])
            Nil
        })
            Nil
        }
        jr.call(jr.call_static("LogUtil", "getInstance_0", []), "putF_3", [jr.call(l_string_maker, "toString_0", []), jr.JStr("main"), jr.JStr("main")])
    jr.JNull
}

fn c1_jinit13(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_common_phone_strings = jr.call_static("CommonPhoneStrings", "getInstance_0", [])
        let l_total = jr.as_s(jr.to_s(jr.alen(jr.get_field(this, "angleArray"))))
        jr.set_field(this, "UP", jr.new("NamedAngle", [jr.to_s(jr.JInt(0)), jr.get_field(l_common_phone_strings, "UP")]))
        jr.aset(jr.get_field(this, "angleArray"), jr.JInt(0), jr.get_field(this, "UP"))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(1)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.JInt(90)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "angleArray"), jr.get(l_index), jr.new("Angle", [jr.to_s(jr.get(l_index))]))
            Nil
        })
            Nil
        }
        jr.set_field(this, "RIGHT", jr.new("NamedAngle", [jr.to_s(jr.JInt(90)), jr.get_field(l_common_phone_strings, "RIGHT")]))
        jr.aset(jr.get_field(this, "angleArray"), jr.JInt(90), jr.get_field(this, "RIGHT"))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(91)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.JInt(180)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "angleArray"), jr.get(l_index), jr.new("Angle", [jr.to_s(jr.get(l_index))]))
            Nil
        })
            Nil
        }
        jr.set_field(this, "DOWN", jr.new("NamedAngle", [jr.to_s(jr.JInt(180)), jr.get_field(l_common_phone_strings, "DOWN")]))
        jr.aset(jr.get_field(this, "angleArray"), jr.JInt(180), jr.get_field(this, "DOWN"))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(181)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.JInt(270)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "angleArray"), jr.get(l_index), jr.new("Angle", [jr.to_s(jr.get(l_index))]))
            Nil
        })
            Nil
        }
        jr.set_field(this, "LEFT", jr.new("NamedAngle", [jr.to_s(jr.JInt(270)), jr.get_field(l_common_phone_strings, "LEFT")]))
        jr.aset(jr.get_field(this, "angleArray"), jr.JInt(270), jr.get_field(this, "LEFT"))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(271)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.to_i(l_total)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "angleArray"), jr.get(l_index), jr.new("Angle", [jr.to_s(jr.get(l_index))]))
            Nil
        })
            Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AngleFactory",
        "org.allbinary.math.AngleFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("TOTAL_ANGLE", jr.JShort(0)), #("QUARTER_TOTAL_ANGLE", jr.JShort(0)), #("angleArray", jr.JNull), #("NEGATIVE_ONE", jr.JShort(0)), #("NOT_ANGLE", jr.JNull), #("DOWN", jr.JNull), #("UP", jr.JNull), #("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("frameUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getAt_1", ["int"], False, c1_m15__getat), 
            jr.Method("getClosestDirection_1", ["int"], False, c1_m16__getclosestdirection), 
            jr.Method("getGeneralDirection_0", [], False, c1_m17__getgeneraldirection), 
            jr.Method("main_1", ["StringArr"], True, c1_m18__main), 
            jr.Method("jinit_0", [], False, c1_jinit13)],
        c1_jfields,
        c1_jclinit,
    )
}

