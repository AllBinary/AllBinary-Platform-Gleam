// Generated Code Do Not Modify
// package org.allbinary.animation.text
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomTextBoxIndexedAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
        let l_ab_to_g_b_util = jr.call_static("ABToGBUtil", "getInstance_0", [])
        let l_ab_canvas = jr.get_field(l_ab_to_g_b_util, "abCanvas")
        let l_font = jr.call_static("Font", "getFont_3", [jr.get_static("Font", "FACE_SYSTEM"), jr.get_static("Font", "STYLE_PLAIN"), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleHeight")])
        let l_custom_text_box = jr.new("CustomTextBox2", [jr.call(l_ab_canvas, "getCustomCommandListener_0", []), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(this, "maxLength"), jr.get_static("TextField", "ANY"), l_font, jr.call(jr.call(l_ab_canvas, "getLayerManager_0", []), "getBackgroundBasicColor_0", []), jr.call(jr.call(l_ab_canvas, "getLayerManager_0", []), "getForegroundBasicColor_0", [])])
    jr.new("CustomTextBoxIndexedAnimation", [l_custom_text_box])
}

fn c1_m6__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
        let l_font_size = jr.as_i(jr.get_field(jr.get_field(this, "scaleProperties"), "scaleHeight"))
        jr.set_field(this, "scaleProperties", l_scale_properties)
        case jr.truth(jr.lt(jr.get_field(jr.get_field(this, "scaleProperties"), "scaleHeight"), jr.JInt(6))) {
            True -> {
            jr.set_field(jr.get_field(this, "scaleProperties"), "scaleHeight", jr.as_i(l_font_size))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font_size, l_max_length] = jargs
    let l_font_size = jr.as_i(l_font_size)
    let l_max_length = jr.as_i(l_max_length)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "scaleProperties", jr.new("ScaleProperties", []))
        jr.set_field(jr.get_field(this, "scaleProperties"), "scaleHeight", jr.as_i(l_font_size))
        jr.set_field(this, "maxLength", jr.as_i(l_max_length))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomTextBoxIndexedAnimationFactory",
        "org.allbinary.animation.text.CustomTextBoxIndexedAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("logUtil", jr.JNull), #("scaleProperties", jr.JNull), #("maxLength", jr.JInt(0))],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m5__getinstance), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m6__setinitialscale), 
            jr.Method("jinit_2", ["int", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

