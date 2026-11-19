// Generated Code Do Not Modify
// package org.allbinary.game.tick
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TickableLayerManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("LayerManager", this, [jr.call_static("LayerManagerNoDebug", "getInstance_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TickableLayerManager",
        "org.allbinary.game.tick.TickableLayerManager",
        "LayerManager",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

