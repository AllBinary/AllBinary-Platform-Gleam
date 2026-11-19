// Generated Code Do Not Modify
// package org.allbinary.emulator.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TrueTypeFontUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "fontImage", jr.get_static("OpenGLESImage", "NULL_OPENGL_IMAGE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TrueTypeFontUtil", "instance", jr.new("TrueTypeFontUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TrueTypeFontUtil", "instance")
}

fn c1_m5__getastexturesize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_texture_size] = jargs
    let l_texture_size = jr.as_i(l_texture_size)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m6__getcellsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cell_size] = jargs
    let l_cell_size = jr.as_i(l_cell_size)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m7__getfontbitmap(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_filename, l_font_size, l_cell_size, l_basic_color] = jargs
    let l_font_size = jr.as_i(l_font_size)
    let l_cell_size = jr.as_i(l_cell_size)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m8__savefontatlasasfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__getfontbitmapgl(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_filename, l_cell_size, l_basic_color] = jargs
    let l_cell_size = jr.as_i(l_cell_size)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m10__getfontwidths(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_filename, l_font_size] = jargs
    let l_font_size = jr.as_i(l_font_size)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("TrueTypeFontUtilBase", this, [jr.JInt(1)])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TrueTypeFontUtil",
        "org.allbinary.emulator.device.TrueTypeFontUtil",
        "TrueTypeFontUtilBase",
        [],
        False,
        [#("fontImage", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getAsTextureSize_1", ["int"], False, c1_m5__getastexturesize), 
            jr.Method("getCellSize_1", ["int"], False, c1_m6__getcellsize), 
            jr.Method("getFontBitmap_4", ["String", "int", "int", "BasicColor"], False, c1_m7__getfontbitmap), 
            jr.Method("saveFontAtlasAsFile_0", [], False, c1_m8__savefontatlasasfile), 
            jr.Method("getFontBitmapGL_4", ["GL10", "String", "int", "BasicColor"], False, c1_m9__getfontbitmapgl), 
            jr.Method("getFontWidths_2", ["String", "int"], False, c1_m10__getfontwidths), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

