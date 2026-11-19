// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        jr.call_super("TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory", this, "initImageCache_2", [jr.call_static("OpenGLImageCacheFactory", "getInstance_0", []), l_level])
    jr.JNull
}

fn c1_m3__isfeature(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL")])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory", this, [jr.JStr("OpenGL TouchButton Animations")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory",
        "org.allbinary.input.motion.button.TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory",
        "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("init_1", ["int"], False, c1_m2__init), 
            jr.Method("isFeature_0", [], False, c1_m3__isfeature), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

