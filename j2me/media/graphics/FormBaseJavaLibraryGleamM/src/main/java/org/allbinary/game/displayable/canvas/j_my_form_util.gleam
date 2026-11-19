// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MyFormUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "popupMenuRectangle", jr.get_static("RectangleFactory", "SINGLETON"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MyFormUtil", "instance", jr.new("MyFormUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MyFormUtil", "instance")
}

fn c1_m6__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        let l_is_open_g_l = jr.call(l_features, "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL")])
        let l__t_o_t_a_l___c_h_a_r___w_i_d_t_h = jr.as_i(case jr.truth(case jr.truth(jr.call(jr.call_static("SWTJOGLProcessor", "getInstance_0", []), "isJOGL_0", [])) { True -> l_is_open_g_l False -> jr.JBool(False) }) { True -> jr.JInt(2) False -> jr.JInt(3) })
        let l_width = jr.as_i(jr.call_static("MyFontProcessor", "defaultStringWidth_2", [l_font, l__t_o_t_a_l___c_h_a_r___w_i_d_t_h]))
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        case jr.truth(jr.lt(jr.call(l_display_info, "getLastHeight_0", []), jr.JInt(320))) {
            True -> {
            jr.set_field(this, "popupMenuRectangle", jr.new("Rectangle", [jr.call(l_point_factory, "createXY_2", [jr.JInt(0), jr.JInt(25)]), l_width, jr.add(jr.mul(jr.call(l_font, "getHeight_0", []), jr.JInt(4)), jr.JInt(2))]))
            Nil
        }
            False -> {
            jr.set_field(this, "popupMenuRectangle", jr.new("Rectangle", [jr.call(l_point_factory, "createXY_2", [jr.JInt(0), jr.sub(jr.call(l_display_info, "getLastHalfHeight_0", []), jr.JInt(70))]), l_width, jr.mul(jr.call(l_font, "getHeight_0", []), jr.JInt(5))]))
            Nil
        }
        }
    jr.JNull
}

fn c1_m7__getpopupmenurectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "popupMenuRectangle")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MyFormUtil",
        "org.allbinary.game.displayable.canvas.MyFormUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("popupMenuRectangle", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m6__updatemeasurement), 
            jr.Method("getPopupMenuRectangle_0", [], False, c1_m7__getpopupmenurectangle), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

