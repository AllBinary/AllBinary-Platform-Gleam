// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLOptions

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_open_g_l_feature_factory = jr.call_static("OpenGLFeatureFactory", "getInstance_0", [])
        case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL_OPTIONS")])) {
            True -> {
            let l_open_g_l_multiple_list = jr.new("BasicArrayListD", [])
            jr.call(l_open_g_l_multiple_list, "add_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL")])
            jr.call(jr.call_static("GameFeatureChoiceGroups", "getMultipleInstance_0", []), "add_2", [jr.JStr("OpenGL (Complete Restart)"), l_open_g_l_multiple_list])
            let l_open_g_l_version_selector_multiple_list = jr.new("BasicArrayListD", [])
            jr.call(l_open_g_l_version_selector_multiple_list, "add_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL_AUTO_SELECT")])
            jr.call(l_open_g_l_version_selector_multiple_list, "add_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL_MINIMUM")])
            jr.call(jr.call_static("GameFeatureChoiceGroups", "getExclusiveInstance_0", []), "add_2", [jr.JStr("OpenGL Version Selector"), l_open_g_l_version_selector_multiple_list])
            let l_open_g_l_image_color_multiple_list = jr.new("BasicArrayListD", [])
            jr.call(l_open_g_l_image_color_multiple_list, "add_1", [jr.get_field(l_open_g_l_feature_factory, "IMAGE_COLOR_DEPTH_4444")])
            jr.call(l_open_g_l_image_color_multiple_list, "add_1", [jr.get_field(l_open_g_l_feature_factory, "IMAGE_COLOR_DEPTH_8888")])
            jr.call(jr.call_static("GameFeatureChoiceGroups", "getExclusiveInstance_0", []), "add_2", [jr.JStr("OpenGL Image Color RGBA"), l_open_g_l_image_color_multiple_list])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLOptions",
        "org.allbinary.graphics.opengles.OpenGLOptions",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("init_0", [], False, c1_m1__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

