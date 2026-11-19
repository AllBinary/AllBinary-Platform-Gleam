// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.scroller
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TerrainPatrolAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "terrainEventListener", jr.new("TerrainEventListener", []))
    jr.set_field(this, "DOWN", jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "DOWN"))
    jr.set_field(this, "CLIFF", jr.new("BasicTerrainInfo", [jr.get_field(this, "DOWN")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("PacePatrolAI", this, "update_0", [])
        jr.call(this, "changeDirectionIfCliffReached_0", [])
    jr.JNull
}

fn c1_m6__changedirectionifcliffreached(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_list = jr.call(jr.get_field(this, "terrainEventListener"), "getList_0", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_terrain_event = jr.call(l_list, "removeAt_1", [jr.get(l_index)])
            let l_basic_terrain_info = jr.call(l_terrain_event, "getBasicTerrainInfo_0", [])
            let l_angle = jr.call(l_basic_terrain_info, "getAngle_0", [])
            case jr.truth(jr.eq(l_angle, jr.get_field(this, "DOWN"))) {
                True -> {
                jr.call_inherited(this, "TerrainPatrolAI", "nextDirection_0", [])
                case jr.truth(jr.not(jr.get_inherited(this, "TerrainPatrolAI", "isFollowLimitedByTerrain"))) {
                    True -> {
                    jr.call(jr.get_inherited(this, "TerrainPatrolAI", "logUtil"), "putF_3", [jr.JStr("Following Limited"), this, jr.JStr("onTerrainEvent")])
                    jr.set_inherited(this, "TerrainPatrolAI", "isFollowLimitedByTerrain", jr.JBool(True))
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_owner_layer_interface, l_game_input] = jargs
        jr.super_init("PacePatrolAI", this, [l_hashtable, l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.call(jr.call_static("TerrainEventHandler", "getInstance_1", [l_owner_layer_interface]), "addListener_1", [jr.get_field(this, "terrainEventListener")])
        jr.call(jr.get_field(this, "terrainEventListener"), "onTerrainEvent_1", [jr.call(jr.call_static("TerrainEventCircularStaticPool", "getInstance_0", []), "getNext_1", [jr.get_field(this, "CLIFF")])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TerrainPatrolAI",
        "org.allbinary.game.ag.ai.scroller.TerrainPatrolAI",
        "PacePatrolAI",
        [],
        False,
        [#("terrainEventListener", jr.JNull), #("DOWN", jr.JNull), #("CLIFF", jr.JNull)],
        [],
        [
            jr.Method("update_0", [], False, c1_m5__update), 
            jr.Method("changeDirectionIfCliffReached_0", [], False, c1_m6__changedirectionifcliffreached), 
            jr.Method("jinit_3", ["ABHashtable", "AllBinaryLayer", "GameInput"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

