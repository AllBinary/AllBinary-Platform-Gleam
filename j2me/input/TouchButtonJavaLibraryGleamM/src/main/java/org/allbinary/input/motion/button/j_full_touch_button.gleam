// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FullTouchButton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createbutton(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input, l_touch_button_resource, l_raw_rectangle, l_cell_position, l_x_border, l_y_border] = jargs
    let l_x_border = jr.as_i(l_x_border)
    let l_y_border = jr.as_i(l_y_border)
    jr.new("FullTouchButton", [l_touch_button_input, jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "get_1", [jr.get_field(l_touch_button_resource, "RESOURCE")]), "getInstance_1", [jr.JInt(0)]), jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "get_1", [jr.get_field(l_touch_button_resource, "HINT")]), "getInstance_1", [jr.JInt(0)]), l_raw_rectangle, l_cell_position, l_x_border, l_y_border])
}

fn c1_m3__updaterectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
            let l_x = jr.as_i(jr.mul(jr.call(jr.get_inherited(this, "FullTouchButton", "rawRectangle"), "getWidth_0", []), jr.call(jr.get_inherited(this, "FullTouchButton", "cellPositionP"), "getColumn_0", [])))
            let l_y = jr.as_i(jr.mul(jr.call(jr.get_inherited(this, "FullTouchButton", "rawRectangle"), "getHeight_0", []), jr.call(jr.get_inherited(this, "FullTouchButton", "cellPositionP"), "getRow_0", [])))
            jr.set_inherited(this, "FullTouchButton", "rectangleP", jr.new("Rectangle", [jr.call(l_point_factory, "createXY_2", [l_x, l_y]), jr.add(jr.call(jr.get_inherited(this, "FullTouchButton", "rawRectangle"), "getWidth_0", []), jr.mul(jr.JInt(2), jr.get_inherited(this, "FullTouchButton", "xBorder"))), jr.add(jr.call(jr.get_inherited(this, "FullTouchButton", "rawRectangle"), "getHeight_0", []), jr.mul(jr.JInt(2), jr.get_inherited(this, "FullTouchButton", "yBorder")))]))
            let l_point = jr.call(jr.get_inherited(this, "FullTouchButton", "rectangleP"), "getPoint_0", [])
            jr.set_inherited(this, "FullTouchButton", "animationX", jr.add(jr.call(l_point, "getX_0", []), jr.get_inherited(this, "FullTouchButton", "xBorder")))
            jr.set_inherited(this, "FullTouchButton", "animationY", jr.add(jr.call(l_point, "getY_0", []), jr.get_inherited(this, "FullTouchButton", "yBorder")))
            jr.set_inherited(this, "FullTouchButton", "hintAnimationY", jr.shr(jr.sub(jr.get_inherited(this, "FullTouchButton", "animationY"), jr.call(jr.get_inherited(this, "FullTouchButton", "rectangleP"), "getHeight_0", [])), jr.JInt(1)))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "FullTouchButton", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "FullTouchButton", "commonStrings"), "EXCEPTION"), this, jr.JStr("updateRectangle"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input, l_animation_interface, l_hint_animation_interface, l_raw_rectangle, l_cell_position, l_x_border, l_y_border] = jargs
    let l_x_border = jr.as_i(l_x_border)
    let l_y_border = jr.as_i(l_y_border)
        jr.super_init("TouchButton", this, [l_touch_button_input, l_animation_interface, l_hint_animation_interface, l_raw_rectangle, l_cell_position, l_x_border, l_y_border])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FullTouchButton",
        "org.allbinary.input.motion.button.FullTouchButton",
        "TouchButton",
        [],
        False,
        [],
        [],
        [
            jr.Method("createButton_6", ["TouchButtonInput", "TouchButtonResource", "Rectangle", "CellPosition", "int", "int"], True, c1_m1__createbutton), 
            jr.Method("updateRectangle_0", [], False, c1_m3__updaterectangle), 
            jr.Method("jinit_7", ["TouchButtonInput", "Animation", "Animation", "Rectangle", "CellPosition", "int", "int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

