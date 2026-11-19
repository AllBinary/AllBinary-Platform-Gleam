// Generated Code Do Not Modify
// package org.allbinary.game.terrain
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TerrainEventListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m3__onterrainevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_terrain_event] = jargs
        jr.call(jr.get_field(this, "list"), "clear_0", [])
        jr.call(jr.get_field(this, "list"), "add_1", [l_terrain_event])
    jr.JNull
}

fn c1_m4__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TerrainEventListener",
        "org.allbinary.game.terrain.TerrainEventListener",
        "Object",
        ["TerrainEventListenerInterface"],
        False,
        [#("list", jr.JNull)],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m2__onevent), 
            jr.Method("onTerrainEvent_1", ["TerrainEvent"], False, c1_m3__onterrainevent), 
            jr.Method("getList_0", [], False, c1_m4__getlist), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

