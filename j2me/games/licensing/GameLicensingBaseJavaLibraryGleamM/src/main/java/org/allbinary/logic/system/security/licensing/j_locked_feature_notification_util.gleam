// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LockedFeatureNotificationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameNotificationEvent", jr.new("GameNotificationEvent", [this, jr.get_field(jr.call_static("LicenseStrings", "getInstance_0", []), "LOCKED"), jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(3)]), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "RED"), jr.get_field(jr.call_static("BooleanFactory", "getInstance_0", []), "FALSE")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LockedFeatureNotificationUtil", "instance", jr.new("LockedFeatureNotificationUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LockedFeatureNotificationUtil", "instance")
}

fn c1_m4__fire(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("ErrorSound", "getInstance_0", [])])
        jr.call(jr.call_static("GameNotificationEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "gameNotificationEvent")])
    jr.JNull
}

fn c1_m5__firewithcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("ErrorSound", "getInstance_0", [])])
        jr.call(jr.get_field(this, "gameNotificationEvent"), "setBasicColorP_1", [l_basic_color])
        jr.call(jr.call_static("GameNotificationEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "gameNotificationEvent")])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LockedFeatureNotificationUtil",
        "org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil",
        "Object",
        [],
        False,
        [#("gameNotificationEvent", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("fire_0", [], False, c1_m4__fire), 
            jr.Method("fireWithColor_1", ["BasicColor"], False, c1_m5__firewithcolor), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

