// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonsMappingPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "paintableTable", jr.new_array("L", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "touchButtonLocationHelper", jr.new("TouchButtonLocationHelper", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.set_field(this, "paintableTable", jr.call(this, "createPaintableTable_0", []))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.JStr("updateRectangle"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m7__createpaintabletable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_total_columns = jr.as_i(jr.call(jr.get_field(this, "touchButtonLocationHelper"), "getTotalColumns_0", []))
        let l_total_rows = jr.as_i(jr.call(jr.get_field(this, "touchButtonLocationHelper"), "getTotalRows_0", []))
        let l_paintable_table = jr.new_array("L", 2, [l_total_columns, l_total_rows])
        let l_cell_position_factory = jr.call_static("CellPositionFactory", "getInstance_0", [])
        let l_common_buttons = jr.call_static("CommonButtons", "getInstance_0", [])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_total_columns, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            {
                let l_row_index = jr.cell(jr.as_i(jr.sub(l_total_rows, jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_row_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_row_index) }, fn(jv) { jr.set(l_row_index, jv) }, -1, True) Nil }, fn() {
                jr.aset(jr.aget(jr.get_field(this, "paintableTable"), jr.get(l_index)), jr.get(l_row_index), jr.call_static("TouchButton", "createButton_6", [jr.get_field(jr.call_static("BasicTouchInputFactory", "getInstance_0", []), "NONE"), jr.call_static("TouchButtonBlankResource", "getInstance_0", []), jr.get_field(l_common_buttons, "NORMAL_BUTTON"), jr.call(l_cell_position_factory, "getInstanceColRow_2", [jr.get(l_index), jr.get(l_row_index)]), jr.call(jr.get_field(this, "touchButtonLocationHelper"), "getColumnsRemainderHalf_0", []), jr.call(jr.get_field(this, "touchButtonLocationHelper"), "getRowsRemainderHalf_0", [])]))
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
    l_paintable_table
}

fn c1_m8__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_total_columns = jr.as_i(jr.call(jr.get_field(this, "touchButtonLocationHelper"), "getTotalColumns_0", []))
        let l_total_rows = jr.as_i(jr.call(jr.get_field(this, "touchButtonLocationHelper"), "getTotalRows_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.sub(l_total_columns, jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            {
                let l_row_index = jr.cell(jr.as_i(jr.sub(l_total_rows, jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_row_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_row_index) }, fn(jv) { jr.set(l_row_index, jv) }, -1, True) Nil }, fn() {
                jr.call(jr.aget(jr.aget(jr.get_field(this, "paintableTable"), jr.get(l_index)), jr.get(l_row_index)), "paint_1", [l_graphics])
                Nil
            })
                Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "foregroundColor", jr.as_i(jr.call(l_basic_color, "intValue_0", [])))
        jr.call(this, "init_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonsMappingPaintable",
        "org.allbinary.input.motion.button.TouchButtonsMappingPaintable",
        "Paintable",
        [],
        False,
        [#("logUtil", jr.JNull), #("foregroundColor", jr.JInt(0)), #("paintableTable", jr.JNull), #("touchButtonLocationHelper", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m6__init), 
            jr.Method("createPaintableTable_0", [], False, c1_m7__createpaintabletable), 
            jr.Method("paint_1", ["Graphics"], False, c1_m8__paint), 
            jr.Method("jinit_1", ["BasicColor"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

