// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameAdStateBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "advertisementsP", jr.new("Advertisements", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__initviewarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_view_array] = jargs
    jr.JNull
}

fn c1_m6__onstart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call(this, "init_0", [])
    jr.JNull
}

fn c1_m7__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__isshowingatlocation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_location] = jargs
    let l_location = jr.as_i(l_location)
    jr.JBool(False)
}

fn c1_m9__isshowingat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m10__show(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__hide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m12__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m13__processadstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_state, l_game_type] = jargs
    jr.JNull
}

fn c1_m14__processpageadstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m15__playingadstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m16__playingadstatewh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m17__notplayingadstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m18__setgameisready(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_is_ready] = jargs
    jr.JNull
}

fn c1_m19__isgameisready(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m20__getadvertisements(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "advertisementsP")
}

fn c1_m21__getadconfiguration(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "adConfigurationP")
}

fn c1_m22__isokaytoshowpagead(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m23__setokaytoshowads(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_okay_to_show_ads] = jargs
        jr.set_field(this, "okayToShowAdsP", l_okay_to_show_ads)
    jr.JNull
}

fn c1_m24__isokaytoshowads(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "okayToShowAdsP")
}

fn c1_m25__isenabled(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ad_configuration] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "adConfigurationP", l_ad_configuration)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameAdStateBase",
        "org.allbinary.business.advertisement.GameAdStateBase",
        "Object",
        [],
        False,
        [#("adConfigurationP", jr.JNull), #("advertisementsP", jr.JNull), #("okayToShowAdsP", jr.JBool(False))],
        [],
        [
            jr.Method("initViewArray_1", ["ObjectArr"], False, c1_m5__initviewarray), 
            jr.Method("onStart_1", ["Object"], False, c1_m6__onstart), 
            jr.Method("init_0", [], False, c1_m7__init), 
            jr.Method("isShowingAtLocation_1", ["int"], False, c1_m8__isshowingatlocation), 
            jr.Method("isShowingAt_0", [], False, c1_m9__isshowingat), 
            jr.Method("show_0", [], False, c1_m10__show), 
            jr.Method("hide_0", [], False, c1_m11__hide), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m12__onevent), 
            jr.Method("processAdState_2", ["GameState", "GameType"], False, c1_m13__processadstate), 
            jr.Method("processPageAdState_0", [], False, c1_m14__processpageadstate), 
            jr.Method("playingAdState_0", [], False, c1_m15__playingadstate), 
            jr.Method("playingAdStateWH_2", ["int", "int"], False, c1_m16__playingadstatewh), 
            jr.Method("notPlayingAdState_0", [], False, c1_m17__notplayingadstate), 
            jr.Method("setGameIsReady_1", ["boolean"], False, c1_m18__setgameisready), 
            jr.Method("isGameIsReady_0", [], False, c1_m19__isgameisready), 
            jr.Method("getAdvertisements_0", [], False, c1_m20__getadvertisements), 
            jr.Method("getAdConfiguration_0", [], False, c1_m21__getadconfiguration), 
            jr.Method("isOkayToShowPageAd_0", [], False, c1_m22__isokaytoshowpagead), 
            jr.Method("setOkayToShowAds_1", ["boolean"], False, c1_m23__setokaytoshowads), 
            jr.Method("isOkayToShowAds_0", [], False, c1_m24__isokaytoshowads), 
            jr.Method("isEnabled_0", [], False, c1_m25__isenabled), 
            jr.Method("jinit_1", ["AdConfiguration"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

