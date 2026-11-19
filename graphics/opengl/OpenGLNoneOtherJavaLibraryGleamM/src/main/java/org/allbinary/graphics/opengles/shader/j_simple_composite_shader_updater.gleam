// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SimpleCompositeShaderUpdater

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_uniform_block_array, l_uniform_array, l_attribute_array, l_attribute_handle_array] = jargs
        jr.super_init("CompositeShaderUpdater", this, [l_uniform_block_array, l_uniform_array, l_attribute_array, l_attribute_handle_array])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SimpleCompositeShaderUpdater",
        "org.allbinary.graphics.opengles.shader.SimpleCompositeShaderUpdater",
        "CompositeShaderUpdater",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_4", ["StringArr", "StringArr", "StringArr", "intArr"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

