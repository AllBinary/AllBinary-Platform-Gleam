// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommandCurrentSelectionForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "selectedAnimationArray", jr.new_array("L", 1, [jr.JInt(16)]))
    jr.set_field(this, "unSelectedAnimationArray", jr.new_array("L", 1, [jr.JInt(16)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(this, "updateAll_2", [l_graphics, jr.call_inherited(this, "CommandCurrentSelectionForm", "getAllitems_0", [])])
        jr.call_super("ScrollCurrentSelectionForm", this, "updateMeasurement_1", [l_graphics])
    jr.JNull
}

fn c1_m5__initanimations(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_null_animation = jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)])
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "selectedAnimationArray"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.aset(jr.get_field(this, "selectedAnimationArray"), jr.get(l_index), l_null_animation)
            Nil
        })
            Nil
        }
        {
            let l_index = jr.cell(jr.as_i(jr.alen(jr.get_field(this, "unSelectedAnimationArray"))))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.aset(jr.get_field(this, "unSelectedAnimationArray"), jr.get(l_index), l_null_animation)
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m6__addall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_items] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.alen(l_items)))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.call(this, "addAt_2", [jr.get(l_index), jr.aget(l_items, jr.get(l_index))])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m7__addat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_item] = jargs
    let l_index = jr.as_i(l_index)
        let l_basic_color_factory = jr.call_static("BasicColorFactory", "getInstance_0", [])
        let l_button_color = jr.get_field(l_basic_color_factory, "TRANSPARENT_GREY")
        let l_selected_button_color = jr.get_field(l_basic_color_factory, "TRANSPARENT_RED")
        let l_width = jr.as_i(jr.call(l_item, "getMinimumWidth_0", []))
        let l_height = jr.as_i(jr.call(l_item, "getMinimumHeight_0", []))
        let l_adjusted_border = jr.cell(jr.as_i(jr.JInt(3)))
        let l_offset = jr.as_i(jr.neg(jr.add(jr.get_inherited(this, "CommandCurrentSelectionForm", "halfBorder"), jr.get(l_adjusted_border))))
        let l_rect_width = jr.as_i(jr.sub(jr.add(l_width, jr.get_inherited(this, "CommandCurrentSelectionForm", "border")), jr.get(l_adjusted_border)))
        let l_rect_height = jr.as_i(jr.sub(jr.add(l_height, jr.get_inherited(this, "CommandCurrentSelectionForm", "border")), jr.get(l_adjusted_border)))
        case jr.truth(case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
            True -> {
            jr.aset(jr.get_field(this, "selectedAnimationArray"), l_index, jr.new("RectangleAdjustedAnimation", [l_rect_width, l_rect_height, l_offset, l_offset, l_selected_button_color]))
            Nil
        }
            False -> {
            jr.aset(jr.get_field(this, "selectedAnimationArray"), l_index, jr.new("RectangleFilledAdjustedAnimation", [l_rect_width, l_rect_height, l_offset, l_offset, l_selected_button_color]))
            Nil
        }
        }
        jr.set(l_adjusted_border, jr.as_i(jr.JInt(4)))
        case jr.truth(case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
            True -> {
            jr.aset(jr.get_field(this, "unSelectedAnimationArray"), l_index, jr.new("RectangleAdjustedAnimation", [l_rect_width, l_rect_height, l_offset, l_offset, l_button_color]))
            Nil
        }
            False -> {
            jr.aset(jr.get_field(this, "unSelectedAnimationArray"), l_index, jr.new("RectangleFilledAdjustedAnimation", [l_rect_width, l_rect_height, l_offset, l_offset, l_button_color]))
            Nil
        }
        }
    jr.JNull
}

