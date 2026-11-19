// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "list", jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
    jr.set_field(this, "HASHTABLE_LABEL", jr.JStr("Hashtable: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LayerInterfaceFactory", "SINGLETON", jr.new("LayerInterfaceFactory", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LayerInterfaceFactory", "SINGLETON")
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_m7__getnexinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "HASHTABLE_LABEL")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_hashtable])]), "toString_0", []), this, jr.get_field(l_common_strings, "GET_INSTANCE")])
        let l_type_integer = jr.call(l_hashtable, "get_1", [jr.get_static("Layer", "ID")])
        let l_layer_interface_factory_interface = jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.sub(jr.call(l_type_integer, "intValue_0", []), jr.JInt(1)))
    jr.call(l_layer_interface_factory_interface, "getNextInstance_4", [l_hashtable, l_x, l_y, l_z])
}

fn c1_m8__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface_factory_interface] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_layer_interface_factory_interface])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerInterfaceFactory",
        "org.allbinary.layer.LayerInterfaceFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("list", jr.JNull), #("HASHTABLE_LABEL", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("init_0", [], False, c1_m5__init), 
            jr.Method("getNexInstance_4", ["ABHashtable", "int", "int", "int"], False, c1_m7__getnexinstance), 
            jr.Method("add_1", ["LayerInterfaceFactoryInterface"], False, c1_m8__add), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

