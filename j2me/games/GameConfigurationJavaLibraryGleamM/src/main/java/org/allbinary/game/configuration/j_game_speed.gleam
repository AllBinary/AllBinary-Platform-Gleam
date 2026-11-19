// Generated Code Do Not Modify
// package org.allbinary.game.configuration
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameSpeed

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameSpeed", "instance", jr.new("GameSpeed", []))
    jr.JNull
}

fn c1_m2__getspeed(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_speed_game_configuration = jr.get_field(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "SPEED")
    jr.as_i(jr.add(jr.sub(jr.call(jr.call(l_speed_game_configuration, "getMaxValue_0", []), "intValue_0", []), jr.call(jr.call(l_speed_game_configuration, "getValue_0", []), "intValue_0", [])), jr.JInt(1)))
}

fn c1_m3__getdelay(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_speed_game_configuration = jr.get_field(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "SPEED")
    jr.as_i(jr.mul(jr.JInt(19), jr.sub(jr.call(jr.call(l_speed_game_configuration, "getMaxValue_0", []), "intValue_0", []), jr.call(jr.call(l_speed_game_configuration, "getValue_0", []), "intValue_0", []))))
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameSpeed", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameSpeed",
        "org.allbinary.game.configuration.GameSpeed",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getSpeed_0", [], False, c1_m2__getspeed), 
            jr.Method("getDelay_0", [], False, c1_m3__getdelay), 
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

