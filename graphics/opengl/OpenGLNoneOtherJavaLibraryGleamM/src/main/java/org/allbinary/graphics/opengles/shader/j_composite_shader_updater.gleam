// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompositeShaderUpdater

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonSeps", jr.call_static("CommonSeps", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CompositeShaderUpdater", "instanceC", jr.new("CompositeShaderUpdater", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []), jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []), jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY")]))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CompositeShaderUpdater", "instanceC")
}

fn c1_m5__onsurfacecreated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_egl_config, l_program_handle] = jargs
    let l_program_handle = jr.as_i(l_program_handle)
    jr.JNull
}

fn c1_m6__onsurfacedestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_uniform_block_array, l_uniform_array, l_attribute_array, l_attribute_handle_array] = jargs
    jr.super_init("ShaderUpdater", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompositeShaderUpdater",
        "org.allbinary.graphics.opengles.shader.CompositeShaderUpdater",
        "ShaderUpdater",
        [],
        False,
        [#("commonSeps", jr.JNull)],
        [#("instanceC", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("onSurfaceCreated_3", ["GL10", "EGLConfig", "int"], False, c1_m5__onsurfacecreated), 
            jr.Method("onSurfaceDestroyed_1", ["GL10"], False, c1_m6__onsurfacedestroyed), 
            jr.Method("jinit_4", ["StringArr", "StringArr", "StringArr", "intArr"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

