// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MultipleScrollSelectionHorizontalForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "rectPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable", jr.call_static("ItemIndexPaintable", "getInstance_0", []))
    jr.set_field(this, "backgroundColor", jr.as_i(jr.call(jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "TRANSPARENT_GREY"), "intValue_0", [])))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "logged", jr.JBool(False))
    jr.set_field(this, "fontHeight", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_rectangle, l_form_type, l_border, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_border = jr.as_i(l_border)
        let l_scroll_selection_form = jr.new("MultipleScrollSelectionHorizontalForm", [l_title, l_items, jr.call_static("ItemPaintableFactory", "getInstance_0", []), l_border, l_background_basic_color, l_foreground_basic_color])
        jr.call(l_scroll_selection_form, "init_2", [l_rectangle, l_form_type])
    l_scroll_selection_form
}

fn c1_m9__fillrect(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(l_graphics, "setColor_1", [jr.get_field(this, "backgroundColor")])
        jr.call(l_graphics, "fillRect_4", [jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "x"), jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "y"), jr.call(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "rectangle"), "getWidth_0", []), jr.call(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "rectangle"), "getHeight_0", [])])
    jr.JNull
}

fn c1_m10__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle, l_form_type] = jargs
        jr.call_super("ScrollSelectionForm", this, "init_2", [l_rectangle, l_form_type])
        let l_form_type_factory = jr.call_static("FormTypeFactory", "getInstance_0", [])
        case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "HORIZONTAL_FORM"))) {
            True -> {
            jr.set_field(this, "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable", jr.new("MultipleScrollSelectionFormHorizontalPaintable", [this]))
            Nil
        }
            False -> case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "VERTICAL_CENTER_FORM"))) {
            True -> {
            jr.set_field(this, "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable", jr.new("MultipleScrollSelectionFormVerticalPaintable", [this]))
            Nil
        }
            False -> case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "NULL_FORM_TYPE"))) {
            True -> {
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.get_field(l_form_type_factory, "UNK")]))
            Nil
        }
        }
        }
        }
    jr.JNull
}

fn c1_m11__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "fontHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m12__painthorizontal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.cell(jr.as_i(l_dx))
    let l_dy = jr.as_i(l_dy)
        let l_dx2 = jr.as_i(jr.add(jr.call_inherited(this, "MultipleScrollSelectionHorizontalForm", "paintItem_5", [l_graphics, l_index, l_item, jr.get(l_dx), l_dy]), jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "border")))
        jr.call(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "paintable"), "paint_4", [l_graphics, l_index, jr.get(l_dx), l_dy])
        jr.set(l_dx, jr.as_i(l_dx2))
    jr.as_i(jr.get(l_dx))
}

fn c1_m13__paintvertical(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.call_inherited(this, "MultipleScrollSelectionHorizontalForm", "paintItem_5", [l_graphics, l_index, l_item, l_dx, l_dy])
        jr.call(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "paintable"), "paint_4", [l_graphics, l_index, l_dx, l_dy])
    jr.as_i(l_dx)
}

fn c1_m14__getstartindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "MultipleScrollSelectionHorizontalForm", "getSelectedIndex_0", []))
}

fn c1_m15__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
            let l_start = jr.as_i(jr.call(this, "getStartIndex_0", []))
            let l_size = jr.as_i(jr.call_inherited(this, "MultipleScrollSelectionHorizontalForm", "size_0", []))
            let l_dx = jr.cell(jr.as_i(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "x")))
            let l_dy = jr.as_i(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "y"))
            jr.call(jr.get_field(this, "rectPaintable"), "paint_1", [l_graphics])
            jr.call(l_graphics, "drawString_4", [jr.call_inherited(this, "MultipleScrollSelectionHorizontalForm", "getTitle_0", []), jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "x"), jr.sub(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "y"), jr.get_field(this, "fontHeight")), jr.JInt(0)])
            let l_item = jr.cell(jr.JNull)
            {
                let l_index = jr.cell(jr.as_i(l_start))
                jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                jr.set(l_item, jr.call_inherited(this, "MultipleScrollSelectionHorizontalForm", "get_1", [jr.get(l_index)]))
                case jr.truth(jr.ge(jr.get(l_dx), jr.call(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "rectangle"), "getMaxX_0", []))) {
                    True -> {
                    case jr.truth(jr.get_field(this, "logged")) {
                        True -> {
                        Nil
                    }
                        False -> {
                        jr.set_field(this, "logged", jr.JBool(True))
                        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("painting beyond maxx: ")]), "appendint_1", [jr.call(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "rectangle"), "getMaxX_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "canvasStrings"), "PAINT")])
                        Nil
                    }
                    }
                    Nil
                }
                    False -> Nil
                }
                jr.set(l_dx, jr.as_i(jr.call(jr.get_field(this, "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable"), "paint_5", [l_graphics, jr.get(l_index), jr.get(l_item), jr.get(l_dx), l_dy])))
                Nil
            })
                Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "MultipleScrollSelectionHorizontalForm", "canvasStrings"), "PAINT")])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_form_paintable_factory, l_border, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_border = jr.as_i(l_border)
        jr.super_init("ScrollSelectionForm", this, [l_title, l_items, l_form_paintable_factory, l_border, jr.JInt(3), l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        case jr.truth(case jr.truth(jr.call_static("J2MEUtil", "isJ2ME_0", [])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
            True -> {
            Nil
        }
            False -> {
            jr.set_field(this, "rectPaintable", jr.new("MultipleScrollSelectionFormRectPaintable", [this]))
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MultipleScrollSelectionHorizontalForm",
        "org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm",
        "ScrollSelectionForm",
        ["UpdateMyFontInterface"],
        False,
        [#("rectPaintable", jr.JNull), #("multipleScrollSelectionHorizontalFormTypeItemIndexPaintable", jr.JNull), #("backgroundColor", jr.JInt(0)), #("myFontProcessor", jr.JNull), #("logged", jr.JBool(False)), #("fontHeight", jr.JInt(0))],
        [],
        [
            jr.Method("createForm_7", ["String", "ABCustomItemArr", "Rectangle", "FormType", "int", "BasicColor", "BasicColor"], True, c1_m1__createform), 
            jr.Method("fillRect_1", ["Graphics"], False, c1_m9__fillrect), 
            jr.Method("init_2", ["Rectangle", "FormType"], False, c1_m10__init), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m11__updatemeasurement), 
            jr.Method("paintHorizontal_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m12__painthorizontal), 
            jr.Method("paintVertical_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m13__paintvertical), 
            jr.Method("getStartIndex_0", [], False, c1_m14__getstartindex), 
            jr.Method("paint_1", ["Graphics"], False, c1_m15__paint), 
            jr.Method("jinit_6", ["String", "ABCustomItemArr", "ItemPaintableFactory", "int", "BasicColor", "BasicColor"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

