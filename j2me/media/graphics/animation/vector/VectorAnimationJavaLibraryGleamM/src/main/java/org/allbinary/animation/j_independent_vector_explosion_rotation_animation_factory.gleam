// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IndependentVectorExplosionRotationAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "framePoints", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY_ARRAY"))
    jr.set_field(this, "vectorExplosionGenerator", jr.call_static("VectorExplosionGenerator", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "framePoints", jr.call(jr.call_static("VectorRotationGenerator", "getInstance_0", []), "getInstance_1", [jr.get_field(this, "vectorInfo")]))
    jr.JNull
}

fn c1_m8__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
        let l_frame = jr.cell(jr.as_i(jr.JInt(0)))
        case jr.truth(jr.ne(l_animation_interface, jr.JNull)) {
            True -> {
            let l_rotation_animation_interface = l_animation_interface
            jr.set(l_frame, jr.as_i(jr.call(l_rotation_animation_interface, "getFrame_0", [])))
            Nil
        }
            False -> Nil
        }
        let l_points = jr.call(jr.get_field(this, "vectorExplosionGenerator"), "getInstance_3", [jr.aget(jr.get_field(this, "framePoints"), jr.get(l_frame)), jr.JInt(6), jr.get_field(jr.get_field(this, "vectorExplosionGenerator"), "ROTATION")])
    jr.call(jr.get_field(this, "vectorAnimationFactoryInterface"), "getInstance_2", [l_points, jr.get_field(this, "basicColor")])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector_info, l_basic_color, l_vector_animation_factory_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "vectorInfo", l_vector_info)
        jr.set_field(this, "basicColor", l_basic_color)
        jr.set_field(this, "vectorAnimationFactoryInterface", l_vector_animation_factory_interface)
        jr.call(this, "init_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IndependentVectorExplosionRotationAnimationFactory",
        "org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory",
        "Object",
        ["ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("framePoints", jr.JNull), #("vectorInfo", jr.JNull), #("basicColor", jr.JNull), #("vectorAnimationFactoryInterface", jr.JNull), #("vectorExplosionGenerator", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m6__init), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m8__getinstanceanimation), 
            jr.Method("jinit_3", ["VectorInfo", "BasicColor", "VectorAnimationFactoryInterface"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

