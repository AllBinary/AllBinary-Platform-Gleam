// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLVUtilBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__gltexenvix(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_target, l_pname, l_param] = jargs
    let l_target = jr.as_i(l_target)
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_i(l_param)
    jr.JNull
}

fn c1_m2__gltexparameterix(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_target, l_pname, l_param] = jargs
    let l_target = jr.as_i(l_target)
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_i(l_param)
    jr.JNull
}

fn c1_m3__glgeneratemipmap(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_texture_id, l_target, l_generate_mip_map] = jargs
    let l_texture_id = jr.as_i(l_texture_id)
    let l_target = jr.as_i(l_target)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLVUtilBase",
        "org.allbinary.graphics.opengles.OpenGLVUtilBase",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("glTexEnvix_4", ["GL10", "int", "int", "int"], False, c1_m1__gltexenvix), 
            jr.Method("glTexParameterix_4", ["GL10", "int", "int", "int"], False, c1_m2__gltexparameterix), 
            jr.Method("glGenerateMipmap_4", ["GL10", "int", "int", "boolean"], False, c1_m3__glgeneratemipmap), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

