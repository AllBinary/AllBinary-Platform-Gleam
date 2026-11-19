// Generated Code Do Not Modify
// package org.allbinary.game.terrain
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TerrainEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TerrainEventHandler", "hashtable", jr.get_field(jr.call_static("StdUtil", "getInstance_0", []), "NULL_TABLE"))
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_static("TerrainEventHandler", "hashtable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        let l_event_handler_can_be_null = jr.cell(jr.call(jr.get_static("TerrainEventHandler", "hashtable"), "get_1", [l_any_type]))
        case jr.truth(jr.eq(jr.get(l_event_handler_can_be_null), jr.JNull)) {
            True -> {
            jr.set(l_event_handler_can_be_null, jr.new("TerrainEventHandler", []))
            jr.call(jr.get_static("TerrainEventHandler", "hashtable"), "put_2", [l_any_type, jr.get(l_event_handler_can_be_null)])
            Nil
        }
            False -> Nil
        }
    jr.get(l_event_handler_can_be_null)
}

fn c1_m6__addlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_terrain_event_listener] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "list"), "contains_1", [l_terrain_event_listener]))) {
            True -> {
            jr.call(jr.get_field(this, "list"), "add_1", [l_terrain_event_listener])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m7__removealllisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "list"), "clear_0", [])
        jr.call_super("BasicEventHandler", this, "removeAllListeners_0", [])
    jr.JNull
}

fn c1_m8__removelistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_listener_interface] = jargs
        jr.call(jr.get_field(this, "list"), "remove_1", [l_event_listener_interface])
        jr.call_super("BasicEventHandler", this, "removeListener_1", [l_event_listener_interface])
    jr.JNull
}

fn c1_m9__fireevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.try_catch(fn() {
                let l_terrain_event_listener = jr.call(jr.get_field(this, "list"), "get_1", [jr.get(l_index)])
                jr.call(l_terrain_event_listener, "onTerrainEvent_1", [l_event_object])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.call(jr.get_inherited(this, "TerrainEventHandler", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "TerrainEventHandler", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "FIRE_EVENT"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
            Nil
        }
        jr.call_super("BasicEventHandler", this, "fireEvent_1", [l_event_object])
    jr.JNull
}

fn c1_m10__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
        let l_terrain_event_listener_interface = l_event_listener_interface
        jr.call(l_terrain_event_listener_interface, "onTerrainEvent_1", [l_event_object])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicEventHandler", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TerrainEventHandler",
        "org.allbinary.game.terrain.TerrainEventHandler",
        "BasicEventHandler",
        [],
        False,
        [#("list", jr.JNull)],
        [#("hashtable", jr.JNull)],
        [
            jr.Method("init_0", [], True, c1_m2__init), 
            jr.Method("getInstance_1", ["Object"], True, c1_m3__getinstance), 
            jr.Method("addListener_1", ["TerrainEventListener"], False, c1_m6__addlistener), 
            jr.Method("removeAllListeners_0", [], False, c1_m7__removealllisteners), 
            jr.Method("removeListener_1", ["EventListenerInterface"], False, c1_m8__removelistener), 
            jr.Method("fireEvent_1", ["AllBinaryEventObject"], False, c1_m9__fireevent), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m10__process), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

