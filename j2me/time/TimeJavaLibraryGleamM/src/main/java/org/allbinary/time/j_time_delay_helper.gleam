// Generated Code Do Not Modify
// package org.allbinary.time
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TimeDelayHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "startTime", jr.as_j(jr.to_j(jr.JInt(-1))))
    jr.set_field(this, "elapsedTimeAtPause", jr.as_j(jr.get_static("Long", "MIN_VALUE")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__istimetnt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_current_time = jr.as_j(jr.call_static("System", "currentTimeMillis_0", []))
            case jr.truth(jr.gt(jr.sub(l_current_time, jr.get_field(this, "startTime")), jr.to_j(jr.get_field(this, "delay")))) {
            True -> {
            jr.set_field(this, "startTime", jr.as_j(l_current_time))
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m6__istimesincetnt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_delay] = jargs
    let l_delay = jr.as_i(l_delay)
    jr.method(fn() {
            let l_current_time = jr.as_j(jr.call_static("System", "currentTimeMillis_0", []))
            case jr.truth(jr.gt(jr.sub(l_current_time, jr.get_field(this, "startTime")), jr.to_j(l_delay))) {
            True -> {
            jr.set_field(this, "startTime", jr.as_j(l_current_time))
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m7__istime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_time] = jargs
    let l_current_time = jr.as_j(l_current_time)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.sub(l_current_time, jr.get_field(this, "startTime")), jr.to_j(jr.get_field(this, "delay")))) {
            True -> {
            jr.set_field(this, "startTime", jr.as_j(l_current_time))
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m8__istimewithoutreset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_time] = jargs
    let l_current_time = jr.as_j(l_current_time)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.sub(l_current_time, jr.get_field(this, "startTime")), jr.to_j(jr.get_field(this, "delay")))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m9__istimesince(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_delay, l_current_time] = jargs
    let l_delay = jr.as_i(l_delay)
    let l_current_time = jr.as_j(l_current_time)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.sub(l_current_time, jr.get_field(this, "startTime")), jr.to_j(jr.get_field(this, "delay")))) {
            True -> {
            jr.set_field(this, "startTime", jr.as_j(l_current_time))
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m10__getelapsedtnt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.sub(jr.call_static("System", "currentTimeMillis_0", []), jr.get_field(this, "startTime")))
}

fn c1_m11__getelapsed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_time] = jargs
    let l_current_time = jr.as_j(l_current_time)
    jr.as_j(jr.sub(l_current_time, jr.get_field(this, "startTime")))
}

fn c1_m12__iselapsed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_time, l_time] = jargs
    let l_current_time = jr.as_j(l_current_time)
    let l_time = jr.as_j(l_time)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.call(this, "getElapsed_1", [l_current_time]), l_time)) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m13__iselapsedtnt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_time] = jargs
    let l_time = jr.as_j(l_time)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.call(this, "getElapsedTNT_0", []), l_time)) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m14__setstarttime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_start_time] = jargs
    let l_start_time = jr.as_j(l_start_time)
        jr.set_field(this, "startTime", jr.as_j(l_start_time))
    jr.JNull
}

fn c1_m15__getstarttime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "startTime"))
}

fn c1_m16__setstarttimetnt(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "startTime", jr.as_j(jr.call_static("System", "currentTimeMillis_0", [])))
    jr.JNull
}

fn c1_m17__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "elapsedTimeAtPause", jr.as_j(jr.call(this, "getElapsedTNT_0", [])))
        jr.set_field(this, "startTime", jr.as_j(jr.get_static("Long", "MAX_VALUE")))
    jr.JNull
}

