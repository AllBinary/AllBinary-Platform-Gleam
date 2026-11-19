// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScrollCurrentSelectionForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "processor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "preItemIndexDx", jr.call_static("ItemIndexDx", "getInstance_0", []))
    jr.set_field(this, "maxWidth", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m10__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle, l_form_type] = jargs
        jr.call_super("ScrollSelectionForm", this, "init_2", [l_rectangle, l_form_type])
        let l_form_type_factory = jr.call_static("FormTypeFactory", "getInstance_0", [])
        case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "TEMP_HORIZONTAL_FORM"))) {
            True -> {
            jr.set_field(this, "processor", jr.new("TempHorizontalFormProcessor", [this]))
            jr.set_field(this, "preItemIndexDx", jr.new("TempHorizontalItemIndexDx", [this]))
            Nil
        }
            False -> case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "HORIZONTAL_FORM"))) {
            True -> {
            jr.set_field(this, "processor", jr.new("HorizontalFormProcessor", [this]))
            jr.set_field(this, "preItemIndexDx", jr.new("HorizontalItemIndexDx", [this]))
            Nil
        }
            False -> case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "VERTICAL_CENTER_FORM"))) {
            True -> {
            jr.set_field(this, "processor", jr.new("VerticalFormProcessor", [this]))
            jr.set_field(this, "preItemIndexDx", jr.new("VerticalItemIndexDx", [this]))
            Nil
        }
            False -> case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "NULL_FORM_TYPE"))) {
            True -> {
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "logUtil"), "putF_3", [jr.get_field(l_form_type_factory, "UNK"), this, jr.get_field(jr.get_inherited(this, "ScrollCurrentSelectionForm", "commonStrings"), "INIT")])
            Nil
        }
        }
        }
        }
        }
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m11__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m12__processtemphorizontalform(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "dx", jr.as_i(jr.add(jr.sub(jr.get_inherited(this, "ScrollCurrentSelectionForm", "x"), jr.JInt(30)), jr.shr(jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "rectangle"), "getWidth_0", []), jr.JInt(1)))))
        jr.set_field(this, "dy", jr.as_i(jr.get_inherited(this, "ScrollCurrentSelectionForm", "y")))
    jr.JNull
}

