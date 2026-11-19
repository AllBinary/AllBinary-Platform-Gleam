// Generated Code Do Not Modify
// package org.allbinary.game.tick
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullTickable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NAME", jr.JStr("NulLTickable"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullTickable", "SINGLETON", jr.new("NullTickable", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullTickable", "SINGLETON")
}

fn c1_m3__processtick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
    jr.JNull
}

fn c1_m5__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "NAME")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullTickable",
        "org.allbinary.game.tick.NullTickable",
        "Object",
        ["TickableInterface"],
        False,
        [#("NAME", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("processTick_1", ["AllBinaryLayerManager"], False, c1_m3__processtick), 
            jr.Method("getName_0", [], False, c1_m5__getname), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