fn c1_m18__resume(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.ne(jr.get_field(this, "elapsedTimeAtPause"), jr.get_static("Long", "MIN_VALUE"))) {
            True -> {
            jr.set_field(this, "startTime", jr.as_j(jr.add(jr.call_static("System", "currentTimeMillis_0", []), jr.get_field(this, "elapsedTimeAtPause"))))
            jr.set_field(this, "elapsedTimeAtPause", jr.as_j(jr.get_static("Long", "MIN_VALUE")))
            jr.call(this, "setStartTimeTNT_0", [])
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m19__tostringat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_time] = jargs
    let l_current_time = jr.as_j(l_current_time)
    jr.method(fn() {
            let l_elapsed = jr.as_j(jr.call(this, "getElapsed_1", [l_current_time]))
            case jr.truth(jr.gt(l_elapsed, jr.JLong(0))) {
            True -> {
            let l_common_labels = jr.call_static("CommonLabels", "getInstance_0", [])
            let l_elapsed_as_string = jr.call_static("Long", "toString_1", [l_elapsed])
            jr.ret(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(l_common_labels, "START")]), "appendlong_1", [jr.get_field(this, "startTime")]), "append_1", [jr.get_field(l_common_labels, "CURRENT")]), "appendlong_1", [l_current_time]), "append_1", [jr.get_field(l_common_labels, "ELAPSED")]), "append_1", [l_elapsed_as_string]), "toString_0", []))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m20__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_current_time = jr.as_j(jr.call_static("System", "currentTimeMillis_0", []))
            let l_elapsed = jr.as_j(jr.call(this, "getElapsed_1", [l_current_time]))
            case jr.truth(jr.gt(l_elapsed, jr.JLong(0))) {
            True -> {
            let l_common_labels = jr.call_static("CommonLabels", "getInstance_0", [])
            let l_elapsed_as_string = jr.call_static("Long", "toString_1", [l_elapsed])
            jr.ret(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(l_common_labels, "START")]), "appendlong_1", [jr.get_field(this, "startTime")]), "append_1", [jr.get_field(l_common_labels, "CURRENT")]), "appendlong_1", [l_current_time]), "append_1", [jr.get_field(l_common_labels, "ELAPSED")]), "append_1", [l_elapsed_as_string]), "toString_0", []))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_delay] = jargs
    let l_delay = jr.as_i(l_delay)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "delay", jr.as_i(l_delay))
        jr.call(this, "setStartTimeTNT_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TimeDelayHelper",
        "org.allbinary.time.TimeDelayHelper",
        "Object",
        [],
        False,
        [#("startTime", jr.JLong(0)), #("elapsedTimeAtPause", jr.JLong(0)), #("delay", jr.JInt(0))],
        [],
        [
            jr.Method("isTimeTNT_0", [], False, c1_m5__istimetnt), 
            jr.Method("isTimeSinceTNT_1", ["int"], False, c1_m6__istimesincetnt), 
            jr.Method("isTime_1", ["long"], False, c1_m7__istime), 
            jr.Method("isTimeWithoutReset_1", ["long"], False, c1_m8__istimewithoutreset), 
            jr.Method("isTimeSince_2", ["int", "long"], False, c1_m9__istimesince), 
            jr.Method("getElapsedTNT_0", [], False, c1_m10__getelapsedtnt), 
            jr.Method("getElapsed_1", ["long"], False, c1_m11__getelapsed), 
            jr.Method("isElapsed_2", ["long", "long"], False, c1_m12__iselapsed), 
            jr.Method("isElapsedTNT_1", ["long"], False, c1_m13__iselapsedtnt), 
            jr.Method("setStartTime_1", ["long"], False, c1_m14__setstarttime), 
            jr.Method("getStartTime_0", [], False, c1_m15__getstarttime), 
            jr.Method("setStartTimeTNT_0", [], False, c1_m16__setstarttimetnt), 
            jr.Method("pause_0", [], False, c1_m17__pause), 
            jr.Method("resume_0", [], False, c1_m18__resume), 
            jr.Method("toStringAt_1", ["long"], False, c1_m19__tostringat), 
            jr.Method("toString_0", [], False, c1_m20__tostring), 
            jr.Method("jinit_1", ["int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

