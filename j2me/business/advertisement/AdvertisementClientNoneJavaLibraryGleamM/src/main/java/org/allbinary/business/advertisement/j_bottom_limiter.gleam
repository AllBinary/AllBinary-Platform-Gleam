// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BottomLimiter

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BottomLimiter", "instance", jr.new("BottomLimiter", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BottomLimiter", "instance")
}

fn c1_m8__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_lower, l_higher] = jargs
    let l_lower = jr.as_i(l_lower)
    let l_higher = jr.as_i(l_higher)
        jr.set_field(this, "lower", jr.as_i(l_lower))
        jr.set_field(this, "higher", jr.as_i(l_higher))
    jr.JNull
}

fn c1_m9__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_game_ad_state = jr.call(jr.call_static("GameAdStateFactory", "getInstance_0", []), "getCurrentInstance_0", [])
        case jr.truth(jr.call(l_game_ad_state, "isShowingAt_0", [])) {
            True -> {
            jr.set_field(this, "deltaY", jr.as_i(jr.get_field(this, "higher")))
            Nil
        }
            False -> {
            jr.set_field(this, "deltaY", jr.as_i(jr.get_field(this, "lower")))
            Nil
        }
        }
        jr.set_field(this, "bottom", jr.as_i(jr.sub(jr.call(l_display_info, "getLastHeight_0", []), jr.get_field(this, "deltaY"))))
    jr.JNull
}

fn c1_m10__getdeltay(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "deltaY"))
}

fn c1_m11__getbottom(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "bottom"))
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BottomLimiter",
        "org.allbinary.business.advertisement.BottomLimiter",
        "Object",
        [],
        False,
        [#("bottom", jr.JInt(0)), #("deltaY", jr.JInt(0)), #("lower", jr.JInt(0)), #("higher", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_2", ["int", "int"], False, c1_m8__init), 
            jr.Method("update_0", [], False, c1_m9__update), 
            jr.Method("getDeltaY_0", [], False, c1_m10__getdeltay), 
            jr.Method("getBottom_0", [], False, c1_m11__getbottom), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

