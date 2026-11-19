// Generated Code Do Not Modify
// package org.allbinary.time
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TimeUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TimeUtil", "instance", jr.new("TimeUtil", []))
    jr.set_static("TimeUtil", "calendar", jr.call_static("Calendar", "getInstance_0", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TimeUtil", "instance")
}

fn c1_m3__setcalendar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_calendar, l_year_string, l_month_string, l_day_string, l_hour_string] = jargs
        let l_year = jr.as_i(jr.call(jr.new("Integer", [l_year_string]), "intValue_0", []))
        let l_month = jr.as_i(jr.call(jr.new("Integer", [l_month_string]), "intValue_0", []))
        let l_day = jr.as_i(jr.call(jr.new("Integer", [l_day_string]), "intValue_0", []))
        let l_hour = jr.as_i(jr.call(jr.new("Integer", [l_hour_string]), "intValue_0", []))
        jr.call(l_calendar, "set_5", [l_year, l_month, l_day, l_hour, jr.JInt(0)])
    jr.JNull
}

fn c1_m4__setcalendarwithtime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_calendar, l_year_string, l_month_string, l_day_string, l_hour_string, l_minute_string, l_second_string] = jargs
        let l_year = jr.as_i(jr.call(jr.new("Integer", [l_year_string]), "intValue_0", []))
        let l_month = jr.as_i(jr.call(jr.new("Integer", [l_month_string]), "intValue_0", []))
        let l_day = jr.as_i(jr.call(jr.new("Integer", [l_day_string]), "intValue_0", []))
        let l_hour = jr.as_i(jr.call(jr.new("Integer", [l_hour_string]), "intValue_0", []))
        let l_minute = jr.as_i(jr.call(jr.new("Integer", [l_minute_string]), "intValue_0", []))
        let l_second = jr.as_i(jr.call(jr.new("Integer", [l_second_string]), "intValue_0", []))
        jr.call(l_calendar, "set_6", [l_year, l_month, l_day, l_hour, l_minute, l_second])
    jr.JNull
}

fn c1_m5__setexpirationcalendar(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_calendar, l_years_string, l_months_string, l_days_string, l_hours_string, l_minutes_string, l_seconds_string] = jargs
        let l_year = jr.as_i(jr.add(jr.call(l_calendar, "get_1", [jr.get_static("Calendar", "YEAR")]), jr.call(jr.new("Integer", [l_years_string]), "intValue_0", [])))
        let l_month = jr.as_i(jr.add(jr.call(l_calendar, "get_1", [jr.get_static("Calendar", "MONTH")]), jr.call(jr.new("Integer", [l_months_string]), "intValue_0", [])))
        let l_day = jr.as_i(jr.add(jr.call(l_calendar, "get_1", [jr.get_static("Calendar", "DAY_OF_MONTH")]), jr.call(jr.new("Integer", [l_days_string]), "intValue_0", [])))
        let l_hour = jr.as_i(jr.add(jr.call(l_calendar, "get_1", [jr.get_static("Calendar", "HOUR")]), jr.call(jr.new("Integer", [l_hours_string]), "intValue_0", [])))
        let l_minute = jr.as_i(jr.add(jr.call(l_calendar, "get_1", [jr.get_static("Calendar", "MINUTE")]), jr.call(jr.new("Integer", [l_minutes_string]), "intValue_0", [])))
        let l_second = jr.as_i(jr.add(jr.call(l_calendar, "get_1", [jr.get_static("Calendar", "SECOND")]), jr.call(jr.new("Integer", [l_seconds_string]), "intValue_0", [])))
        jr.call(l_calendar, "set_6", [l_year, l_month, l_day, l_hour, l_minute, l_second])
    jr.JNull
}

fn c1_m7__gettotaltime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_year_string, l_month_string, l_day_string, l_hour_string, l_minute_string, l_second_string] = jargs
        let l_time = jr.as_j(jr.call(jr.get_static("TimeUtil", "calendar"), "getTimeInMillis_0", []))
        jr.call(this, "setExpirationCalendar_7", [jr.get_static("TimeUtil", "calendar"), l_year_string, l_month_string, l_day_string, l_hour_string, l_minute_string, l_second_string])
        let l_time_delta = jr.as_j(jr.call(jr.get_static("TimeUtil", "calendar"), "getTimeInMillis_0", []))
    jr.as_j(jr.sub(l_time_delta, l_time))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TimeUtil",
        "org.allbinary.time.TimeUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull), #("calendar", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setCalendar_5", ["Calendar", "String", "String", "String", "String"], False, c1_m3__setcalendar), 
            jr.Method("setCalendarWithTime_7", ["Calendar", "String", "String", "String", "String", "String", "String"], False, c1_m4__setcalendarwithtime), 
            jr.Method("setExpirationCalendar_7", ["Calendar", "String", "String", "String", "String", "String", "String"], False, c1_m5__setexpirationcalendar), 
            jr.Method("getTotalTime_6", ["String", "String", "String", "String", "String", "String"], False, c1_m7__gettotaltime), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

