// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLCapabilities

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "CUSTOM_GL_SURFACE_VIEW", jr.JBool(True))
    jr.set_field(this, "VERSION_1_0", jr.JStr("1.0"))
    jr.set_field(this, "VERSION_1_1", jr.JStr("1.1"))
    jr.set_field(this, "VERSION_2_0", jr.JStr("2.0"))
    jr.set_field(this, "VERSION_3_0", jr.JStr("3.0"))
    jr.set_field(this, "VERSION_3_1", jr.JStr("3.1"))
    jr.set_field(this, "VERSION_3_2", jr.JStr("3.2"))
    jr.set_field(this, "VERSION_HIGHER_THAN_EXISTS", jr.JStr("999.999"))
    jr.set_field(this, "glVersion", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "shaderVersion", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "glInstanceVersion", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "maxTextureSize", jr.as_i(jr.JInt(64)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLCapabilities", "instance", jr.new("OpenGLCapabilities", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLCapabilities", "instance")
}

fn c1_m16__isinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_m17__initcapabilities(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_m18__isglextensiondrawtexture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m19__getglversion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "glVersion")
}

fn c1_m20__isvertexbufferobjectsupport(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m21__istexturesizevalid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width_and_height] = jargs
    let l_width_and_height = jr.as_i(l_width_and_height)
    jr.JBool(True)
}

fn c1_jinit15(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLCapabilities",
        "org.allbinary.graphics.opengles.OpenGLCapabilities",
        "Object",
        [],
        False,
        [#("CUSTOM_GL_SURFACE_VIEW", jr.JBool(False)), #("VERSION_1_0", jr.JNull), #("VERSION_1_1", jr.JNull), #("VERSION_2_0", jr.JNull), #("VERSION_3_0", jr.JNull), #("VERSION_3_1", jr.JNull), #("VERSION_3_2", jr.JNull), #("VERSION_HIGHER_THAN_EXISTS", jr.JNull), #("glVersion", jr.JNull), #("shaderVersion", jr.JInt(0)), #("glInstanceVersion", jr.JNull), #("maxTextureSize", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isInitialized_0", [], False, c1_m16__isinitialized), 
            jr.Method("initCapabilities_1", ["Object"], False, c1_m17__initcapabilities), 
            jr.Method("isGlExtensionDrawTexture_0", [], False, c1_m18__isglextensiondrawtexture), 
            jr.Method("getGlVersion_0", [], False, c1_m19__getglversion), 
            jr.Method("isVertexBufferObjectSupport_0", [], False, c1_m20__isvertexbufferobjectsupport), 
            jr.Method("isTextureSizeValid_1", ["int"], False, c1_m21__istexturesizevalid), 
            jr.Method("jinit_0", [], False, c1_jinit15)],
        c1_jfields,
        c1_jclinit,
    )
}

