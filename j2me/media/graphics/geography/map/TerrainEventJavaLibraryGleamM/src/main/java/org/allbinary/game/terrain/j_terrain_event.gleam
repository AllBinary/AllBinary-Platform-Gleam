// Generated Code Do Not Modify
// package org.allbinary.game.terrain
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TerrainEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicTerrainInfo", jr.get_static("BasicTerrainInfo", "NULL_BASIC_TERRAIN_INFO"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("TerrainEvent: \n")])
        jr.call(l_string_buffer, "append_1", [jr.JStr("LayerInterface: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "basicTerrainInfo"), "toString_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m4__getbasicterraininfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicTerrainInfo")
}

fn c1_m5__setbasicterraininfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_terrain_info] = jargs
        jr.set_field(this, "basicTerrainInfo", l_basic_terrain_info)
    jr.JNull
}

fn c1_m6__setbasicterraininfoforcircularstaticpool(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_terrain_info] = jargs
        jr.set_field(this, "basicTerrainInfo", l_basic_terrain_info)
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_terrain_info] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_basic_terrain_info])
        c1_jfields(this)
        jr.call(this, "setBasicTerrainInfo_1", [jr.get_field(this, "basicTerrainInfo")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TerrainEvent",
        "org.allbinary.game.terrain.TerrainEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("basicTerrainInfo", jr.JNull)],
        [],
        [
            jr.Method("toString_0", [], False, c1_m3__tostring), 
            jr.Method("getBasicTerrainInfo_0", [], False, c1_m4__getbasicterraininfo), 
            jr.Method("setBasicTerrainInfo_1", ["BasicTerrainInfo"], False, c1_m5__setbasicterraininfo), 
            jr.Method("setBasicTerrainInfoForCircularStaticPool_1", ["BasicTerrainInfo"], False, c1_m6__setbasicterraininfoforcircularstaticpool), 
            jr.Method("jinit_1", ["Object"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

