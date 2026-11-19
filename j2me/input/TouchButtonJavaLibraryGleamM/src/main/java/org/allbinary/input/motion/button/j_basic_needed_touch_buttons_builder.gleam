// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicNeededTouchButtonsBuilder

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "BasicNeededTouchButtonsBuilder", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "BasicNeededTouchButtonsBuilder", "commonStrings"), "CONSTRUCTOR")])
            let l_list = jr.new("BasicArrayListD", [])
            let l_touch_button_location_helper = jr.new("TouchButtonLocationHelper", [])
            let l_basic_touch_button_cell_position_factory = jr.new("BasicTouchButtonCellPositionFactory", [])
            let l_common_buttons = jr.call_static("CommonButtons", "getInstance_0", [])
            let l_animation_interface = jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)])
            let l__u_p = jr.new("TouchButton", [jr.get_field(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "UP"), l_animation_interface, l_animation_interface, jr.get_field(l_common_buttons, "NORMAL_BUTTON"), jr.get_field(l_basic_touch_button_cell_position_factory, "SECOND_FROM_BOTTOM_LEFT"), jr.call(l_touch_button_location_helper, "getColumnsRemainderHalf_0", []), jr.call(l_touch_button_location_helper, "getRowsRemainderHalf_0", [])])
            let l__d_o_w_n = jr.new("TouchButton", [jr.get_field(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "DOWN"), l_animation_interface, l_animation_interface, jr.get_field(l_common_buttons, "NORMAL_BUTTON"), jr.get_field(l_basic_touch_button_cell_position_factory, "BOTTOM_LEFT"), jr.call(l_touch_button_location_helper, "getColumnsRemainderHalf_0", []), jr.call(l_touch_button_location_helper, "getRowsRemainderHalf_0", [])])
            let l__l_e_f_t = jr.new("TouchButton", [jr.get_field(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "LEFT"), l_animation_interface, l_animation_interface, jr.get_field(l_common_buttons, "NORMAL_BUTTON"), jr.get_field(l_basic_touch_button_cell_position_factory, "BOTTOM_SECOND_FROM_RIGHT"), jr.call(l_touch_button_location_helper, "getColumnsRemainderHalf_0", []), jr.call(l_touch_button_location_helper, "getRowsRemainderHalf_0", [])])
            let l__r_i_g_h_t = jr.new("TouchButton", [jr.get_field(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "RIGHT"), l_animation_interface, l_animation_interface, jr.get_field(l_common_buttons, "NORMAL_BUTTON"), jr.get_field(l_basic_touch_button_cell_position_factory, "BOTTOM_RIGHT"), jr.call(l_touch_button_location_helper, "getColumnsRemainderHalf_0", []), jr.call(l_touch_button_location_helper, "getRowsRemainderHalf_0", [])])
            jr.call(l_list, "add_1", [l__u_p])
            jr.call(l_list, "add_1", [l__d_o_w_n])
            jr.call(l_list, "add_1", [l__l_e_f_t])
            jr.call(l_list, "add_1", [l__r_i_g_h_t])
            jr.ret(l_list)
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "BasicNeededTouchButtonsBuilder", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "BasicNeededTouchButtonsBuilder", "commonStrings"), "GET_LIST"), l_e])
            jr.ret(jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BaseTouchInput", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicNeededTouchButtonsBuilder",
        "org.allbinary.input.motion.button.BasicNeededTouchButtonsBuilder",
        "BaseTouchInput",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [],
        [
            jr.Method("getList_0", [], False, c1_m2__getlist), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

