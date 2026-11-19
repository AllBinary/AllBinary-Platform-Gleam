// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseGameStatistics

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.get_static("Integer", "MAX_VALUE")]))
    jr.set_field(this, "updateDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(2000)]))
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.set_field(this, "DEFAULT_SCALE_FACTOR", jr.as_i(jr.get_field(jr.call_static("ScaleFactorFactory", "getInstance_0", []), "DEFAULT_SCALE_FACTOR")))
    jr.set_field(this, "NOT", jr.JStr("Not enough Time to Calculate"))
    jr.set_field(this, "EMPTY_STRING", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "STRING_ARRAY", jr.array_of("L", [jr.JStr(" Total Time: "), jr.get_field(this, "EMPTY_STRING"), jr.JStr(" Total Frames: "), jr.get_field(this, "EMPTY_STRING"), jr.JStr(" Frames/10 Sec: "), jr.get_field(this, "EMPTY_STRING"), jr.JStr(" Total Paints: "), jr.get_field(this, "EMPTY_STRING"), jr.JStr(" Paints/10 Sec: "), jr.get_field(this, "EMPTY_STRING")]))
    jr.set_field(this, "SPACE_CHAR", jr.as_c(jr.JChar(32)))
    jr.set_field(this, "PLUS_CHAR", jr.as_c(jr.JChar(43)))
    jr.set_field(this, "X_CHAR", jr.as_c(jr.JChar(88)))
    jr.set_field(this, "CHAR_ARRAY", jr.array_of("L", [jr.array_of("C", [jr.JChar(70), jr.JChar(114), jr.JChar(97), jr.JChar(109), jr.JChar(101), jr.JChar(115), jr.JChar(47), jr.JChar(49), jr.JChar(48), jr.JChar(32), jr.JChar(83), jr.JChar(101), jr.JChar(99), jr.JChar(58)]), jr.array_of("C", [jr.JChar(88), jr.JChar(88)]), jr.array_of("C", [jr.JChar(80), jr.JChar(97), jr.JChar(105), jr.JChar(110), jr.JChar(116), jr.JChar(115), jr.JChar(47), jr.JChar(49), jr.JChar(48), jr.JChar(32), jr.JChar(83), jr.JChar(101), jr.JChar(99), jr.JChar(58)]), jr.array_of("C", [jr.JChar(88), jr.JChar(88)])]))
    jr.set_field(this, "primitiveLongSingleton", jr.call_static("PrimitiveLongSingleton", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "timeDelayHelper"), "setStartTimeTNT_0", [])
        jr.set_field(this, "totalRefreshes", jr.as_j(jr.JLong(0)))
        jr.set_field(this, "totalFrames", jr.as_j(jr.JLong(0)))
    jr.JNull
}

fn c1_m8__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
    jr.JNull
}

fn c1_m9__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.incr(fn() { jr.get_field(this, "totalFrames") }, fn(jv) { jr.set_field(this, "totalFrames", jv) }, 1, True)
    jr.JNull
}

fn c1_m11__nextrefresh(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.incr(fn() { jr.get_field(this, "totalRefreshes") }, fn(jv) { jr.set_field(this, "totalRefreshes", jv) }, 1, True)
    jr.JNull
}

