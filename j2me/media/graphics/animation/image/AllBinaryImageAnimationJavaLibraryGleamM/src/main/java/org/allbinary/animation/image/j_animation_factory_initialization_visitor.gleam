// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnimationFactoryInitializationVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_common_labels = jr.call_static("CommonLabels", "getInstance_0", [])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("PositionStrings", "getInstance_0", []), "DX_LABEL")]), "appendfloat_1", [jr.to_f(jr.get_field(this, "dx"))])
        jr.call(jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("PositionStrings", "getInstance_0", []), "DY_LABEL")]), "appendfloat_1", [jr.to_f(jr.get_field(this, "dy"))])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "WIDTH_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "width")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "HEIGHT_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "height")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnimationFactoryInitializationVisitor",
        "org.allbinary.animation.image.AnimationFactoryInitializationVisitor",
        "Object",
        [],
        False,
        [#("width", jr.JInt(0)), #("height", jr.JInt(0)), #("dx", jr.JInt(0)), #("dy", jr.JInt(0)), #("originalDx", jr.JInt(0)), #("originalDy", jr.JInt(0))],
        [],
        [
            jr.Method("visit_0", [], False, c1_m7__visit), 
            jr.Method("toString_0", [], False, c1_m8__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

