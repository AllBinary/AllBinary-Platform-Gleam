// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicTouchButtonCellPositionFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit24(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "commonStrings"), "CONSTRUCTOR")])
        let l_touch_button_location_helper = jr.new("TouchButtonLocationHelper", [])
        let l_cell_position_factory = jr.call_static("CellPositionFactory", "getInstance_0", [])
        jr.call(l_cell_position_factory, "init_2", [jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.call(l_touch_button_location_helper, "getTotalRows_0", [])])
        jr.set_field(this, "TOP_LEFT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.JInt(0), jr.JInt(0)]))
        jr.set_field(this, "TOP_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(1)), jr.JInt(0)]))
        jr.set_field(this, "BOTTOM_LEFT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.JInt(0), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(1))]))
        jr.set_field(this, "BOTTOM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(1)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(1))]))
        jr.set_field(this, "BOTTOM_SECOND_FROM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(2)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(1))]))
        jr.set_field(this, "SECOND_FROM_BOTTOM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(1)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(2))]))
        jr.set_field(this, "SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(2)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(2))]))
        jr.set_field(this, "BOTTOM_SECOND_FROM_LEFT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.JInt(1), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(1))]))
        jr.set_field(this, "SECOND_FROM_BOTTOM_LEFT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.JInt(0), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(2))]))
        jr.set_field(this, "SECOND_FROM_BOTTOM_SECOND_FROM_LEFT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.JInt(1), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(2))]))
        case jr.truth(jr.gt(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(2))) {
            True -> {
            jr.set_field(this, "SECOND_FROM_TOP_LEFT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.JInt(0), jr.JInt(1)]))
            jr.set_field(this, "SECOND_FROM_TOP_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(1)), jr.JInt(1)]))
            Nil
        }
            False -> {
            jr.set_field(this, "SECOND_FROM_TOP_LEFT", jr.get_field(l_cell_position_factory, "NONE"))
            jr.set_field(this, "SECOND_FROM_TOP_RIGHT", jr.get_field(l_cell_position_factory, "NONE"))
            Nil
        }
        }
        case jr.truth(jr.ge(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(4))) {
            True -> {
            jr.set_field(this, "THIRD_FROM_BOTTOM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(1)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(3))]))
            jr.set_field(this, "FOURTH_FROM_BOTTOM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(1)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(4))]))
            jr.set_field(this, "THIRD_FROM_BOTTOM_LEFT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.JInt(0), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(3))]))
            Nil
        }
            False -> {
            jr.set_field(this, "THIRD_FROM_BOTTOM_RIGHT", jr.get_field(l_cell_position_factory, "NONE"))
            jr.set_field(this, "FOURTH_FROM_BOTTOM_RIGHT", jr.get_field(l_cell_position_factory, "NONE"))
            jr.set_field(this, "THIRD_FROM_BOTTOM_LEFT", jr.get_field(l_cell_position_factory, "NONE"))
            Nil
        }
        }
        case jr.truth(jr.ge(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(4))) {
            True -> {
            jr.set_field(this, "SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(3)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(2))]))
            jr.set_field(this, "SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(4)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(2))]))
            jr.set_field(this, "BOTTOM_THIRD_FROM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(3)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(1))]))
            jr.set_field(this, "BOTTOM_FOURTH_FROM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(4)), jr.sub(jr.call(l_touch_button_location_helper, "getTotalRows_0", []), jr.JInt(1))]))
            jr.set_field(this, "TOP_SECOND_FROM_LEFT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.JInt(1), jr.JInt(0)]))
            jr.set_field(this, "TOP_SECOND_FROM_RIGHT", jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.sub(jr.call(l_touch_button_location_helper, "getTotalColumns_0", []), jr.JInt(2)), jr.JInt(0)]))
            Nil
        }
            False -> {
            jr.set_field(this, "SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT", jr.get_field(l_cell_position_factory, "NONE"))
            jr.set_field(this, "SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT", jr.get_field(l_cell_position_factory, "NONE"))
            jr.set_field(this, "BOTTOM_THIRD_FROM_RIGHT", jr.get_field(l_cell_position_factory, "NONE"))
            jr.set_field(this, "BOTTOM_FOURTH_FROM_RIGHT", jr.get_field(l_cell_position_factory, "NONE"))
            jr.set_field(this, "TOP_SECOND_FROM_LEFT", jr.get_field(l_cell_position_factory, "NONE"))
            jr.set_field(this, "TOP_SECOND_FROM_RIGHT", jr.get_field(l_cell_position_factory, "NONE"))
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicTouchButtonCellPositionFactory",
        "org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("TOP_RIGHT", jr.JNull), #("TOP_LEFT", jr.JNull), #("SECOND_FROM_TOP_LEFT", jr.JNull), #("SECOND_FROM_TOP_RIGHT", jr.JNull), #("TOP_SECOND_FROM_LEFT", jr.JNull), #("TOP_SECOND_FROM_RIGHT", jr.JNull), #("BOTTOM_RIGHT", jr.JNull), #("BOTTOM_SECOND_FROM_RIGHT", jr.JNull), #("SECOND_FROM_BOTTOM_RIGHT", jr.JNull), #("THIRD_FROM_BOTTOM_RIGHT", jr.JNull), #("FOURTH_FROM_BOTTOM_RIGHT", jr.JNull), #("SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT", jr.JNull), #("SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT", jr.JNull), #("SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT", jr.JNull), #("BOTTOM_THIRD_FROM_RIGHT", jr.JNull), #("BOTTOM_FOURTH_FROM_RIGHT", jr.JNull), #("BOTTOM_SECOND_FROM_LEFT", jr.JNull), #("SECOND_FROM_BOTTOM_LEFT", jr.JNull), #("THIRD_FROM_BOTTOM_LEFT", jr.JNull), #("BOTTOM_LEFT", jr.JNull), #("SECOND_FROM_BOTTOM_SECOND_FROM_LEFT", jr.JNull)],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit24)],
        c1_jfields,
        c1_jclinit,
    )
}

