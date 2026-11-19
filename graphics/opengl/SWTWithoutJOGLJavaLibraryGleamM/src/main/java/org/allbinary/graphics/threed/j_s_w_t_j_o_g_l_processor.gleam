// Generated Code Do Not Modify
// package org.allbinary.graphics.threed
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class(), c2_class()]
}

// class SWTJOGLProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "glHolder", jr.new_with("SWTJOGLProcessor$1", this, [], []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("SWTJOGLProcessor", "instance", jr.new("SWTJOGLProcessor", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("SWTJOGLProcessor", "instance")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display, l_comp] = jargs
    jr.JNull
}

fn c1_m5__isholdercreated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.get_field(this, "glHolder"), "isCreated")
}

fn c1_m6__setrenderer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_renderer] = jargs
    jr.JNull
}

fn c1_m7__isjogl(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m8__createsurface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__onsurfacecreated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__onsurfacechangedforevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event] = jargs
    jr.JNull
}

fn c1_m11__onsurfacechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m12__onsurfacechangedwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m13__addlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m14__addlisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_midlet] = jargs
    jr.JNull
}

fn c1_m15__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m16__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m17__setcustom(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_ratio] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_ratio = jr.as_f(l_ratio)
    jr.JNull
}

fn c1_m18__setratioprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ratio_processor] = jargs
    jr.JNull
}

fn c1_m19__charwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font, l_ch] = jargs
    let l_ch = jr.as_c(l_ch)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m20__charswidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font, l_ch, l_offset, l_length] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_length = jr.as_i(l_length)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m21__stringwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font, l_str] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m22__substringwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font, l_str, l_offset, l_len] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_len = jr.as_i(l_len)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SWTJOGLProcessor",
        "org.allbinary.graphics.threed.SWTJOGLProcessor",
        "Object",
        ["Runnable"],
        False,
        [#("glHolder", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_2", ["Object", "Object"], False, c1_m4__init), 
            jr.Method("isHolderCreated_0", [], False, c1_m5__isholdercreated), 
            jr.Method("setRenderer_1", ["Object"], False, c1_m6__setrenderer), 
            jr.Method("isJOGL_0", [], False, c1_m7__isjogl), 
            jr.Method("createSurface_0", [], False, c1_m8__createsurface), 
            jr.Method("onSurfaceCreated_0", [], False, c1_m9__onsurfacecreated), 
            jr.Method("onSurfaceChangedForEvent_1", ["Object"], False, c1_m10__onsurfacechangedforevent), 
            jr.Method("onSurfaceChanged_0", [], False, c1_m11__onsurfacechanged), 
            jr.Method("onSurfaceChangedWH_2", ["int", "int"], False, c1_m12__onsurfacechangedwh), 
            jr.Method("addListener_0", [], False, c1_m13__addlistener), 
            jr.Method("addListeners_1", ["MIDlet"], False, c1_m14__addlisteners), 
            jr.Method("run_0", [], False, c1_m15__run), 
            jr.Method("clear_0", [], False, c1_m16__clear), 
            jr.Method("setCustom_3", ["int", "int", "float"], False, c1_m17__setcustom), 
            jr.Method("setRatioProcessor_1", ["RatioProcessor"], False, c1_m18__setratioprocessor), 
            jr.Method("charWidth_2", ["Font", "char"], False, c1_m19__charwidth), 
            jr.Method("charsWidth_4", ["Font", "charArr", "int", "int"], False, c1_m20__charswidth), 
            jr.Method("stringWidth_2", ["Font", "String"], False, c1_m21__stringwidth), 
            jr.Method("substringWidth_4", ["Font", "String", "int", "int"], False, c1_m22__substringwidth), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

// class SWTJOGLProcessor$1

fn c2_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c2_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c2_m1__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_renderer] = jargs
    jr.JNull
}

fn c2_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GLHolder", this, jargs)
    c2_jfields(this)
    this
}

fn c2_class() -> jr.Class {
    jr.Class(
        "SWTJOGLProcessor$1",
        "org.allbinary.graphics.threed.SWTJOGLProcessor$1",
        "GLHolder",
        [],
        False,
        [#("jouter", jr.JNull)],
        [],
        [
            jr.Method("run_1", ["Object"], False, c2_m1__run), 
            jr.Method("jinit_0", [], False, c2_jinit)],
        c2_jfields,
        c2_jclinit,
    )
}