fn c1_m13__processhorizontalform(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_size = jr.as_i(jr.call_inherited(this, "ScrollCurrentSelectionForm", "size_0", []))
        let l_total_width = jr.cell(jr.as_i(jr.JInt(0)))
        let l_item = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_item, jr.call_inherited(this, "ScrollCurrentSelectionForm", "get_1", [jr.get(l_index)]))
            jr.compound(fn() { jr.get(l_total_width) }, fn(jv) { jr.add(jv, jr.add(jr.call(jr.get(l_item), "getMinimumWidth_0", []), jr.get_inherited(this, "ScrollCurrentSelectionForm", "border"))) }, fn(jv) { jr.set(l_total_width, jv) })
            Nil
        })
            Nil
        }
        jr.set_field(this, "dx", jr.as_i(jr.sub(jr.add(jr.get_inherited(this, "ScrollCurrentSelectionForm", "x"), jr.shr(jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "rectangle"), "getWidth_0", []), jr.JInt(1))), jr.shr(jr.get(l_total_width), jr.JInt(1)))))
        jr.set_field(this, "dy", jr.as_i(jr.add(jr.get_inherited(this, "ScrollCurrentSelectionForm", "y"), jr.shr(jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "rectangle"), "getHeight_0", []), jr.JInt(1)))))
        case jr.truth(jr.get_field(this, "moveForSmallScreen")) {
            True -> {
            let l_max_title_height = jr.as_i(jr.JInt(175))
            case jr.truth(jr.lt(jr.get_field(this, "dy"), l_max_title_height)) {
                True -> {
                jr.set_field(this, "dy", jr.as_i(l_max_title_height))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m14__processverticalform(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_total_height = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size = jr.as_i(jr.call_inherited(this, "ScrollCurrentSelectionForm", "size_0", []))
        let l_item2 = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_item2, jr.call_inherited(this, "ScrollCurrentSelectionForm", "get_1", [jr.get(l_index)]))
            case jr.truth(jr.lt(jr.get_field(this, "maxWidth"), jr.call(jr.get(l_item2), "getMinimumWidth_0", []))) {
                True -> {
                jr.set_field(this, "maxWidth", jr.as_i(jr.call(jr.get(l_item2), "getMinimumWidth_0", [])))
                Nil
            }
                False -> Nil
            }
            jr.compound(fn() { jr.get(l_total_height) }, fn(jv) { jr.add(jv, jr.add(jr.call(jr.get(l_item2), "getMinimumHeight_0", []), jr.get_inherited(this, "ScrollCurrentSelectionForm", "border"))) }, fn(jv) { jr.set(l_total_height, jv) })
            Nil
        })
            Nil
        }
        jr.set_field(this, "dx", jr.as_i(jr.div(jr.sub(jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "rectangle"), "getWidth_0", []), jr.get_field(this, "maxWidth")), jr.JInt(2))))
        case jr.truth(jr.gt(jr.call_inherited(this, "ScrollCurrentSelectionForm", "size_0", []), jr.JInt(0))) {
            True -> {
            jr.set_field(this, "dy", jr.as_i(jr.add(jr.get_inherited(this, "ScrollCurrentSelectionForm", "y"), jr.div(jr.sub(jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "rectangle"), "getHeight_0", []), jr.get(l_total_height)), jr.JInt(2)))))
            case jr.truth(jr.get_field(this, "moveForSmallScreen")) {
                True -> {
                let l_max_title_height = jr.as_i(jr.JInt(175))
                case jr.truth(jr.lt(jr.get_field(this, "dy"), l_max_title_height)) {
                    True -> {
                    jr.set_field(this, "dy", jr.as_i(l_max_title_height))
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> {
            jr.set_field(this, "dy", jr.as_i(jr.get_inherited(this, "ScrollCurrentSelectionForm", "y")))
            Nil
        }
        }
    jr.JNull
}

fn c1_m15__getxtemphorizontalform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.as_i(jr.call(this, "getDiffX_1", [l_item]))
}

fn c1_m16__getxhorizontalform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.as_i(jr.JInt(0))
}

fn c1_m17__getxverticalform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.as_i(jr.add(jr.call(this, "getDiffX_1", [l_item]), jr.get_inherited(this, "ScrollCurrentSelectionForm", "halfBorder")))
}

fn c1_m18__getdiffx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
    jr.as_i(jr.shr(jr.sub(jr.get_field(this, "maxWidth"), jr.call(l_item, "getMinimumWidth_0", [])), jr.JInt(1)))
}

fn c1_m19__getdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dx"))
}

fn c1_m20__getdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dy"))
}

