// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpecialMessageUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SpecialMessageUtil", "SINGLETON", jr.new("SpecialMessageUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SpecialMessageUtil", "SINGLETON")
}

fn c1_m3__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.call_static("Memory", "getInfo_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("GameStatisticsFactory", "getInstance_0", []), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Option: ")])
        case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL_AUTO_SELECT")])) {
            True -> {
            jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL_AUTO_SELECT"), "getName_0", [])])
            Nil
        }
            False -> {
            jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL_MINIMUM"), "getName_0", [])])
            Nil
        }
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpecialMessageUtil",
        "org.allbinary.canvas.SpecialMessageUtil",
        "Object",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("get_0", [], False, c1_m3__get), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

