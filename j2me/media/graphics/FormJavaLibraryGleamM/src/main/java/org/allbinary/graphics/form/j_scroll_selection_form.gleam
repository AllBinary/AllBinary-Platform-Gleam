// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScrollSelectionForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "rectangleCollisionUtil", jr.call_static("RectangleCollisionUtil", "getInstance_0", []))
    jr.set_field(this, "scrollSelectionFormFormTypeItemIndexPaintable", jr.call_static("ItemIndexPaintable", "getInstance_0", []))
    jr.set_field(this, "formTypeItemIndexDx", jr.call_static("ItemIndexDx", "getInstance_0", []))
    jr.set_field(this, "paintable", jr.call_static("ItemPaintableFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ScrollSelectionForm", "NULL_SCROLL_SELECTION_FORM", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.set_static("ScrollSelectionForm", "NULL_SCROLL_SELECTION_HORIZONTAL_FORM", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m1__createform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_form_paintable_factory, l_border, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_border = jr.as_i(l_border)
    jr.method(fn() {
            jr.try_catch(fn() {
            case jr.truth(jr.eq(l_form_paintable_factory, jr.call_static("ItemPaintableFactory", "getInstance_0", []))) {
                True -> {
                jr.ret(jr.new("ScrollSelectionForm", [l_title, l_items, l_form_paintable_factory, l_border, jr.JInt(-3), l_background_basic_color, l_foreground_basic_color]))
                Nil
            }
                False -> {
                let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
                let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
                jr.call(l_log_util, "putF_3", [jr.get_field(l_common_strings, "EXCEPTION"), l_log_util, jr.get_field(l_common_strings, "EXCEPTION")])
                jr.ret(jr.call_static("PaintableForm", "getNullPaintableForm_0", []))
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
            jr.call(l_log_util, "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), l_log_util, jr.get_field(l_common_strings, "EXCEPTION"), l_e])
            jr.ret(jr.call_static("PaintableForm", "getNullPaintableForm_0", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m3__getnullscrollselectionform(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("ScrollSelectionForm", "NULL_SCROLL_SELECTION_FORM"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("ScrollSelectionForm", "NULL_SCROLL_SELECTION_FORM", jr.call_static("ScrollSelectionForm", "createForm_6", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new_array("L", 1, [jr.JInt(0)]), jr.call_static("ItemPaintableFactory", "getInstance_0", []), jr.JInt(0), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("ScrollSelectionForm", "NULL_SCROLL_SELECTION_FORM")
}

fn c1_m5__getnullscrollselectionformhorizontal(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("ScrollSelectionForm", "NULL_SCROLL_SELECTION_HORIZONTAL_FORM"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("ScrollSelectionForm", "NULL_SCROLL_SELECTION_HORIZONTAL_FORM", jr.call_static("ScrollSelectionForm", "createForm_6", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.new_array("L", 1, [jr.JInt(0)]), jr.call_static("ItemPaintableFactory", "getInstance_0", []), jr.JInt(0), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
            Nil
        }
            False -> Nil
        }
    jr.get_static("ScrollSelectionForm", "NULL_SCROLL_SELECTION_HORIZONTAL_FORM")
}

fn c1_m17__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_rectangle, l_form_type] = jargs
        jr.call_super("PaintableForm", this, "init_2", [l_rectangle, l_form_type])
        let l_form_type_factory = jr.call_static("FormTypeFactory", "getInstance_0", [])
        case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "HORIZONTAL_FORM"))) {
            True -> {
            jr.set_field(this, "scrollSelectionFormFormTypeItemIndexPaintable", jr.new("ScrollSelectionFormHorizontalPaintable", [this]))
            jr.set_field(this, "formTypeItemIndexDx", jr.new("ScrollSelectionFormHorizontalDx", [this]))
            Nil
        }
            False -> case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "VERTICAL_CENTER_FORM"))) {
            True -> {
            jr.set_field(this, "scrollSelectionFormFormTypeItemIndexPaintable", jr.new("ScrollSelectionFormVerticalPaintable", [this]))
            jr.set_field(this, "formTypeItemIndexDx", jr.new("ScrollSelectionFormVericalDx", [this]))
            Nil
        }
            False -> case jr.truth(jr.eq(l_form_type, jr.get_field(l_form_type_factory, "TEMP_HORIZONTAL_FORM"))) {
            True -> {
            jr.set_field(this, "scrollSelectionFormFormTypeItemIndexPaintable", jr.new("ScrollSelectionFormTempHorizontalPaintable", [this]))
            jr.set_field(this, "formTypeItemIndexDx", jr.new("ScrollSelectionFormTempHorizontalDx", [this]))
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
        }
    jr.JNull
}

fn c1_m18__paintitemhorizontal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_x, l_y] = jargs
    let l_index = jr.as_i(l_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_width = jr.as_i(jr.call(l_item, "getMinimumWidth_0", []))
    jr.as_i(jr.add(jr.add(l_x, l_width), jr.get_field(this, "border")))
}

fn c1_m19__paintitemvertical(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_x, l_y] = jargs
    let l_index = jr.as_i(l_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_height = jr.as_i(jr.call(l_item, "getMinimumHeight_0", []))
    jr.as_i(jr.add(jr.add(l_y, l_height), jr.get_field(this, "border")))
}

fn c1_m20__paintitemtemphorizontal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_x, l_y] = jargs
    let l_index = jr.as_i(l_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.as_i(jr.JInt(0))
}

fn c1_m21__getselectedindexforpointhorizontaldx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.as_i(jr.sub(l_dx, jr.get_field(this, "halfBorder")))
}

fn c1_m22__getselectedindexforpointverticaldx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.as_i(jr.add(l_dx, jr.call(this, "getDiffX_1", [l_item])))
}

fn c1_m23__getselectedindexforpointtemphorizontaldx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.as_i(jr.add(l_dx, jr.call(this, "getDiffX_1", [l_item])))
}

fn c1_m24__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
    jr.as_i(jr.call_super("PaintableForm", this, "append_1", [l_item]))
}

fn c1_m25__getselecteditem(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point] = jargs
    jr.method(fn() {
            let l_index = jr.as_i(jr.call(this, "getSelectedIndexForPoint_1", [l_point]))
            case jr.truth(jr.ne(l_index, jr.JInt(-1))) {
            True -> {
            jr.ret(jr.call_inherited(this, "ScrollSelectionForm", "get_1", [l_index]))
            Nil
        }
            False -> {
            jr.ret(jr.call_static("ABCustomItem", "getNullInstance_0", []))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m26__getitemindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
    jr.method(fn() {
            let l_next_item = jr.cell(jr.JNull)
            let l_size = jr.as_i(jr.call_inherited(this, "ScrollSelectionForm", "size_0", []))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_next_item, jr.call_inherited(this, "ScrollSelectionForm", "get_1", [jr.get(l_index)]))
            case jr.truth(jr.eq(jr.get(l_next_item), l_item)) {
                True -> {
                jr.ret(jr.as_i(jr.get(l_index)))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.as_i(jr.JInt(-1)))
        jr.JNull
    })
}

fn c1_m27__getstartindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m29__getselectedindexforpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point] = jargs
    jr.method(fn() {
            let l_start = jr.as_i(jr.call(this, "getStartIndex_0", []))
            let l_size = jr.as_i(jr.call_inherited(this, "ScrollSelectionForm", "size_0", []))
            let l_dx = jr.cell(jr.as_i(jr.call(this, "getDx_0", [])))
            let l_dy = jr.cell(jr.as_i(jr.call(this, "getDy_0", [])))
            let l_form_type_factory = jr.call_static("FormTypeFactory", "getInstance_0", [])
            let l_common_labels = jr.call_static("CommonLabels", "getInstance_0", [])
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "START_LABEL")])
            jr.call(l_string_buffer, "appendint_1", [l_start])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
            jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "TOTAL_LABEL")])
            jr.call(l_string_buffer, "appendint_1", [l_size])
            jr.call(jr.get_inherited(this, "ScrollSelectionForm", "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_static("ScrollSelectionForm", "GET_SELECTED_INDEX")])
            let l_item = jr.cell(jr.JNull)
            let l_width = jr.cell(jr.as_i(jr.JInt(0)))
            let l_height = jr.cell(jr.as_i(jr.JInt(0)))
            let l_diff_x = jr.cell(jr.as_i(jr.JInt(0)))
            {
            let l_index = jr.cell(jr.as_i(l_start))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_item, jr.call_inherited(this, "ScrollSelectionForm", "get_1", [jr.get(l_index)]))
            jr.set(l_width, jr.as_i(jr.call(jr.get(l_item), "getMinimumWidth_0", [])))
            jr.set(l_height, jr.as_i(jr.call(jr.get(l_item), "getMinimumHeight_0", [])))
            jr.set(l_diff_x, jr.as_i(jr.call(jr.get_field(this, "formTypeItemIndexDx"), "getDx_4", [jr.get(l_index), jr.get(l_item), jr.get(l_dx), jr.get(l_dy)])))
            case jr.truth(jr.call(jr.get_field(this, "rectangleCollisionUtil"), "isInside_6", [jr.get(l_diff_x), jr.sub(jr.get(l_dy), jr.get_field(this, "halfBorder")), jr.add(jr.add(jr.get(l_diff_x), jr.get(l_width)), jr.get_field(this, "border")), jr.add(jr.add(jr.add(jr.get(l_dy), jr.get(l_height)), jr.get_field(this, "halfBorder")), jr.JInt(1)), jr.call(l_point, "getX_0", []), jr.call(l_point, "getY_0", [])])) {
                True -> {
                jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
                jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "ITEM_LABEL")])
                jr.call(l_string_buffer, "append_1", [jr.call(jr.get(l_item), "getLabel_0", [])])
                jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
                jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_labels, "INDEX_LABEL")])
                jr.call(l_string_buffer, "appendint_1", [jr.get(l_index)])
                jr.call(jr.get_inherited(this, "ScrollSelectionForm", "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_static("ScrollSelectionForm", "GET_SELECTED_INDEX")])
                jr.ret(jr.as_i(jr.get(l_index)))
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.eq(jr.get_inherited(this, "ScrollSelectionForm", "formType"), jr.get_field(l_form_type_factory, "HORIZONTAL_FORM"))) {
                True -> {
                jr.set(l_dx, jr.as_i(jr.add(jr.add(jr.get(l_dx), jr.get(l_width)), jr.get_field(this, "border"))))
                case jr.truth(jr.gt(jr.get(l_dx), jr.call(jr.get_inherited(this, "ScrollSelectionForm", "rectangle"), "getMaxX_0", []))) {
                    True -> {
                    jr.brk("")
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> case jr.truth(jr.eq(jr.get_inherited(this, "ScrollSelectionForm", "formType"), jr.get_field(l_form_type_factory, "VERTICAL_CENTER_FORM"))) {
                True -> {
                jr.set(l_dy, jr.as_i(jr.add(jr.add(jr.get(l_dy), jr.get(l_height)), jr.get_field(this, "border"))))
                case jr.truth(jr.gt(jr.get(l_dy), jr.call(jr.get_inherited(this, "ScrollSelectionForm", "rectangle"), "getMaxY_0", []))) {
                    True -> {
                    jr.brk("")
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> case jr.truth(jr.eq(jr.get_inherited(this, "ScrollSelectionForm", "formType"), jr.get_field(l_form_type_factory, "NULL_FORM_TYPE"))) {
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
            Nil
        })
            Nil
        }
            jr.ret(jr.as_i(jr.JInt(-1)))
        jr.JNull
    })
}

fn c1_m30__processinputkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_code] = jargs
    let l_game_key_code = jr.as_i(l_game_key_code)
    jr.method(fn() {
            let l_form_type_factory = jr.call_static("FormTypeFactory", "getInstance_0", [])
            case jr.truth(jr.eq(jr.call_inherited(this, "ScrollSelectionForm", "size_0", []), jr.JInt(0))) {
            True -> {
            jr.ret(jr.as_i(jr.JInt(-1)))
            Nil
        }
            False -> Nil
        }
            let l_index = jr.cell(jr.as_i(jr.call_inherited(this, "ScrollSelectionForm", "getSelectedIndex_0", [])))
            case jr.truth(case jr.truth(jr.eq(jr.get_inherited(this, "ScrollSelectionForm", "formType"), jr.get_field(l_form_type_factory, "HORIZONTAL_FORM"))) { True -> jr.JBool(True) False -> jr.eq(jr.get_inherited(this, "ScrollSelectionForm", "formType"), jr.get_field(l_form_type_factory, "TEMP_HORIZONTAL_FORM")) }) {
            True -> {
            case jr.truth(jr.eq(l_game_key_code, jr.get_static("Canvas", "RIGHT"))) {
                True -> {
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
                Nil
            }
                False -> case jr.truth(jr.eq(l_game_key_code, jr.get_static("Canvas", "LEFT"))) {
                True -> {
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True)
                Nil
            }
                False -> Nil
            }
            }
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_inherited(this, "ScrollSelectionForm", "formType"), jr.get_field(l_form_type_factory, "VERTICAL_CENTER_FORM"))) {
            True -> {
            case jr.truth(jr.eq(l_game_key_code, jr.get_static("Canvas", "DOWN"))) {
                True -> {
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True)
                Nil
            }
                False -> case jr.truth(jr.eq(l_game_key_code, jr.get_static("Canvas", "UP"))) {
                True -> {
                jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True)
                Nil
            }
                False -> Nil
            }
            }
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_inherited(this, "ScrollSelectionForm", "formType"), jr.get_field(l_form_type_factory, "NULL_FORM_TYPE"))) {
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
            let l_max = jr.as_i(jr.sub(jr.call_inherited(this, "ScrollSelectionForm", "size_0", []), jr.JInt(1)))
            case jr.truth(jr.lt(jr.get(l_index), jr.JInt(0))) {
            True -> {
            jr.call_inherited(this, "ScrollSelectionForm", "setSelectedIndex_1", [jr.JInt(0)])
            Nil
        }
            False -> case jr.truth(jr.gt(jr.get(l_index), l_max)) {
            True -> {
            jr.call_inherited(this, "ScrollSelectionForm", "setSelectedIndex_1", [l_max])
            Nil
        }
            False -> {
            jr.call_inherited(this, "ScrollSelectionForm", "setSelectedIndex_1", [jr.get(l_index)])
            Nil
        }
        }
        }
            jr.ret(jr.as_i(jr.JInt(-1)))
        jr.JNull
    })
}

fn c1_m31__isinform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point] = jargs
    jr.method(fn() {
            case jr.truth(jr.call(jr.get_field(this, "rectangleCollisionUtil"), "isInside_6", [jr.get_inherited(this, "ScrollSelectionForm", "x"), jr.sub(jr.get_inherited(this, "ScrollSelectionForm", "y"), jr.get_field(this, "halfBorder")), jr.add(jr.call(jr.get_inherited(this, "ScrollSelectionForm", "rectangle"), "getMaxX_0", []), jr.get_field(this, "border")), jr.add(jr.call(jr.get_inherited(this, "ScrollSelectionForm", "rectangle"), "getMaxY_0", []), jr.get_field(this, "border")), jr.call(l_point, "getX_0", []), jr.call(l_point, "getY_0", [])])) {
            True -> {
            jr.call(jr.get_inherited(this, "ScrollSelectionForm", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [l_point])]), "append_1", [jr.get_static("ScrollSelectionForm", "INSIDE_FORM")]), "toString_0", []), this, jr.get_static("ScrollSelectionForm", "IS_IN_FORM")])
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m32__paintitem(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_x, l_y] = jargs
    let l_index = jr.as_i(l_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_item, "paintXY_3", [l_graphics, l_x, l_y])
        let l_width = jr.as_i(jr.call(l_item, "getMinimumWidth_0", []))
        let l_height = jr.as_i(jr.call(l_item, "getMinimumHeight_0", []))
        jr.call(l_graphics, "setColor_1", [jr.call(jr.call(this, "getButtonBasicColor_0", []), "intValue_0", [])])
        let l_adjusted_border = jr.as_i(jr.JInt(3))
        jr.call(l_graphics, "drawRect_4", [jr.sub(jr.sub(l_x, jr.get_field(this, "halfBorder")), l_adjusted_border), jr.sub(jr.sub(l_y, jr.get_field(this, "halfBorder")), l_adjusted_border), jr.add(jr.add(l_width, jr.get_field(this, "border")), jr.get_field(this, "adjustedExtraBorder")), jr.add(jr.add(l_height, jr.get_field(this, "border")), jr.get_field(this, "adjustedExtraBorder"))])
    jr.as_i(jr.call(jr.get_field(this, "scrollSelectionFormFormTypeItemIndexPaintable"), "paint_5", [l_graphics, l_index, l_item, l_x, l_y]))
}

