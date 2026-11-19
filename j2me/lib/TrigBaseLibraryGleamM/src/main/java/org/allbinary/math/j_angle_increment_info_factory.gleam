// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AngleIncrementInfoFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "angleIncrementInfo", jr.new_array("L", 1, [jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE"))]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AngleIncrementInfoFactory", "instance", jr.new("AngleIncrementInfoFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AngleIncrementInfoFactory", "instance")
}

fn c1_m4__getat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle_increment] = jargs
    let l_angle_increment = jr.as_s(l_angle_increment)
    jr.method(fn() {
            let l_half_angle_increment = jr.as_i(jr.shr(jr.to_i(l_angle_increment), jr.JInt(1)))
            let l_angle_increment_info = jr.cell(jr.JNull)
            let l_angle_increment_info_can_be_null = jr.aget(jr.get_field(this, "angleIncrementInfo"), l_half_angle_increment)
            case jr.truth(jr.eq(l_angle_increment_info_can_be_null, jr.JNull)) {
            True -> {
            jr.set(l_angle_increment_info, jr.new("AngleIncrementInfo", [l_angle_increment]))
            jr.aset(jr.get_field(this, "angleIncrementInfo"), l_half_angle_increment, jr.get(l_angle_increment_info))
            jr.ret(jr.get(l_angle_increment_info))
            Nil
        }
            False -> {
            jr.set(l_angle_increment_info, l_angle_increment_info_can_be_null)
            Nil
        }
        }
            jr.ret(jr.get(l_angle_increment_info))
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AngleIncrementInfoFactory",
        "org.allbinary.math.AngleIncrementInfoFactory",
        "Object",
        [],
        False,
        [#("angleIncrementInfo", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getAt_1", ["short"], False, c1_m4__getat), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

