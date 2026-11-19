// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ReverseVelocityBoundsVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "layerInterface"), "getXP_0", []))
}

fn c1_m6__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "layerInterface"), "getYP_0", []))
}

fn c1_m7__minx(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.lt(jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityXBasicDecimalP_0", []), "getUnscaled_0", []), jr.JLong(0))) {
            True -> {
            jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityXBasicDecimalP_0", []), "multiplyint_1", [jr.JInt(-1)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m8__maxx(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.gt(jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityXBasicDecimalP_0", []), "getUnscaled_0", []), jr.JLong(0))) {
            True -> {
            jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityXBasicDecimalP_0", []), "multiplyint_1", [jr.JInt(-1)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m9__miny(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.lt(jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityYBasicDecimalP_0", []), "getUnscaled_0", []), jr.JLong(0))) {
            True -> {
            jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityYBasicDecimalP_0", []), "multiplyint_1", [jr.JInt(-1)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m10__maxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.gt(jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityYBasicDecimalP_0", []), "getUnscaled_0", []), jr.JLong(0))) {
            True -> {
            jr.call(jr.call(jr.get_field(this, "velocityInterface"), "getVelocityYBasicDecimalP_0", []), "multiplyint_1", [jr.JInt(-1)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "layerInterface", l_layer_interface)
        let l_velocity_interface_composite_interface = l_layer_interface
        jr.set_field(this, "velocityInterface", jr.call(l_velocity_interface_composite_interface, "getVelocityProperties_0", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ReverseVelocityBoundsVisitor",
        "org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor",
        "Object",
        ["BoundsVisitorInterface"],
        False,
        [#("logUtil", jr.JNull), #("velocityInterface", jr.JNull), #("layerInterface", jr.JNull)],
        [],
        [
            jr.Method("getX_0", [], False, c1_m5__getx), 
            jr.Method("getY_0", [], False, c1_m6__gety), 
            jr.Method("minX_0", [], False, c1_m7__minx), 
            jr.Method("maxX_0", [], False, c1_m8__maxx), 
            jr.Method("minY_0", [], False, c1_m9__miny), 
            jr.Method("maxY_0", [], False, c1_m10__maxy), 
            jr.Method("jinit_1", ["LayerInterface"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