fn c1_m13__getrefreshrate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_elapsed = jr.as_j(jr.call(jr.get_field(this, "timeDelayHelper"), "getElapsed_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")]))
            case jr.truth(jr.gt(l_elapsed, jr.JLong(1))) {
            True -> {
            let l_time = jr.as_s(jr.to_s(jr.div(jr.get_field(this, "totalRefreshes"), jr.shr(l_elapsed, jr.get_field(this, "DEFAULT_SCALE_FACTOR")))))
            jr.ret(jr.as_s(l_time))
            Nil
        }
            False -> {
            jr.ret(jr.as_s(jr.JInt(0)))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m14__gettimedelayhelper(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "timeDelayHelper")
}

fn c1_m23__to2dchararray(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_total_time = jr.cell(jr.as_j(jr.call(jr.get_field(this, "timeDelayHelper"), "getElapsed_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])))
        jr.set(l_total_time, jr.as_j(jr.shr(jr.get(l_total_time), jr.get_field(this, "DEFAULT_SCALE_FACTOR"))))
        case jr.truth(case jr.truth(jr.gt(jr.get(l_total_time), jr.JLong(0))) { True -> jr.call(jr.get_field(this, "updateDelayHelper"), "isTime_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")]) False -> jr.JBool(False) }) {
            True -> {
            let l_frames_per_sec = jr.as_i(jr.to_i(jr.div(jr.get_field(this, "totalFrames"), jr.get(l_total_time))))
            case jr.truth(jr.lt(l_frames_per_sec, jr.JInt(10))) {
                True -> {
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(1)), jr.JInt(0), jr.get_field(this, "SPACE_CHAR"))
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(1)), jr.JInt(1), jr.aget(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "NUMBER_CHAR_ARRAY"), l_frames_per_sec))
                Nil
            }
                False -> case jr.truth(jr.lt(l_frames_per_sec, jr.JInt(100))) {
                True -> {
                let l_tens = jr.as_i(jr.div(l_frames_per_sec, jr.JInt(10)))
                let l_remove_tens = jr.as_i(jr.mul(l_tens, jr.JInt(10)))
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(1)), jr.JInt(0), jr.aget(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "NUMBER_CHAR_ARRAY"), l_tens))
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(1)), jr.JInt(1), jr.aget(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "NUMBER_CHAR_ARRAY"), jr.sub(l_frames_per_sec, l_remove_tens)))
                Nil
            }
                False -> {
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(1)), jr.JInt(0), jr.get_field(this, "PLUS_CHAR"))
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(1)), jr.JInt(1), jr.get_field(this, "PLUS_CHAR"))
                Nil
            }
            }
            }
            let l_refreshes_per_sec = jr.as_i(jr.to_i(jr.div(jr.get_field(this, "totalRefreshes"), jr.get(l_total_time))))
            case jr.truth(jr.lt(l_refreshes_per_sec, jr.JInt(10))) {
                True -> {
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(3)), jr.JInt(0), jr.get_field(this, "X_CHAR"))
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(3)), jr.JInt(1), jr.aget(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "NUMBER_CHAR_ARRAY"), l_refreshes_per_sec))
                Nil
            }
                False -> case jr.truth(jr.lt(l_refreshes_per_sec, jr.JInt(100))) {
                True -> {
                let l_tens = jr.as_i(jr.div(l_refreshes_per_sec, jr.JInt(10)))
                let l_remove_tens = jr.as_i(jr.mul(l_tens, jr.JInt(10)))
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(3)), jr.JInt(0), jr.aget(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "NUMBER_CHAR_ARRAY"), jr.div(l_refreshes_per_sec, jr.JInt(10))))
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(3)), jr.JInt(1), jr.aget(jr.get_field(jr.get_field(this, "primitiveLongSingleton"), "NUMBER_CHAR_ARRAY"), jr.sub(l_refreshes_per_sec, l_remove_tens)))
                Nil
            }
                False -> {
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(3)), jr.JInt(0), jr.get_field(this, "PLUS_CHAR"))
                jr.aset(jr.aget(jr.get_field(this, "CHAR_ARRAY"), jr.JInt(3)), jr.JInt(1), jr.get_field(this, "PLUS_CHAR"))
                Nil
            }
            }
            }
            Nil
        }
            False -> Nil
        }
    jr.get_field(this, "CHAR_ARRAY")
}

fn c1_m24__tostringarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_total_time = jr.cell(jr.as_j(jr.call(jr.get_field(this, "timeDelayHelper"), "getElapsed_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])))
        jr.set(l_total_time, jr.as_j(jr.div(jr.get(l_total_time), jr.JLong(10000))))
        case jr.truth(jr.gt(jr.get(l_total_time), jr.JLong(0))) {
            True -> {
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(1), jr.call_static("Long", "toString_1", [jr.get(l_total_time)]))
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(3), jr.call_static("Long", "toString_1", [jr.get_field(this, "totalFrames")]))
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(5), jr.call_static("Long", "toString_1", [jr.div(jr.get_field(this, "totalFrames"), jr.get(l_total_time))]))
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(7), jr.call_static("Long", "toString_1", [jr.get_field(this, "totalRefreshes")]))
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(9), jr.call_static("Long", "toString_1", [jr.div(jr.get_field(this, "totalRefreshes"), jr.get(l_total_time))]))
            Nil
        }
            False -> {
            let l_string = jr.get_field(this, "EMPTY_STRING")
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(1), l_string)
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(3), l_string)
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(5), l_string)
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(7), l_string)
            jr.aset(jr.get_field(this, "STRING_ARRAY"), jr.JInt(9), l_string)
            Nil
        }
        }
    jr.get_field(this, "STRING_ARRAY")
}

