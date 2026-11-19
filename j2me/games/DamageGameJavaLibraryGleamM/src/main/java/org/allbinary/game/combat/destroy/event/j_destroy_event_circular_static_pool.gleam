// Generated Code Do Not Modify
// package org.allbinary.game.combat.destroy.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DestroyEventCircularStaticPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EVENT_POOL", jr.new("AllBinaryEventCircularPool", [jr.JInt(20)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DestroyEventCircularStaticPool", "instance", jr.new("DestroyEventCircularStaticPool", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DestroyEventCircularStaticPool", "instance")
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_combat_game_canvas] = jargs
        jr.call(jr.get_field(this, "EVENT_POOL"), "initAllBinaryEventCircularPool_1", [jr.new("DestroyEventFactory", [l_combat_game_canvas])])
    jr.JNull
}

fn c1_m6__getinstanceforlayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        let l_destroyed_event = jr.call(jr.get_field(this, "EVENT_POOL"), "getNextInstance_0", [])
        jr.call(l_destroyed_event, "setLayerInterfaceForCircularStaticPool_1", [l_layer_interface])
    l_destroyed_event
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DestroyEventCircularStaticPool",
        "org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool",
        "Object",
        [],
        False,
        [#("EVENT_POOL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_1", ["AllBinaryGameCanvas"], False, c1_m5__init), 
            jr.Method("getInstanceForLayer_1", ["AllBinaryLayer"], False, c1_m6__getinstanceforlayer), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

