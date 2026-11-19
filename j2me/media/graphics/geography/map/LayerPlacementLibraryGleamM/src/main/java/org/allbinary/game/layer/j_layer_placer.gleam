// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerPlacer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "enumerationUtil", jr.call_static("EnumerationUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__processlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list] = jargs
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_layer_placement_interface = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_layer_placement_interface, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.call(this, "process_1", [jr.get(l_layer_placement_interface)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_placement_interface] = jargs
        let l_relative_point = jr.call(this, "getPoint_1", [l_layer_placement_interface])
        let l_layer_interface_factory = jr.call_static("LayerInterfaceFactory", "getInstance_0", [])
        let l_hashtable = jr.call(l_layer_placement_interface, "getInstance_0", [])
        let l_enumeration = jr.call(l_hashtable, "keys_0", [])
        let l_point = jr.cell(jr.JNull)
        let l_layer_hashtable = jr.cell(jr.JNull)
        let l_x = jr.cell(jr.as_i(jr.JInt(0)))
        let l_y = jr.cell(jr.as_i(jr.JInt(0)))
        let l_z = jr.cell(jr.as_i(jr.JInt(0)))
        let l_layer_interface = jr.cell(jr.JNull)
        jr.while_loop("", fn() { jr.call(jr.get_field(this, "enumerationUtil"), "hasMoreElements_1", [l_enumeration]) }, fn() {
            jr.set(l_point, jr.call(jr.get_field(this, "enumerationUtil"), "nextElement_1", [l_enumeration]))
            jr.set(l_layer_hashtable, jr.call(l_hashtable, "get_1", [jr.get(l_point)]))
            jr.set(l_x, jr.as_i(jr.add(jr.call(jr.get(l_point), "getX_0", []), jr.call(l_relative_point, "getX_0", []))))
            jr.set(l_y, jr.as_i(jr.add(jr.call(jr.get(l_point), "getY_0", []), jr.call(l_relative_point, "getY_0", []))))
            jr.set(l_z, jr.as_i(jr.add(jr.call(jr.get(l_point), "getZ_0", []), jr.call(l_relative_point, "getZ_0", []))))
            jr.set(l_layer_interface, jr.call(l_layer_interface_factory, "getNexInstance_4", [jr.get(l_layer_hashtable), jr.get(l_x), jr.get(l_y), jr.get(l_z)]))
            jr.call(jr.get_field(this, "layerInterfaceVisitor"), "visit_1", [jr.get(l_layer_interface)])
            Nil
        })
    jr.JNull
}

fn c1_m7__getpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_placement_interface] = jargs
    jr.method(fn() {
            let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
            let l_layer_placement_type = jr.call(l_layer_placement_interface, "getLayerType_0", [])
            case jr.truth(jr.eq(l_layer_placement_type, jr.get_field(jr.call_static("LayerPlacementTypeFactory", "getInstance_0", []), "MAP"))) {
            True -> {
            let l_width = jr.as_i(jr.call(l_layer_placement_interface, "getWidth_0", []))
            let l_height = jr.as_i(jr.call(l_layer_placement_interface, "getHeight_0", []))
            let l_x = jr.as_i(jr.div(jr.sub(jr.call(jr.get_field(this, "dimension"), "getX_0", []), l_width), jr.JInt(2)))
            let l_y = jr.as_i(jr.div(jr.sub(jr.call(jr.get_field(this, "dimension"), "getY_0", []), l_height), jr.JInt(2)))
            jr.ret(jr.call(l_point_factory, "createXY_2", [l_x, l_y]))
            Nil
        }
            False -> case jr.truth(jr.eq(l_layer_placement_type, jr.get_field(jr.call_static("LayerPlacementTypeFactory", "getInstance_0", []), "UP"))) {
            True -> {
            let l_width = jr.as_i(jr.call(l_layer_placement_interface, "getWidth_0", []))
            let l_height = jr.as_i(jr.call(l_layer_placement_interface, "getHeight_0", []))
            let l_x = jr.as_i(jr.div(jr.sub(jr.call(jr.get_field(this, "dimension"), "getX_0", []), l_width), jr.JInt(2)))
            let l_y = jr.as_i(jr.neg(l_height))
            jr.ret(jr.call(l_point_factory, "createXY_2", [l_x, l_y]))
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("PlacementType Not Recognized")]))
            Nil
        }
        }
        }
        jr.JNull
    })
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface_visitor, l_dimension] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "layerInterfaceVisitor", l_layer_interface_visitor)
        jr.set_field(this, "dimension", l_dimension)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerPlacer",
        "org.allbinary.game.layer.LayerPlacer",
        "Object",
        [],
        False,
        [#("enumerationUtil", jr.JNull), #("layerInterfaceVisitor", jr.JNull), #("dimension", jr.JNull)],
        [],
        [
            jr.Method("processList_1", ["BasicArrayList"], False, c1_m5__processlist), 
            jr.Method("process_1", ["LayerPlacementInterface"], False, c1_m6__process), 
            jr.Method("getPoint_1", ["LayerPlacementInterface"], False, c1_m7__getpoint), 
            jr.Method("jinit_2", ["LayerInterfaceVisitor", "GPoint"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