fn c1_m21__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "processor"), "process_0", [])
            let l_delta = jr.cell(jr.as_i(jr.JInt(0)))
            let l_delta_x = jr.cell(jr.as_i(jr.call(this, "getDx_0", [])))
            let l_delta_y = jr.cell(jr.as_i(jr.call(this, "getDy_0", [])))
            let l_size = jr.as_i(jr.call_inherited(this, "ScrollCurrentSelectionForm", "size_0", []))
            let l_form_type_factory = jr.call_static("FormTypeFactory", "getInstance_0", [])
            let l_item = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_item, jr.call_inherited(this, "ScrollCurrentSelectionForm", "get_1", [jr.get(l_index)]))
                let l_diff_x = jr.as_i(jr.call(jr.get_field(this, "preItemIndexDx"), "getDx_4", [jr.get(l_index), jr.get(l_item), jr.get_field(this, "dx"), jr.get_field(this, "dy")]))
                case jr.truth(jr.eq(jr.get(l_index), jr.call_inherited(this, "ScrollCurrentSelectionForm", "getSelectedIndex_0", []))) {
                    True -> {
                    jr.set(l_delta, jr.as_i(jr.call_inherited(this, "ScrollCurrentSelectionForm", "paintItem_5", [l_graphics, jr.get(l_index), jr.get(l_item), jr.add(jr.get(l_delta_x), l_diff_x), jr.get(l_delta_y)])))
                    jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "paintable"), "paint_4", [l_graphics, jr.get(l_index), jr.add(jr.get(l_delta_x), l_diff_x), jr.get(l_delta_y)])
                    Nil
                }
                    False -> {
                    jr.set(l_delta, jr.as_i(jr.call_inherited(this, "ScrollCurrentSelectionForm", "paintUnselectedItem_5", [l_graphics, jr.get(l_index), jr.get(l_item), jr.add(jr.get(l_delta_x), l_diff_x), jr.get(l_delta_y)])))
                    jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "paintable"), "paint_4", [l_graphics, jr.get(l_index), jr.add(jr.get(l_delta_x), l_diff_x), jr.get(l_delta_y)])
                    Nil
                }
                }
                case jr.truth(jr.eq(jr.get_inherited(this, "ScrollCurrentSelectionForm", "formType"), jr.get_field(l_form_type_factory, "TEMP_HORIZONTAL_FORM"))) {
                    True -> {
                    Nil
                }
                    False -> case jr.truth(jr.eq(jr.get_inherited(this, "ScrollCurrentSelectionForm", "formType"), jr.get_field(l_form_type_factory, "HORIZONTAL_FORM"))) {
                    True -> {
                    jr.set(l_delta_x, jr.as_i(jr.get(l_delta)))
                    Nil
                }
                    False -> case jr.truth(jr.eq(jr.get_inherited(this, "ScrollCurrentSelectionForm", "formType"), jr.get_field(l_form_type_factory, "VERTICAL_CENTER_FORM"))) {
                    True -> {
                    jr.set(l_delta_y, jr.as_i(jr.get(l_delta)))
                    Nil
                }
                    False -> {
                    jr.throw(jr.new("Exception", [jr.get_field(l_form_type_factory, "UNK")]))
                    Nil
                }
                }
                }
                }
                Nil
            })
                Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "ScrollCurrentSelectionForm", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "ScrollCurrentSelectionForm", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "ScrollCurrentSelectionForm", "canvasStrings"), "PAINT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_form_paintable_factory, l_border, l_adjusted_extra_border, l_move_for_small_screen, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_border = jr.as_i(l_border)
    let l_adjusted_extra_border = jr.as_i(l_adjusted_extra_border)
        jr.super_init("ScrollSelectionForm", this, [l_title, l_items, l_form_paintable_factory, l_border, l_adjusted_extra_border, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.set_field(this, "moveForSmallScreen", l_move_for_small_screen)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScrollCurrentSelectionForm",
        "org.allbinary.graphics.form.ScrollCurrentSelectionForm",
        "ScrollSelectionForm",
        ["UpdateMyFontInterface"],
        False,
        [#("moveForSmallScreen", jr.JBool(False)), #("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("processor", jr.JNull), #("preItemIndexDx", jr.JNull), #("dx", jr.JInt(0)), #("dy", jr.JInt(0)), #("maxWidth", jr.JInt(0))],
        [],
        [
            jr.Method("init_2", ["Rectangle", "FormType"], False, c1_m10__init), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m11__updatemeasurement), 
            jr.Method("processTempHorizontalForm_0", [], False, c1_m12__processtemphorizontalform), 
            jr.Method("processHorizontalForm_0", [], False, c1_m13__processhorizontalform), 
            jr.Method("processVerticalForm_0", [], False, c1_m14__processverticalform), 
            jr.Method("getXTempHorizontalForm_4", ["int", "ABCustomItem", "int", "int"], False, c1_m15__getxtemphorizontalform), 
            jr.Method("getXHorizontalForm_4", ["int", "ABCustomItem", "int", "int"], False, c1_m16__getxhorizontalform), 
            jr.Method("getXVerticalForm_4", ["int", "ABCustomItem", "int", "int"], False, c1_m17__getxverticalform), 
            jr.Method("getDiffX_1", ["ABCustomItem"], False, c1_m18__getdiffx), 
            jr.Method("getDx_0", [], False, c1_m19__getdx), 
            jr.Method("getDy_0", [], False, c1_m20__getdy), 
            jr.Method("paint_1", ["Graphics"], False, c1_m21__paint), 
            jr.Method("jinit_8", ["String", "ABCustomItemArr", "ItemPaintableFactory", "int", "int", "boolean", "BasicColor", "BasicColor"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}