fn c1_m25__tostringat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total_time] = jargs
    let l_total_time = jr.as_j(l_total_time)
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.aget(jr.get_field(this, "STRING_ARRAY"), jr.JInt(0))])
        jr.call(l_string_buffer, "appendlong_1", [l_total_time])
        jr.call(l_string_buffer, "append_1", [jr.aget(jr.get_field(this, "STRING_ARRAY"), jr.JInt(2))])
        jr.call(l_string_buffer, "appendlong_1", [jr.get_field(this, "totalFrames")])
        jr.call(l_string_buffer, "append_1", [jr.aget(jr.get_field(this, "STRING_ARRAY"), jr.JInt(4))])
        jr.call(l_string_buffer, "appendlong_1", [jr.div(jr.get_field(this, "totalFrames"), l_total_time)])
        case jr.truth(jr.gt(jr.get_field(this, "totalRefreshes"), jr.JLong(0))) {
            True -> {
            jr.call(l_string_buffer, "append_1", [jr.aget(jr.get_field(this, "STRING_ARRAY"), jr.JInt(6))])
            jr.call(l_string_buffer, "appendlong_1", [jr.get_field(this, "totalRefreshes")])
            jr.call(l_string_buffer, "append_1", [jr.aget(jr.get_field(this, "STRING_ARRAY"), jr.JInt(8))])
            jr.call(l_string_buffer, "appendlong_1", [jr.div(jr.get_field(this, "totalRefreshes"), l_total_time)])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "NEW_LINE")])
            Nil
        }
            False -> Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m26__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_total_time = jr.cell(jr.as_j(jr.call(jr.get_field(this, "timeDelayHelper"), "getElapsed_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])))
            jr.set(l_total_time, jr.as_j(jr.div(jr.get(l_total_time), jr.JLong(1000))))
            case jr.truth(jr.gt(jr.get(l_total_time), jr.JLong(0))) {
            True -> {
            jr.ret(jr.call(this, "toStringAt_1", [jr.get(l_total_time)]))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(this, "NOT"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseGameStatistics",
        "org.allbinary.canvas.BaseGameStatistics",
        "Object",
        [],
        False,
        [#("timeDelayHelper", jr.JNull), #("updateDelayHelper", jr.JNull), #("totalRefreshes", jr.JLong(0)), #("totalFrames", jr.JLong(0)), #("gameTickTimeDelayHelper", jr.JNull), #("DEFAULT_SCALE_FACTOR", jr.JInt(0)), #("NOT", jr.JNull), #("EMPTY_STRING", jr.JNull), #("STRING_ARRAY", jr.JNull), #("SPACE_CHAR", jr.JChar(0)), #("PLUS_CHAR", jr.JChar(0)), #("X_CHAR", jr.JChar(0)), #("CHAR_ARRAY", jr.JNull), #("primitiveLongSingleton", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m7__init), 
            jr.Method("add_1", ["String"], False, c1_m8__add), 
            jr.Method("process_0", [], False, c1_m9__process), 
            jr.Method("nextFrame_0", [], False, c1_m10__nextframe), 
            jr.Method("nextRefresh_0", [], False, c1_m11__nextrefresh), 
            jr.Method("getRefreshRate_0", [], False, c1_m13__getrefreshrate), 
            jr.Method("getTimeDelayHelper_0", [], False, c1_m14__gettimedelayhelper), 
            jr.Method("to2DCharArray_0", [], False, c1_m23__to2dchararray), 
            jr.Method("toStringArray_0", [], False, c1_m24__tostringarray), 
            jr.Method("toStringAt_1", ["long"], False, c1_m25__tostringat), 
            jr.Method("toString_0", [], False, c1_m26__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

