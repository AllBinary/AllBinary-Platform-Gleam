// Generated Code Do Not Modify
// package org.allbinary.image.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLESImage

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "openGLESImageProperties", jr.new("OpenGLESImageProperties", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLESImage", "NULL_OPENGL_IMAGE", jr.new("OpenGLESImage", [jr.get_static("NullImage", "NULL_IMAGE"), jr.get_static("PlatformBitmapBaseFactory", "NULL_PLATFORM_BITMAP_BASE_FACTORY"), jr.get_static("PlatformTextureBaseFactory", "NULL_PLATFORM_TEXTURE_BASE_FACTORY")]))
    jr.set_static("OpenGLESImage", "texture2dList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_m8__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m9__inittexture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JBool(False)
}

fn c1_m10__drawregion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_view_height, l_x__src, l_y__src, l_width, l_height, l_x, l_y, l_z] = jargs
    let l_view_height = jr.as_i(l_view_height)
    let l_x__src = jr.as_f(l_x__src)
    let l_y__src = jr.as_f(l_y__src)
    let l_width = jr.as_f(l_width)
    let l_height = jr.as_f(l_height)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.JNull
}

fn c1_m11__draw(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.JNull
}

fn c1_m13__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("OpenGLESImage", "TYPE"))
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_bitmap_factory, l_texture_factory] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "openGLBitmap", jr.call(l_bitmap_factory, "createBitmap_1", [l_image]))
        jr.set_field(this, "textureFactory", l_texture_factory)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLESImage",
        "org.allbinary.image.opengles.OpenGLESImage",
        "Object",
        ["OpenGLSurfaceChangedInterface"],
        False,
        [#("commonStrings", jr.JNull), #("textureFactory", jr.JNull), #("openGLBitmap", jr.JNull), #("openGLESImageProperties", jr.JNull)],
        [#("NULL_OPENGL_IMAGE", jr.JNull), #("texture2dList", jr.JNull), #("TYPE", jr.as_i(jr.JInt(4)))],
        [
            jr.Method("set_1", ["GL"], False, c1_m8__set), 
            jr.Method("initTexture_1", ["GL10"], False, c1_m9__inittexture), 
            jr.Method("drawRegion_9", ["GL10", "int", "float", "float", "float", "float", "int", "int", "int"], False, c1_m10__drawregion), 
            jr.Method("draw_4", ["GL10", "int", "int", "int"], False, c1_m11__draw), 
            jr.Method("getType_0", [], False, c1_m13__gettype), 
            jr.Method("jinit_3", ["Image", "PlatformBitmapBaseFactory", "PlatformTextureBaseFactory"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

