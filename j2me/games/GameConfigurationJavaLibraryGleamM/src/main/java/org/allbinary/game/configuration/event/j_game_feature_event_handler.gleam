// Generated Code Do Not Modify
// package org.allbinary.game.configuration.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFeatureEventHandler

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameFeatureEventHandler", "gameKeyEventHandler", jr.new("GameFeatureEventHandler", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameFeatureEventHandler", "gameKeyEventHandler")
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object, l_event_listener_interface] = jargs
        let l_game_feature_listener_interface = l_event_listener_interface
        jr.call(l_game_feature_listener_interface, "onGameFeatureChange_1", [l_event_object])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicEventHandler", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameFeatureEventHandler",
        "org.allbinary.game.configuration.event.GameFeatureEventHandler",
        "BasicEventHandler",
        [],
        False,
        [],
        [#("gameKeyEventHandler", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("process_2", ["AllBinaryEventObject", "EventListenerInterface"], False, c1_m4__process), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

