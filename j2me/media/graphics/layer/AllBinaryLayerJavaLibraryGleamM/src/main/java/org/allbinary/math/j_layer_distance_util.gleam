// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerDistanceUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "mathUtil", jr.call_static("MathUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LayerDistanceUtil", "instance", jr.new("LayerDistanceUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LayerDistanceUtil", "instance")
}

fn c1_m4__getdistance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_layer_interface2] = jargs
        let l_dx = jr.as_i(jr.sub(jr.add(jr.call(l_layer_interface, "getXP_0", []), jr.call(l_layer_interface, "getHalfWidth_0", [])), jr.add(jr.call(l_layer_interface2, "getXP_0", []), jr.call(l_layer_interface2, "getHalfWidth_0", []))))
        let l_dy = jr.as_i(jr.sub(jr.add(jr.call(l_layer_interface, "getYP_0", []), jr.call(l_layer_interface, "getHalfHeight_0", [])), jr.add(jr.call(l_layer_interface2, "getYP_0", []), jr.call(l_layer_interface2, "getHalfHeight_0", []))))
    jr.as_i(jr.call(jr.get_field(this, "mathUtil"), "sqrt_1", [jr.add(jr.mul(l_dx, l_dx), jr.mul(l_dy, l_dy))]))
}

fn c1_m5__getdistance3d(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_layer_interface2] = jargs
        let l_dx = jr.as_i(jr.sub(jr.add(jr.call(l_layer_interface, "getXP_0", []), jr.call(l_layer_interface, "getHalfWidth_0", [])), jr.add(jr.call(l_layer_interface2, "getXP_0", []), jr.call(l_layer_interface2, "getHalfWidth_0", []))))
        let l_dy = jr.as_i(jr.sub(jr.add(jr.call(l_layer_interface, "getYP_0", []), jr.call(l_layer_interface, "getHalfHeight_0", [])), jr.add(jr.call(l_layer_interface2, "getYP_0", []), jr.call(l_layer_interface2, "getHalfHeight_0", []))))
        let l_dz = jr.as_i(jr.sub(jr.add(jr.call(l_layer_interface, "getZP_0", []), jr.call(l_layer_interface, "getHalfDepth_0", [])), jr.add(jr.call(l_layer_interface2, "getZP_0", []), jr.call(l_layer_interface2, "getHalfDepth_0", []))))
    jr.as_i(jr.call(jr.get_field(this, "mathUtil"), "sqrt_1", [jr.add(jr.add(jr.mul(l_dx, l_dx), jr.mul(l_dy, l_dy)), jr.mul(l_dz, l_dz))]))
}

fn c1_m6__getdistanceat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface, l_point] = jargs
        let l_dx = jr.as_i(jr.sub(jr.call(l_layer_interface, "getXP_0", []), jr.call(l_point, "getX_0", [])))
        let l_dy = jr.as_i(jr.sub(jr.call(l_layer_interface, "getYP_0", []), jr.call(l_point, "getY_0", [])))
    jr.as_i(jr.call(jr.get_field(this, "mathUtil"), "sqrt_1", [jr.add(jr.mul(l_dx, l_dx), jr.mul(l_dy, l_dy))]))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerDistanceUtil",
        "org.allbinary.math.LayerDistanceUtil",
        "Object",
        [],
        False,
        [#("mathUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getDistance_2", ["AllBinaryLayer", "AllBinaryLayer"], False, c1_m4__getdistance), 
            jr.Method("getDistance3D_2", ["AllBinaryLayer", "AllBinaryLayer"], False, c1_m5__getdistance3d), 
            jr.Method("getDistanceAt_2", ["AllBinaryLayer", "GPoint"], False, c1_m6__getdistanceat), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