fn c1_m8__updateall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_items] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.alen(l_items)))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            jr.call(jr.aget(l_items, jr.get(l_index)), "preMeasurement_1", [l_graphics])
            jr.call(this, "updateAt_2", [jr.get(l_index), jr.aget(l_items, jr.get(l_index))])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__updateat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_item] = jargs
    let l_index = jr.as_i(l_index)
        let l_basic_color_factory = jr.call_static("BasicColorFactory", "getInstance_0", [])
        let l_button_color = jr.get_field(l_basic_color_factory, "TRANSPARENT_GREY")
        let l_selected_button_color = jr.get_field(l_basic_color_factory, "TRANSPARENT_RED")
        let l_width = jr.as_i(jr.call(l_item, "getMinimumWidth_0", []))
        let l_height = jr.as_i(jr.call(l_item, "getMinimumHeight_0", []))
        let l_adjusted_border = jr.cell(jr.as_i(jr.JInt(3)))
        let l_offset = jr.as_i(jr.neg(jr.add(jr.get_inherited(this, "CommandCurrentSelectionForm", "halfBorder"), jr.get(l_adjusted_border))))
        let l_rect_width = jr.as_i(jr.sub(jr.add(l_width, jr.get_inherited(this, "CommandCurrentSelectionForm", "border")), jr.get(l_adjusted_border)))
        let l_rect_height = jr.as_i(jr.sub(jr.add(l_height, jr.get_inherited(this, "CommandCurrentSelectionForm", "border")), jr.get(l_adjusted_border)))
        case jr.truth(case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
            True -> {
            let l_rectangle_adjusted_animation = jr.aget(jr.get_field(this, "selectedAnimationArray"), l_index)
            jr.call(l_rectangle_adjusted_animation, "setWidth_1", [l_rect_width])
            jr.call(l_rectangle_adjusted_animation, "setHeight_1", [l_rect_height])
            jr.call(l_rectangle_adjusted_animation, "setOffsetX_1", [l_offset])
            jr.call(l_rectangle_adjusted_animation, "setOffsetY_1", [l_offset])
            jr.call(l_rectangle_adjusted_animation, "setBasicColorP_1", [l_selected_button_color])
            Nil
        }
            False -> {
            let l_rectangle_adjusted_animation = jr.aget(jr.get_field(this, "selectedAnimationArray"), l_index)
            jr.call(l_rectangle_adjusted_animation, "setWidth_1", [l_rect_width])
            jr.call(l_rectangle_adjusted_animation, "setHeight_1", [l_rect_height])
            jr.call(l_rectangle_adjusted_animation, "setOffsetX_1", [l_offset])
            jr.call(l_rectangle_adjusted_animation, "setOffsetY_1", [l_offset])
            jr.call(l_rectangle_adjusted_animation, "setBasicColorP_1", [l_selected_button_color])
            Nil
        }
        }
        jr.set(l_adjusted_border, jr.as_i(jr.JInt(4)))
        case jr.truth(case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
            True -> {
            let l_rectangle_adjusted_animation = jr.aget(jr.get_field(this, "unSelectedAnimationArray"), l_index)
            jr.call(l_rectangle_adjusted_animation, "setWidth_1", [l_rect_width])
            jr.call(l_rectangle_adjusted_animation, "setHeight_1", [l_rect_height])
            jr.call(l_rectangle_adjusted_animation, "setOffsetX_1", [l_offset])
            jr.call(l_rectangle_adjusted_animation, "setOffsetY_1", [l_offset])
            jr.call(l_rectangle_adjusted_animation, "setBasicColorP_1", [l_button_color])
            Nil
        }
            False -> {
            let l_rectangle_adjusted_animation = jr.aget(jr.get_field(this, "unSelectedAnimationArray"), l_index)
            jr.call(l_rectangle_adjusted_animation, "setWidth_1", [l_rect_width])
            jr.call(l_rectangle_adjusted_animation, "setHeight_1", [l_rect_height])
            jr.call(l_rectangle_adjusted_animation, "setOffsetX_1", [l_offset])
            jr.call(l_rectangle_adjusted_animation, "setOffsetY_1", [l_offset])
            jr.call(l_rectangle_adjusted_animation, "setBasicColorP_1", [l_button_color])
            Nil
        }
        }
    jr.JNull
}

fn c1_m10__getselectedcommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_index = jr.as_i(jr.call_super("ScrollCurrentSelectionForm", this, "getSelectedIndex_0", []))
        let l_command_text_item = jr.call_inherited(this, "CommandCurrentSelectionForm", "get_1", [l_index])
    jr.call(l_command_text_item, "getCommand_0", [])
}

