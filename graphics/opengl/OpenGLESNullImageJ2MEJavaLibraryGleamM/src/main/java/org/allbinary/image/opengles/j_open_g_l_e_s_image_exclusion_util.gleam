// Generated Code Do Not Modify
// package org.allbinary.image.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLESImageExclusionUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLESImageExclusionUtil", "instance", jr.new("OpenGLESImageExclusionUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLESImageExclusionUtil", "instance")
}

fn c1_m4__iscustomscaling(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    jr.JBool(False)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLESImageExclusionUtil",
        "org.allbinary.image.opengles.OpenGLESImageExclusionUtil",
        "Object",
        [],
        False,
        [#("list", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isCustomScaling_1", ["Image"], False, c1_m4__iscustomscaling), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

