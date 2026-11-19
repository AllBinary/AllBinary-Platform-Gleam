// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CountedPickedUpLayerInterfaceFactoryPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CountedPickedUpLayerInterfaceFactoryPool", "SINGLETON", jr.new("CountedPickedUpLayerInterfaceFactoryPool", []))
    jr.JNull
}

fn c1_m4__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CountedPickedUpLayerInterfaceFactoryPool", "SINGLETON")
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_static("CountedPickedUpLayerInterfaceFactoryPool", "SINGLETON", jr.new("CountedPickedUpLayerInterfaceFactoryPool", []))
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CountedPickedUpLayerInterfaceFactoryPool",
        "org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool",
        "Object",
        [],
        False,
        [#("list", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getList_0", [], False, c1_m4__getlist), 
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("init_0", [], True, c1_m6__init), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

