// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameTickDisplayInfoSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "lastWidth", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastWidth_0", [])))
    jr.set_field(this, "lastHeight", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHeight_0", [])))
    jr.set_field(this, "lastHalfWidth", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfWidth_0", [])))
    jr.set_field(this, "lastHalfHeight", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfHeight_0", [])))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameTickDisplayInfoSingleton", "instance", jr.new("GameTickDisplayInfoSingleton", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameTickDisplayInfoSingleton", "instance")
}

fn c1_m8__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "lastWidth", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastWidth_0", [])))
        jr.set_field(this, "lastHeight", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHeight_0", [])))
        jr.set_field(this, "lastHalfWidth", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfWidth_0", [])))
        jr.set_field(this, "lastHalfHeight", jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfHeight_0", [])))
    jr.JNull
}

fn c1_m9__getlastwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "lastWidth"))
}

fn c1_m10__getlastheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "lastHeight"))
}

fn c1_m11__getlasthalfwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "lastHalfWidth"))
}

fn c1_m12__getlasthalfheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "lastHalfHeight"))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameTickDisplayInfoSingleton",
        "org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton",
        "Object",
        [],
        False,
        [#("displayInfoSingleton", jr.JNull), #("lastWidth", jr.JInt(0)), #("lastHeight", jr.JInt(0)), #("lastHalfWidth", jr.JInt(0)), #("lastHalfHeight", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("update_0", [], False, c1_m8__update), 
            jr.Method("getLastWidth_0", [], False, c1_m9__getlastwidth), 
            jr.Method("getLastHeight_0", [], False, c1_m10__getlastheight), 
            jr.Method("getLastHalfWidth_0", [], False, c1_m11__getlasthalfwidth), 
            jr.Method("getLastHalfHeight_0", [], False, c1_m12__getlasthalfheight), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