fn c1_m33__paintunselecteditem(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_x, l_y] = jargs
    let l_index = jr.as_i(l_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_graphics, "setColor_1", [jr.call(jr.call(this, "getButtonBasicColor_0", []), "intValue_0", [])])
        jr.call(l_item, "paintUnselected_3", [l_graphics, l_x, l_y])
    jr.as_i(jr.call(jr.get_field(this, "scrollSelectionFormFormTypeItemIndexPaintable"), "paint_5", [l_graphics, l_index, l_item, l_x, l_y]))
}

fn c1_m34__getdiffx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
    jr.as_i(jr.JInt(0))
}

fn c1_m35__getdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_inherited(this, "ScrollSelectionForm", "x"))
}

fn c1_m36__getdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_inherited(this, "ScrollSelectionForm", "y"))
}

fn c1_m37__setbuttonbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_button_basic_color] = jargs
        jr.set_field(this, "buttonBasicColor", l_button_basic_color)
    jr.JNull
}

fn c1_m38__getbuttonbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "buttonBasicColor")
}

fn c1_jinit16(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_form_paintable_factory, l_border, l_adjusted_extra_border, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_border = jr.as_i(l_border)
    let l_adjusted_extra_border = jr.as_i(l_adjusted_extra_border)
        jr.super_init("PaintableForm", this, [l_title, l_items, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.set_field(this, "adjustedExtraBorder", jr.as_i(l_adjusted_extra_border))
        jr.set_field(this, "buttonBasicColor", l_foreground_basic_color)
        jr.set_field(this, "border", jr.as_i(l_border))
        jr.set_field(this, "halfBorder", jr.as_i(jr.shr(l_border, jr.JInt(1))))
        jr.set_field(this, "paintable", jr.call(l_form_paintable_factory, "getInstanceItemPaintable_1", [this]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScrollSelectionForm",
        "org.allbinary.graphics.form.ScrollSelectionForm",
        "PaintableForm",
        [],
        False,
        [#("rectangleCollisionUtil", jr.JNull), #("border", jr.JInt(0)), #("halfBorder", jr.JInt(0)), #("buttonBasicColor", jr.JNull), #("scrollSelectionFormFormTypeItemIndexPaintable", jr.JNull), #("formTypeItemIndexDx", jr.JNull), #("paintable", jr.JNull), #("adjustedExtraBorder", jr.JInt(0))],
        [#("NULL_SCROLL_SELECTION_FORM", jr.JNull), #("NULL_SCROLL_SELECTION_HORIZONTAL_FORM", jr.JNull), #("INSIDE_FORM", jr.JStr(" inside form")), #("IS_IN_FORM", jr.JStr("isInForm")), #("GET_SELECTED_INDEX", jr.JStr("getSelectedIndexForPoint"))],
        [
            jr.Method("createForm_6", ["String", "ABCustomItemArr", "ItemPaintableFactory", "int", "BasicColor", "BasicColor"], True, c1_m1__createform), 
            jr.Method("getNullScrollSelectionForm_0", [], True, c1_m3__getnullscrollselectionform), 
            jr.Method("getNullScrollSelectionFormHorizontal_0", [], True, c1_m5__getnullscrollselectionformhorizontal), 
            jr.Method("init_2", ["Rectangle", "FormType"], False, c1_m17__init), 
            jr.Method("paintItemHorizontal_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m18__paintitemhorizontal), 
            jr.Method("paintItemVertical_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m19__paintitemvertical), 
            jr.Method("paintItemTempHorizontal_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m20__paintitemtemphorizontal), 
            jr.Method("getSelectedIndexForPointHorizontalDx_4", ["int", "ABCustomItem", "int", "int"], False, c1_m21__getselectedindexforpointhorizontaldx), 
            jr.Method("getSelectedIndexForPointVerticalDx_4", ["int", "ABCustomItem", "int", "int"], False, c1_m22__getselectedindexforpointverticaldx), 
            jr.Method("getSelectedIndexForPointTempHorizontalDx_4", ["int", "ABCustomItem", "int", "int"], False, c1_m23__getselectedindexforpointtemphorizontaldx), 
            jr.Method("append_1", ["ABCustomItem"], False, c1_m24__append), 
            jr.Method("getSelectedItem_1", ["GPoint"], False, c1_m25__getselecteditem), 
            jr.Method("getItemIndex_1", ["ABCustomItem"], False, c1_m26__getitemindex), 
            jr.Method("getStartIndex_0", [], False, c1_m27__getstartindex), 
            jr.Method("getSelectedIndexForPoint_1", ["GPoint"], False, c1_m29__getselectedindexforpoint), 
            jr.Method("processInputKey_1", ["int"], False, c1_m30__processinputkey), 
            jr.Method("isInForm_1", ["GPoint"], False, c1_m31__isinform), 
            jr.Method("paintItem_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m32__paintitem), 
            jr.Method("paintUnselectedItem_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m33__paintunselecteditem), 
            jr.Method("getDiffX_1", ["ABCustomItem"], False, c1_m34__getdiffx), 
            jr.Method("getDx_0", [], False, c1_m35__getdx), 
            jr.Method("getDy_0", [], False, c1_m36__getdy), 
            jr.Method("setButtonBasicColor_1", ["BasicColor"], False, c1_m37__setbuttonbasiccolor), 
            jr.Method("getButtonBasicColor_0", [], False, c1_m38__getbuttonbasiccolor), 
            jr.Method("jinit_7", ["String", "ABCustomItemArr", "ItemPaintableFactory", "int", "int", "BasicColor", "BasicColor"], False, c1_jinit16)],
        c1_jfields,
        c1_jclinit,
    )
}

