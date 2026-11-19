// Generated Code Do Not Modify
// package org.allbinary.game.configuration.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameInitializedEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "resourceLoadingLevel", jr.get_field(jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", []), "LEVEL"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        jr.set_field(this, "level", jr.as_i(l_level))
        jr.set_field(this, "resourceLoadingLevel", jr.get_field(jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", []), "LEVEL"))
    jr.JNull
}

fn c1_m5__getlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "level"))
}

fn c1_m6__setresourceloadinglevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource_loading_level] = jargs
        jr.set_field(this, "resourceLoadingLevel", l_resource_loading_level)
        jr.set_field(this, "level", jr.as_i(jr.call(jr.get_field(this, "resourceLoadingLevel"), "getLevel_0", [])))
    jr.JNull
}

fn c1_m7__getresourceloadinglevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "resourceLoadingLevel")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameInitializedEvent",
        "org.allbinary.game.configuration.event.GameInitializedEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("resourceLoadingLevel", jr.JNull), #("level", jr.JInt(0))],
        [],
        [
            jr.Method("setLevel_1", ["int"], False, c1_m4__setlevel), 
            jr.Method("getLevel_0", [], False, c1_m5__getlevel), 
            jr.Method("setResourceLoadingLevel_1", ["ResourceLoadingLevel"], False, c1_m6__setresourceloadinglevel), 
            jr.Method("getResourceLoadingLevel_0", [], False, c1_m7__getresourceloadinglevel), 
            jr.Method("jinit_1", ["Object"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