fn c1_m11__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
        let l_result = jr.as_i(jr.call_super("ScrollCurrentSelectionForm", this, "append_1", [l_item]))
        jr.call(this, "addAt_2", [l_result, l_item])
    jr.as_i(l_result)
}

fn c1_m12__delete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item_num] = jargs
    let l_item_num = jr.as_i(l_item_num)
        jr.call_super("ScrollCurrentSelectionForm", this, "delete_1", [l_item_num])
    jr.JNull
}

fn c1_m13__deleteall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "initAnimations_0", [])
        jr.call_super("ScrollCurrentSelectionForm", this, "deleteAll_0", [])
    jr.JNull
}

fn c1_m14__insert(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item_num, l_item] = jargs
    let l_item_num = jr.as_i(l_item_num)
        jr.call_super("ScrollCurrentSelectionForm", this, "insert_2", [l_item_num, l_item])
    jr.JNull
}

fn c1_m15__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item_num, l_item] = jargs
    let l_item_num = jr.as_i(l_item_num)
        jr.call_super("ScrollCurrentSelectionForm", this, "set_2", [l_item_num, l_item])
    jr.JNull
}

fn c1_m16__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_inherited(this, "CommandCurrentSelectionForm", "myFontProcessor"), "process_1", [l_graphics])
        jr.call_super("ScrollCurrentSelectionForm", this, "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m17__paintitem(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_x, l_y] = jargs
    let l_index = jr.as_i(l_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.aget(jr.get_field(this, "selectedAnimationArray"), l_index), "paintXY_3", [l_graphics, l_x, l_y])
    jr.as_i(jr.call_super("ScrollCurrentSelectionForm", this, "paintItem_5", [l_graphics, l_index, l_item, l_x, l_y]))
}

fn c1_m18__paintunselecteditem(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_x, l_y] = jargs
    let l_index = jr.as_i(l_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.aget(jr.get_field(this, "unSelectedAnimationArray"), l_index), "paintXY_3", [l_graphics, l_x, l_y])
    jr.as_i(jr.call_super("ScrollCurrentSelectionForm", this, "paintUnselectedItem_5", [l_graphics, l_index, l_item, l_x, l_y]))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_border, l_move_for_small_screen, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_border = jr.as_i(l_border)
        jr.super_init("ScrollCurrentSelectionForm", this, [l_title, l_items, jr.call_static("ItemPaintableFactory", "getInstance_0", []), l_border, jr.JInt(-3), l_move_for_small_screen, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.call(this, "initAnimations_0", [])
        jr.call(this, "addAll_1", [l_items])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommandCurrentSelectionForm",
        "org.allbinary.graphics.form.CommandCurrentSelectionForm",
        "ScrollCurrentSelectionForm",
        ["UpdateMyFontInterface"],
        False,
        [#("selectedAnimationArray", jr.JNull), #("unSelectedAnimationArray", jr.JNull)],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m4__updatemeasurement), 
            jr.Method("initAnimations_0", [], False, c1_m5__initanimations), 
            jr.Method("addAll_1", ["ABCustomItemArr"], False, c1_m6__addall), 
            jr.Method("addAt_2", ["int", "ABCustomItem"], False, c1_m7__addat), 
            jr.Method("updateAll_2", ["Graphics", "ABCustomItemArr"], False, c1_m8__updateall), 
            jr.Method("updateAt_2", ["int", "ABCustomItem"], False, c1_m9__updateat), 
            jr.Method("getSelectedCommand_0", [], False, c1_m10__getselectedcommand), 
            jr.Method("append_1", ["ABCustomItem"], False, c1_m11__append), 
            jr.Method("delete_1", ["int"], False, c1_m12__delete), 
            jr.Method("deleteAll_0", [], False, c1_m13__deleteall), 
            jr.Method("insert_2", ["int", "ABCustomItem"], False, c1_m14__insert), 
            jr.Method("set_2", ["int", "ABCustomItem"], False, c1_m15__set), 
            jr.Method("paint_1", ["Graphics"], False, c1_m16__paint), 
            jr.Method("paintItem_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m17__paintitem), 
            jr.Method("paintUnselectedItem_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m18__paintunselecteditem), 
            jr.Method("jinit_6", ["String", "ABCustomItemArr", "int", "boolean", "BasicColor", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

