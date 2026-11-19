// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.renderer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryRendererBase3

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
        jr.while_loop("", fn() { jr.gt(jr.call(jr.get_field(this, "list"), "size_0", []), jr.JInt(0)) }, fn() {
            let l_open_g_l_e_s_image = jr.call(jr.get_field(this, "list"), "removeAt_1", [jr.JInt(0)])
            case jr.truth(jr.ne(l_open_g_l_e_s_image, jr.JNull)) {
                True -> {
                jr.call(l_open_g_l_e_s_image, "set_1", [l_gl])
                Nil
            }
                False -> Nil
            }
            Nil
        })
    jr.JNull
}

fn c1_m3__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
        jr.call(jr.get_field(this, "list"), "add_1", [l_image])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryRendererBase3",
        "org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3",
        "Object",
        [],
        False,
        [#("list", jr.JNull)],
        [],
        [
            jr.Method("update_1", ["GL10"], False, c1_m2__update), 
            jr.Method("add_1", ["Image"], False, c1_m3__add), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

