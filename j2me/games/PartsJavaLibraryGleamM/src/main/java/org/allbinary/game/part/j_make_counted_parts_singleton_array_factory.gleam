// Generated Code Do Not Modify
// package org.allbinary.game.part
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MakeCountedPartsSingletonArrayFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "list", jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MakeCountedPartsSingletonArrayFactory", "instance", jr.new("MakeCountedPartsSingletonArrayFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MakeCountedPartsSingletonArrayFactory", "instance")
}

fn c1_m5__getupdated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_part_interface_array] = jargs
        jr.set_field(this, "list", jr.new("BasicArrayListD", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_part_interface_array)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.get_field(this, "list"), "add_1", [jr.aget(l_part_interface_array, jr.get(l_index))])
            Nil
        })
            Nil
        }
        let l_counted_basic_array_list = jr.call(jr.call_static("CountedPickedUpLayerInterfaceFactoryPool", "getInstance_0", []), "getList_0", [])
        let l_layer_interface_factory_interface = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(l_counted_basic_array_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_layer_interface_factory_interface, jr.aget(jr.get_field(l_counted_basic_array_list, "objectArray"), jr.get(l_index)))
            jr.call(jr.get_field(this, "list"), "add_1", [jr.new("CountedLayerInterfaceFactoryPart", [jr.JInt(0), jr.get(l_layer_interface_factory_interface)])])
            Nil
        })
            Nil
        }
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Total Parts: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.get_field(this, "list"), "size_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Counted: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(l_counted_basic_array_list, "size_0", [])])
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(l_common_strings, "GET_INSTANCE")])
        let l_new_part_interface_array = jr.new_array("L", 1, [jr.call(jr.get_field(this, "list"), "size_0", [])])
        let l_new_size = jr.as_i(jr.alen(l_new_part_interface_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_new_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_new_part_interface_array, jr.get(l_index), jr.call(jr.get_field(this, "list"), "get_1", [jr.get(l_index)]))
            Nil
        })
            Nil
        }
    l_new_part_interface_array
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MakeCountedPartsSingletonArrayFactory",
        "org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("list", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getUpdated_1", ["PartInterfaceArr"], False, c1_m5__getupdated), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

