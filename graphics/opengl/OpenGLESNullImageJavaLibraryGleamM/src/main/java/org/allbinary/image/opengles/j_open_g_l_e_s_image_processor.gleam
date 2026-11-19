// Generated Code Do Not Modify
// package org.allbinary.image.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLESImageProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLESImageProcessor", "instance", jr.new("OpenGLESImageProcessor", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLESImageProcessor", "instance")
}

fn c1_m3__translate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_translate_x, l_translate_y] = jargs
    let l_translate_x = jr.as_f(l_translate_x)
    let l_translate_y = jr.as_f(l_translate_y)
    jr.JNull
}

fn c1_m4__rotate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_angle] = jargs
    let l_angle = jr.as_f(l_angle)
    jr.JNull
}

fn c1_m5__scale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_scale_x, l_scale_y] = jargs
    let l_scale_x = jr.as_f(l_scale_x)
    let l_scale_y = jr.as_f(l_scale_y)
    jr.JNull
}

fn c1_m6__colormask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_red, l_green, l_blue, l_alpha] = jargs
    let l_red = jr.as_f(l_red)
    let l_green = jr.as_f(l_green)
    let l_blue = jr.as_f(l_blue)
    let l_alpha = jr.as_f(l_alpha)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLESImageProcessor",
        "org.allbinary.image.opengles.OpenGLESImageProcessor",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("translate_3", ["GL10", "float", "float"], False, c1_m3__translate), 
            jr.Method("rotate_2", ["GL10", "float"], False, c1_m4__rotate), 
            jr.Method("scale_3", ["GL10", "float", "float"], False, c1_m5__scale), 
            jr.Method("colorMask_5", ["GL10", "float", "float", "float", "float"], False, c1_m6__colormask), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

