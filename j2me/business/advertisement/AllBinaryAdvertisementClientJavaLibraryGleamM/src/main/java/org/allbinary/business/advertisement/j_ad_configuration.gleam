// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AdConfiguration

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getvalidadspots(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new_array("L", 1, [jr.JInt(0)])
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_state] = jargs
    jr.JNull
}

fn c1_m7__processdemo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_state] = jargs
    let l_state = jr.as_i(l_state)
    jr.JNull
}

fn c1_m8__setshowads(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__settoggleads(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_show_ads] = jargs
    jr.JNull
}

fn c1_m10__isshowads(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_advert_id_array] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "INNERACTIVE", jr.aget(l_advert_id_array, jr.JInt(0)))
        jr.set_field(this, "ADMOB", jr.aget(l_advert_id_array, jr.JInt(1)))
        jr.set_field(this, "LEADBOLT", jr.aget(l_advert_id_array, jr.JInt(2)))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AdConfiguration",
        "org.allbinary.business.advertisement.AdConfiguration",
        "Object",
        [],
        False,
        [#("INNERACTIVE", jr.JNull), #("LEADBOLT", jr.JNull), #("ADMOB", jr.JNull)],
        [],
        [
            jr.Method("getValidAdSpots_0", [], False, c1_m5__getvalidadspots), 
            jr.Method("process_1", ["GameState"], False, c1_m6__process), 
            jr.Method("processDemo_1", ["int"], False, c1_m7__processdemo), 
            jr.Method("setShowAds_0", [], False, c1_m8__setshowads), 
            jr.Method("setToggleAds_1", ["boolean"], False, c1_m9__settoggleads), 
            jr.Method("isShowAds_0", [], False, c1_m10__isshowads), 
            jr.Method("jinit_1", ["ObjectArr"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

