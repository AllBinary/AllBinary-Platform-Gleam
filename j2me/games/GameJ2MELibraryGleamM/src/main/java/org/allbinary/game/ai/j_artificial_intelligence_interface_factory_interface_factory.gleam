// Generated Code Do Not Modify
// package org.allbinary.game.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ArtificialIntelligenceInterfaceFactoryInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ArtificialIntelligenceInterfaceFactoryInterfaceFactory", "SINGLETON", jr.new("ArtificialIntelligenceInterfaceFactoryInterfaceFactory", []))
    jr.JNull
}

fn c1_m3__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ArtificialIntelligenceInterfaceFactoryInterfaceFactory", "SINGLETON")
}

fn c1_m5__getinstancefromcollection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable] = jargs
        let l_type_integer = jr.call(l_hashtable, "get_1", [jr.get_static("BasicAI", "ID")])
        let l_type = jr.as_i(jr.call(l_type_integer, "intValue_0", []))
        let l_artificial_intelligence_interface_factory_interface = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.sub(l_type, jr.JInt(1)))
    l_artificial_intelligence_interface_factory_interface
}

fn c1_m6__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_artificial_intelligence_interface_factory_interface] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_artificial_intelligence_interface_factory_interface])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ArtificialIntelligenceInterfaceFactoryInterfaceFactory",
        "org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory",
        "Object",
        [],
        False,
        [#("list", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("clear_0", [], False, c1_m3__clear), 
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("getInstanceFromCollection_1", ["ABHashtable"], False, c1_m5__getinstancefromcollection), 
            jr.Method("add_1", ["ArtificialIntelligenceInterfaceFactoryInterface"], False, c1_m6__add), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

