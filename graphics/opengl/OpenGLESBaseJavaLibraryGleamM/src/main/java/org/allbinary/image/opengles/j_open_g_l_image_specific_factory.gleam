// Generated Code Do Not Modify
// package org.allbinary.image.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLImageSpecificFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "imageFactory", jr.get_static("OpenGLImageFactory", "NULL_OPENGL_IMAGE_FACTORY"))
    jr.set_field(this, "updating", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLImageSpecificFactory", "instance", jr.new("OpenGLImageSpecificFactory", []))
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLImageSpecificFactory", "instance")
}

fn c1_m5__setimagefactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_factory] = jargs
        jr.set_field(this, "imageFactory", l_image_factory)
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Selected Image Factory: ")]), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.get_field(this, "imageFactory")])]), "toString_0", []), this, jr.JStr("setImageFactory")])
    jr.JNull
}

fn c1_m6__getimagefactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "imageFactory")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLImageSpecificFactory",
        "org.allbinary.image.opengles.OpenGLImageSpecificFactory",
        "Object",
        [],
        False,
        [#("imageFactory", jr.JNull), #("updating", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m4__getinstance), 
            jr.Method("setImageFactory_1", ["OpenGLImageFactory"], False, c1_m5__setimagefactory), 
            jr.Method("getImageFactory_0", [], False, c1_m6__getimagefactory), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

