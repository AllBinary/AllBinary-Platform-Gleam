// Generated Code Do Not Modify
// package org.allbinary.animation.text
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomTextAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"))
    jr.set_field(this, "dx", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "dy", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createdxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text, l_font_size, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_font_size = jr.as_i(l_font_size)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        let l_custom_text_animation_factory = jr.new("CustomTextAnimationFactory", [l_text, l_font_size, l_animation_behavior_factory])
        jr.set_field(l_custom_text_animation_factory, "dx", l_dx)
        jr.set_field(l_custom_text_animation_factory, "dy", l_dy)
    l_custom_text_animation_factory
}

fn c1_m12__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
        let l_custom_text_animation = jr.cell(jr.JNull)
        case jr.truth(case jr.truth(jr.ne(jr.get_field(this, "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(this, "dy"), jr.JInt(0)) }) {
            True -> {
            jr.set(l_custom_text_animation, jr.new("AdjustCustomTextAnimation", [jr.get_field(this, "text"), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleHeight"), jr.get_field(this, "dx"), jr.get_field(this, "dy"), jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.set(l_custom_text_animation, jr.new("CustomTextAnimation", [jr.get_field(this, "text"), jr.get_field(jr.get_field(this, "scaleProperties"), "scaleHeight"), jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.call(jr.get(l_custom_text_animation), "setBasicColorP_1", [jr.get_field(this, "basicColor")])
    jr.get(l_custom_text_animation)
}

fn c1_m13__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_m14__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "font"), "stringWidth_1", [jr.get_field(this, "text")]))
}

fn c1_m15__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "font"), "getHeight_0", []))
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text, l_font_size, l_animation_behavior_factory] = jargs
    let l_font_size = jr.as_i(l_font_size)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "scaleProperties", jr.new("ScaleProperties", []))
        jr.set_field(this, "text", l_text)
        jr.set_field(jr.get_field(this, "scaleProperties"), "scaleHeight", jr.as_i(jr.sub(l_font_size, jr.div(l_font_size, jr.JInt(4)))))
        jr.set_field(this, "initScaleHeight", jr.as_i(jr.get_field(jr.get_field(this, "scaleProperties"), "scaleHeight")))
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
        jr.set_field(this, "font", jr.call_static("Font", "getFont_3", [jr.get_static("Font", "FACE_SYSTEM"), jr.get_static("Font", "STYLE_PLAIN"), jr.get_field(this, "initScaleHeight")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomTextAnimationFactory",
        "org.allbinary.animation.text.CustomTextAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("logUtil", jr.JNull), #("animationBehaviorFactory", jr.JNull), #("basicColor", jr.JNull), #("text", jr.JNull), #("initScaleHeight", jr.JInt(0)), #("dx", jr.JInt(0)), #("dy", jr.JInt(0)), #("font", jr.JNull), #("scaleProperties", jr.JNull)],
        [],
        [
            jr.Method("createDXY_5", ["String", "int", "int", "int", "AnimationBehaviorFactory"], True, c1_m1__createdxy), 
            jr.Method("getInstance_1", ["int"], False, c1_m12__getinstance), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m13__setinitialscale), 
            jr.Method("getWidth_0", [], False, c1_m14__getwidth), 
            jr.Method("getHeight_0", [], False, c1_m15__getheight), 
            jr.Method("jinit_3", ["String", "int", "AnimationBehaviorFactory"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

