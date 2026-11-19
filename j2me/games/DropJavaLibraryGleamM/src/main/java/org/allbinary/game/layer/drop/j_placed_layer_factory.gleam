// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlacedLayerFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.set_field(this, "basicArrayListUtil", jr.call_static("BasicArrayListUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlacedLayerFactory", "instance", jr.new("PlacedLayerFactory", []))
    jr.JNull
}

fn c1_m4__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "list"), "clear_0", [])
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PlacedLayerFactory", "instance")
}

fn c1_m6__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "list"), "size_0", []))
}

fn c1_m8__getrandominstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "basicArrayListUtil"), "getRandom_1", [jr.get_field(this, "list")])
}

fn c1_m9__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface_factory_interface] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_layer_interface_factory_interface])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlacedLayerFactory",
        "org.allbinary.game.layer.drop.PlacedLayerFactory",
        "Object",
        [],
        False,
        [#("list", jr.JNull), #("basicArrayListUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("clear_0", [], False, c1_m4__clear), 
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("getSize_0", [], False, c1_m6__getsize), 
            jr.Method("getRandomInstance_0", [], False, c1_m8__getrandominstance), 
            jr.Method("add_1", ["AllBinaryLayerFactoryInterface"], False, c1_m9__add), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

