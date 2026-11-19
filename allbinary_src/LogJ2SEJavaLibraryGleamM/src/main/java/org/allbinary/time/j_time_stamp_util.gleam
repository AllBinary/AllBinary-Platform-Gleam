// Generated Code Do Not Modify
// package org.allbinary.time
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TimeStampUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "simpleDataFormat", jr.new("SimpleDateFormat", [jr.JStr("yyyy-MM-dd HH:mm:ss.SSS")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TimeStampUtil", "instance", jr.new("TimeStampUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TimeStampUtil", "instance")
}

fn c1_m5__getasstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_calendar = jr.call_static("Calendar", "getInstance_0", [])
        let l_date = jr.call(l_calendar, "getTime_0", [])
    jr.call(jr.get_field(this, "simpleDataFormat"), "format_1", [l_date])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TimeStampUtil",
        "org.allbinary.time.TimeStampUtil",
        "Object",
        [],
        False,
        [#("simpleDataFormat", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getAsString_0", [], False, c1_m5__getasstring), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

