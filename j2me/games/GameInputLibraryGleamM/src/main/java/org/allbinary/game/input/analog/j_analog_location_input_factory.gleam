// Generated Code Do Not Modify
// package org.allbinary.game.input.analog
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnalogLocationInputFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AnalogLocationInputFactory", "instance", jr.new("AnalogLocationInputFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AnalogLocationInputFactory", "instance")
}

fn c1_m5__addplayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        let l_analog_location_input = jr.cell(jr.get_static("AnalogLocationInput", "NULL_ANALOG_LOCATION_INPUT"))
        case jr.truth(jr.lt(l_player_input_id, jr.call(jr.get_field(this, "list"), "size_0", []))) {
            True -> {
            jr.set(l_analog_location_input, jr.call(jr.get_field(this, "list"), "get_1", [l_player_input_id]))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.eq(jr.get(l_analog_location_input), jr.get_static("AnalogLocationInput", "NULL_ANALOG_LOCATION_INPUT"))) {
            True -> {
            jr.set(l_analog_location_input, jr.new("AnalogLocationInput", [l_player_input_id]))
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get(l_analog_location_input)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__getinstanceforplayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_input_id] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
    jr.call(jr.get_field(this, "list"), "get_1", [l_player_input_id])
}

fn c1_m7__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnalogLocationInputFactory",
        "org.allbinary.game.input.analog.AnalogLocationInputFactory",
        "Object",
        [],
        False,
        [#("list", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("addPlayer_1", ["int"], False, c1_m5__addplayer), 
            jr.Method("getInstanceForPlayer_1", ["int"], False, c1_m6__getinstanceforplayer), 
            jr.Method("getList_0", [], False, c1_m7__getlist), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

