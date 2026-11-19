// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "rectangle", jr.get_static("RectangleFactory", "SINGLETON"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m13__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.get_field(this, "animationX"), jr.get_field(this, "animationY")])
    jr.JNull
}

fn c1_m14__updaterectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_x = jr.as_i(jr.mul(jr.call(jr.get_field(this, "rawRectangle"), "getWidth_0", []), jr.call(jr.get_field(this, "cellPosition"), "getColumn_0", [])))
            let l_y = jr.as_i(jr.mul(jr.call(jr.get_field(this, "rawRectangle"), "getHeight_0", []), jr.call(jr.get_field(this, "cellPosition"), "getRow_0", [])))
            let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
            jr.set_field(this, "rectangle", jr.new("Rectangle", [jr.call(l_point_factory, "createXY_2", [jr.add(l_x, jr.get_field(this, "xBorder")), jr.add(l_y, jr.get_field(this, "yBorder"))]), jr.call(jr.get_field(this, "rawRectangle"), "getWidth_0", []), jr.call(jr.get_field(this, "rawRectangle"), "getHeight_0", [])]))
            let l_point = jr.call(jr.get_field(this, "rectangle"), "getPoint_0", [])
            jr.set_field(this, "animationX", jr.as_i(jr.call(l_point, "getX_0", [])))
            jr.set_field(this, "animationY", jr.as_i(jr.call(l_point, "getY_0", [])))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("updateRectangle"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m15__getcellpositionp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "cellPosition")
}

fn c1_m16__getrectanglep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "rectangle")
}

fn c1_m17__gettouchbuttoninput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "touchButtonInput")
}

fn c1_m18__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        let l_string_util = jr.call_static("StringUtil", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("TouchButton: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [jr.get_field(this, "rectangle")])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" CellPosition: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [jr.get_field(this, "cellPosition")])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" xBorder: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "xBorder")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" yBorder: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "yBorder")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit12(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input, l_animation_interface, l_raw_rectangle, l_cell_position, l_x_border, l_y_border] = jargs
    let l_x_border = jr.as_i(l_x_border)
    let l_y_border = jr.as_i(l_y_border)
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "touchButtonInput", l_touch_button_input)
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.set_field(this, "rawRectangle", l_raw_rectangle)
        jr.set_field(this, "cellPosition", l_cell_position)
        jr.set_field(this, "xBorder", jr.as_i(l_x_border))
        jr.set_field(this, "yBorder", jr.as_i(l_y_border))
        jr.call(this, "updateRectangle_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Created: ")]), "append_1", [jr.call(this, "toString_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButton",
        "org.allbinary.input.motion.button.TouchButton",
        "Paintable",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("touchButtonInput", jr.JNull), #("animationInterface", jr.JNull), #("rawRectangle", jr.JNull), #("xBorder", jr.JInt(0)), #("yBorder", jr.JInt(0)), #("rectangle", jr.JNull), #("cellPosition", jr.JNull), #("animationX", jr.JInt(0)), #("animationY", jr.JInt(0))],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m13__paint), 
            jr.Method("updateRectangle_0", [], False, c1_m14__updaterectangle), 
            jr.Method("getCellPositionP_0", [], False, c1_m15__getcellpositionp), 
            jr.Method("getRectangleP_0", [], False, c1_m16__getrectanglep), 
            jr.Method("getTouchButtonInput_0", [], False, c1_m17__gettouchbuttoninput), 
            jr.Method("toString_0", [], False, c1_m18__tostring), 
            jr.Method("jinit_6", ["TouchButtonInput", "AnimationInterface", "Rectangle", "CellPosition", "int", "int"], False, c1_jinit12)],
        c1_jfields,
        c1_jclinit,
    )
}

