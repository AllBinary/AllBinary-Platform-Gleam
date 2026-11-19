// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai.scroller
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TimedFireAI

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "maxFireDelayTimeHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TimedFireAI", "TIME", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(1)]))
    jr.JNull
}

fn c1_m5__processai(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        let l_time_fired_interface = jr.call_inherited(this, "TimedFireAI", "getOwnerLayerInterface_0", [])
        case jr.truth(case jr.truth(jr.call(jr.get_field(this, "maxFireDelayTimeHelper"), "isTime_1", [jr.get_field(jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []), "startTime")])) { True -> jr.lt(jr.add(jr.call(l_time_fired_interface, "getLastFireTime_0", []), jr.get_field(jr.get_field(this, "maxFireDelayTimeHelper"), "delay")), jr.call(jr.get_field(this, "maxFireDelayTimeHelper"), "getStartTime_0", [])) False -> jr.JBool(False) }) {
            True -> {
            jr.call_super("BasicAI", this, "processKeyAI_1", [jr.get_static("Canvas", "KEY_NUM1")])
            jr.set_field(jr.get_field(this, "maxFireDelayTimeHelper"), "delay", jr.get_field(this, "delay"))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_delay, l_owner_layer_interface, l_game_input] = jargs
    let l_delay = jr.as_i(l_delay)
        jr.super_init("BasicAI", this, [l_owner_layer_interface, l_game_input])
        c1_jfields(this)
        jr.set_field(this, "delay", jr.as_i(l_delay))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TimedFireAI",
        "org.allbinary.game.ag.ai.scroller.TimedFireAI",
        "BasicAI",
        [],
        False,
        [#("maxFireDelayTimeHelper", jr.JNull), #("delay", jr.JInt(0))],
        [#("TIME", jr.JNull)],
        [
            jr.Method("processAI_1", ["AllBinaryLayerManager"], False, c1_m5__processai), 
            jr.Method("jinit_3", ["int", "AllBinaryLayer", "GameInput"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

