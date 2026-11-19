// Generated Code Do Not Modify
// package org.allbinary.game.input.analog
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnalogLocationInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AnalogLocationInput", "NULL_ANALOG_LOCATION_INPUT", jr.new("AnalogLocationInput", [jr.JInt(-1)]))
    jr.JNull
}

fn c1_m8__getplayerid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "playerId"))
}

fn c1_m9__getcustomgpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "customGPoint")
}

fn c1_m10__getrz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "rz"))
}

fn c1_m11__setrz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rz] = jargs
    let l_rz = jr.as_i(l_rz)
        jr.set_field(this, "rz", jr.as_i(l_rz))
    jr.JNull
}

fn c1_m12__getrighttrigger(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "rightTrigger"))
}

fn c1_m13__setrighttrigger(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_right_trigger] = jargs
    let l_right_trigger = jr.as_i(l_right_trigger)
        jr.set_field(this, "rightTrigger", jr.as_i(l_right_trigger))
    jr.JNull
}

fn c1_m14__getlefttrigger(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "leftTrigger"))
}

fn c1_m15__setlefttrigger(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_left_trigger] = jargs
    let l_left_trigger = jr.as_i(l_left_trigger)
        jr.set_field(this, "leftTrigger", jr.as_i(l_left_trigger))
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_id] = jargs
    let l_player_id = jr.as_i(l_player_id)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "playerId", jr.as_i(l_player_id))
        jr.set_field(this, "customGPoint", jr.new("CustomGPoint", [jr.JInt(0), jr.JInt(0), jr.JInt(0)]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnalogLocationInput",
        "org.allbinary.game.input.analog.AnalogLocationInput",
        "Object",
        [],
        False,
        [#("playerId", jr.JInt(0)), #("customGPoint", jr.JNull), #("rz", jr.JInt(0)), #("rightTrigger", jr.JInt(0)), #("leftTrigger", jr.JInt(0))],
        [#("NULL_ANALOG_LOCATION_INPUT", jr.JNull)],
        [
            jr.Method("getPlayerId_0", [], False, c1_m8__getplayerid), 
            jr.Method("getCustomGPoint_0", [], False, c1_m9__getcustomgpoint), 
            jr.Method("getRz_0", [], False, c1_m10__getrz), 
            jr.Method("setRz_1", ["int"], False, c1_m11__setrz), 
            jr.Method("getRightTrigger_0", [], False, c1_m12__getrighttrigger), 
            jr.Method("setRightTrigger_1", ["int"], False, c1_m13__setrighttrigger), 
            jr.Method("getLeftTrigger_0", [], False, c1_m14__getlefttrigger), 
            jr.Method("setLeftTrigger_1", ["int"], False, c1_m15__setlefttrigger), 
            jr.Method("jinit_1", ["int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

