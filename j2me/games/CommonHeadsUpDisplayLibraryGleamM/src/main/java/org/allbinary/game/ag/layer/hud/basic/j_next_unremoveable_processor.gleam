// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NextUnremoveableProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "updateMeasurementProcessor"), "setNextUnremoveableProcess_0", [])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_update_measurement_processor] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "updateMeasurementProcessor", l_update_measurement_processor)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NextUnremoveableProcessor",
        "org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor",
        "Processor",
        [],
        False,
        [#("updateMeasurementProcessor", jr.JNull)],
        [],
        [
            jr.Method("process_0", [], False, c1_m3__process), 
            jr.Method("jinit_1", ["PlayerGameNotificationHud"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

