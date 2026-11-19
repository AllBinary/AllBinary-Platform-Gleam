// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicPopupMenuPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "drawStringUtil", jr.call_static("DrawVerticalStringUtil", "getInstance_0", []))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m13__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        let l_is_open_g_l = jr.call(l_features, "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL")])
        jr.call(jr.get_field(this, "drawStringUtil"), "updateMeasurement_2", [l_graphics, jr.get_field(this, "label")])
        let l__b_o_r_d_e_r = jr.cell(jr.as_i(jr.JInt(0)))
        case jr.truth(case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) { True -> jr.JBool(True) False -> l_is_open_g_l }) {
            True -> {
            jr.set(l__b_o_r_d_e_r, jr.as_i(jr.div(jr.call_static("MyFontProcessor", "defaultCharWidth_1", [l_font]), jr.JInt(2))))
            Nil
        }
            False -> case jr.truth(case jr.truth(case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isJ2SE_0", []) }) { True -> jr.JBool(True) False -> jr.get_static("SWTUtil", "isSWT") }) {
            True -> {
            jr.set(l__b_o_r_d_e_r, jr.as_i(jr.call_static("MyFontProcessor", "defaultCharWidth_1", [l_font])))
            Nil
        }
            False -> {
            jr.set(l__b_o_r_d_e_r, jr.as_i(jr.mul(jr.call_static("MyFontProcessor", "defaultCharWidth_1", [l_font]), jr.JInt(2))))
            Nil
        }
        }
        }
        jr.set_field(this, "BORDER", jr.as_i(jr.get(l__b_o_r_d_e_r)))
        jr.set_field(this, "heightOffset", jr.as_i(jr.sub(jr.call(jr.get_field(this, "rectangle"), "getHeight_0", []), jr.mul(jr.call(l_font, "getHeight_0", []), jr.call(jr.get_static("BasicPopupMenuPaintable", "NAME"), "length_0", [])))))
        case jr.truth(jr.call(jr.call_static("OpenGLFeatureUtil", "getInstance_0", []), "isAnyThreed_0", [])) {
            True -> {
            jr.compound(fn() { jr.get_field(this, "heightOffset") }, fn(jv) { jr.sub(jv, jr.add(jr.call(l_font, "getHeight_0", []), jr.JInt(2))) }, fn(jv) { jr.set_field(this, "heightOffset", jv) })
            case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) {
                True -> {
                jr.set_field(this, "heightOffset", jr.as_i(jr.call(l_font, "getHeight_0", [])))
                Nil
            }
                False -> {
                jr.compound(fn() { jr.get_field(this, "heightOffset") }, fn(jv) { jr.sub(jv, jr.add(jr.call(l_font, "getHeight_0", []), jr.JInt(2))) }, fn(jv) { jr.set_field(this, "heightOffset", jv) })
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "offset", jr.as_i(jr.add(jr.shr(jr.get_field(this, "heightOffset"), jr.JInt(1)), case jr.truth(jr.call(jr.call_static("SWTJOGLProcessor", "getInstance_0", []), "isJOGL_0", [])) { True -> jr.JInt(4) False -> jr.JInt(0) })))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m14__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle] = jargs
        jr.set_field(this, "rectangle", l_rectangle)
        let l_width = jr.as_i(jr.call(jr.get_field(this, "rectangle"), "getWidth_0", []))
        let l_height = jr.as_i(jr.call(jr.get_field(this, "rectangle"), "getHeight_0", []))
        case jr.truth(case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
            True -> {
            Nil
        }
            False -> {
            let l_rectangle_filled_animation = jr.get_field(this, "animationInterface")
            jr.call(l_rectangle_filled_animation, "setWidth_1", [l_width])
            jr.call(l_rectangle_filled_animation, "setHeight_1", [l_height])
            Nil
        }
        }
    jr.JNull
}

fn c1_m15__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        let l_point = jr.call(jr.get_field(this, "rectangle"), "getPoint_0", [])
        let l_x = jr.as_i(jr.call(l_point, "getX_0", []))
        let l_y = jr.as_i(jr.call(l_point, "getY_0", []))
        let l_width = jr.as_i(jr.call(jr.get_field(this, "rectangle"), "getWidth_0", []))
        let l_height = jr.as_i(jr.call(jr.get_field(this, "rectangle"), "getHeight_0", []))
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, l_x, l_y])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.get_field(this, "foregroundBasicColor")])
        jr.call(jr.get_field(this, "drawStringUtil"), "paintVerticle_5", [l_graphics, jr.get_field(this, "label"), jr.add(l_x, jr.get_field(this, "BORDER")), jr.add(l_y, jr.get_field(this, "offset")), jr.JInt(0)])
        jr.call(l_graphics, "drawRect_4", [l_x, l_y, l_width, l_height])
    jr.JNull
}

fn c1_jinit12(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle, l_background_basic_color, l_foreground_basic_color] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "foregroundBasicColor", l_foreground_basic_color)
        jr.set_field(this, "label", jr.get_static("BasicPopupMenuPaintable", "NAME"))
        jr.set_field(this, "rectangle", l_rectangle)
        case jr.truth(case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
            True -> {
            jr.set_field(this, "animationInterface", jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]))
            Nil
        }
            False -> {
            jr.set_field(this, "animationInterface", jr.new("RectangleFilledAnimation", [jr.call(jr.get_field(this, "rectangle"), "getWidth_0", []), jr.call(jr.get_field(this, "rectangle"), "getHeight_0", []), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "TRANSPARENT_GREY")]))
            Nil
        }
        }
        jr.call(this, "init_1", [l_rectangle])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicPopupMenuPaintable",
        "org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable",
        "Paintable",
        ["UpdateMyFontInterface"],
        False,
        [#("basicSetColorUtil", jr.JNull), #("drawStringUtil", jr.JNull), #("label", jr.JNull), #("foregroundBasicColor", jr.JNull), #("myFontProcessor", jr.JNull), #("rectangle", jr.JNull), #("BORDER", jr.JInt(0)), #("heightOffset", jr.JInt(0)), #("offset", jr.JInt(0)), #("animationInterface", jr.JNull)],
        [#("NAME", jr.JStr("MENU"))],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m13__updatemeasurement), 
            jr.Method("init_1", ["Rectangle"], False, c1_m14__init), 
            jr.Method("paint_1", ["Graphics"], False, c1_m15__paint), 
            jr.Method("jinit_3", ["Rectangle", "BasicColor", "BasicColor"], False, c1_jinit12)],
        c1_jfields,
        c1_jclinit,
    )
}

