// Generated Code Do Not Modify
// package org.allbinary.emulator.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TrueTypeFontUtilBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getastexturesize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_texture_size] = jargs
    let l_texture_size = jr.as_i(l_texture_size)
    jr.as_i(jr.JInt(-1))
}

fn c1_m3__getcellsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cell_size] = jargs
    let l_cell_size = jr.as_i(l_cell_size)
    jr.as_i(jr.JInt(-1))
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale] = jargs
    let l_scale = jr.as_i(l_scale)
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TrueTypeFontUtilBase",
        "org.allbinary.emulator.device.TrueTypeFontUtilBase",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getAsTextureSize_1", ["int"], False, c1_m2__getastexturesize), 
            jr.Method("getCellSize_1", ["int"], False, c1_m3__getcellsize), 
            jr.Method("jinit_1", ["int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

