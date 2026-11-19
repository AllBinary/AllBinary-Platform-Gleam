// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createfactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory", [jr.JStr("TouchButton Animations")])
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        jr.call(this, "initImageCache_2", [jr.call_static("ImageCacheFactory", "getInstance_0", []), l_level])
    jr.JNull
}

fn c1_m4__initimagecache(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_cache, l_level] = jargs
    let l_level = jr.as_i(l_level)
    jr.method(fn() {
            case jr.truth(jr.call_inherited(this, "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory", "isInitialized_0", [])) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            jr.call_super("BaseResourceAnimationInterfaceFactoryInterfaceFactory", this, "init_1", [l_level])
        jr.JNull
    })
}

fn c1_m5__isloadinglevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
    jr.method(fn() {
            let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
            case jr.truth(jr.eq(l_level, jr.call(jr.get_field(l_resource_loading_level_factory, "LOAD_TOUCH"), "getLevel_0", []))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.call_super("BaseResourceAnimationInterfaceFactoryInterfaceFactory", this, "isLoadingLevel_1", [l_level]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m6__isfeature(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.not(jr.call(jr.call_static("Features", "getInstance_0", []), "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL")]))) {
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

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.super_init("BaseResourceAnimationInterfaceFactoryInterfaceFactory", this, [l_name, jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []), jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []), jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory",
        "org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory",
        "BaseResourceAnimationInterfaceFactoryInterfaceFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("createFactory_0", [], True, c1_m1__createfactory), 
            jr.Method("init_1", ["int"], False, c1_m3__init), 
            jr.Method("initImageCache_2", ["ImageCache", "int"], False, c1_m4__initimagecache), 
            jr.Method("isLoadingLevel_1", ["int"], False, c1_m5__isloadinglevel), 
            jr.Method("isFeature_0", [], False, c1_m6__isfeature), 
            jr.Method("jinit_1", ["String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

