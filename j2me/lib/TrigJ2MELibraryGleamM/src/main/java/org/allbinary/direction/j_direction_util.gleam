// Generated Code Do Not Modify
// package org.allbinary.direction
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DirectionUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "directionArray", jr.new_array("L", 1, [jr.JInt(10)]))
    jr.set_field(this, "directionArray2", jr.new_array("L", 1, [jr.JInt(10)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DirectionUtil", "instance", jr.new("DirectionUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DirectionUtil", "instance")
}

fn c1_m6__getangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction] = jargs
    jr.aget(jr.get_field(this, "directionArray2"), jr.call(l_direction, "getValue_0", []))
}

fn c1_m7__getframeangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction] = jargs
    jr.aget(jr.get_field(this, "directionArray"), jr.call(l_direction, "getValue_0", []))
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_angle_factory = jr.call_static("AngleFactory", "getInstance_0", [])
        let l_direction_factory = jr.call_static("DirectionFactory", "getInstance_0", [])
        jr.aset(jr.get_field(this, "directionArray"), jr.call(jr.get_field(l_direction_factory, "LEFT"), "getValue_0", []), jr.get_field(l_angle_factory, "LEFT"))
        jr.aset(jr.get_field(this, "directionArray"), jr.call(jr.get_field(l_direction_factory, "RIGHT"), "getValue_0", []), jr.get_field(l_angle_factory, "RIGHT"))
        jr.aset(jr.get_field(this, "directionArray"), jr.call(jr.get_field(l_direction_factory, "UP"), "getValue_0", []), jr.get_field(l_angle_factory, "UP"))
        jr.aset(jr.get_field(this, "directionArray"), jr.call(jr.get_field(l_direction_factory, "DOWN"), "getValue_0", []), jr.get_field(l_angle_factory, "DOWN"))
        jr.aset(jr.get_field(this, "directionArray2"), jr.call(jr.get_field(l_direction_factory, "LEFT"), "getValue_0", []), jr.get_field(l_angle_factory, "LEFT"))
        jr.aset(jr.get_field(this, "directionArray2"), jr.call(jr.get_field(l_direction_factory, "RIGHT"), "getValue_0", []), jr.get_field(l_angle_factory, "RIGHT"))
        jr.aset(jr.get_field(this, "directionArray2"), jr.call(jr.get_field(l_direction_factory, "UP"), "getValue_0", []), jr.get_field(l_angle_factory, "UP"))
        jr.aset(jr.get_field(this, "directionArray2"), jr.call(jr.get_field(l_direction_factory, "DOWN"), "getValue_0", []), jr.get_field(l_angle_factory, "DOWN"))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DirectionUtil",
        "org.allbinary.direction.DirectionUtil",
        "Object",
        [],
        False,
        [#("directionArray", jr.JNull), #("directionArray2", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getAngle_1", ["Direction"], False, c1_m6__getangle), 
            jr.Method("getFrameAngle_1", ["Direction"], False, c1_m7__getframeangle), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

