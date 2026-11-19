// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CellPositionFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "NONE", jr.new("CellPosition", [jr.JInt(-1), jr.JInt(-1), jr.JInt(-1), jr.JInt(-1)]))
    jr.set_field(this, "cellPositionArray", jr.new_array("L", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CellPositionFactory", "SINGLETON", jr.new("CellPositionFactory", []))
    jr.JNull
}

fn c1_m7__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CellPositionFactory", "SINGLETON")
}

fn c1_m9__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_columns, l_rows] = jargs
    let l_columns = jr.as_i(l_columns)
    let l_rows = jr.as_i(l_rows)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Init: columns: ")])
        jr.call(l_string_buffer, "appendint_1", [l_columns])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" rows: ")])
        jr.call(l_string_buffer, "appendint_1", [l_rows])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(l_common_strings, "INIT")])
        jr.set_field(this, "cellPositionArray", jr.new_array("L", 2, [l_columns, l_rows]))
        jr.set_field(this, "columns", jr.as_i(l_columns))
        jr.set_field(this, "rows", jr.as_i(l_rows))
        {
            let l_column = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_column), l_columns) }, fn() { jr.incr(fn() { jr.get(l_column) }, fn(jv) { jr.set(l_column, jv) }, 1, True) Nil }, fn() {
            {
                let l_row = jr.cell(jr.as_i(jr.JInt(0)))
                jr.for_loop("", fn() { jr.lt(jr.get(l_row), l_rows) }, fn() { jr.incr(fn() { jr.get(l_row) }, fn(jv) { jr.set(l_row, jv) }, 1, True) Nil }, fn() {
                jr.call(this, "createInstance_2", [jr.get(l_column), jr.get(l_row)])
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

fn c1_m10__getinstancecolrow(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_i__column, l_i__row] = jargs
    let l_i__column = jr.as_i(l_i__column)
    let l_i__row = jr.as_i(l_i__row)
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.aget(jr.aget(jr.get_field(this, "cellPositionArray"), l_i__column), l_i__row))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("columns: ")]), "appendint_1", [jr.call(this, "getColumns_0", [])]), "append_1", [jr.JStr(" rows: ")]), "appendint_1", [jr.call(this, "getRows_0", [])]), "append_1", [jr.JStr(" col: ")]), "appendint_1", [l_i__column]), "append_1", [jr.JStr(" row: ")]), "appendint_1", [l_i__row]), "toString_0", []), this, jr.get_field(l_common_strings, "GET_INSTANCE"), l_e])
            jr.ret(jr.get_field(this, "NONE"))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m11__createinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_i__column, l_i__row] = jargs
    let l_i__column = jr.as_i(l_i__column)
    let l_i__row = jr.as_i(l_i__row)
        let l_cell_position_can_be_null = jr.cell(jr.aget(jr.aget(jr.get_field(this, "cellPositionArray"), l_i__column), l_i__row))
        case jr.truth(jr.eq(jr.get(l_cell_position_can_be_null), jr.JNull)) {
            True -> {
            jr.set(l_cell_position_can_be_null, jr.new("CellPosition", [l_i__column, l_i__row, jr.get_field(this, "columns"), jr.get_field(this, "rows")]))
            jr.aset(jr.aget(jr.get_field(this, "cellPositionArray"), l_i__column), l_i__row, jr.get(l_cell_position_can_be_null))
            Nil
        }
            False -> Nil
        }
    jr.get(l_cell_position_can_be_null)
}

fn c1_m12__getcolumns(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "columns"))
}

fn c1_m13__getrows(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "rows"))
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CellPositionFactory",
        "org.allbinary.graphics.CellPositionFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("NONE", jr.JNull), #("cellPositionArray", jr.JNull), #("columns", jr.JInt(0)), #("rows", jr.JInt(0))],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m7__getinstance), 
            jr.Method("init_2", ["int", "int"], False, c1_m9__init), 
            jr.Method("getInstanceColRow_2", ["int", "int"], False, c1_m10__getinstancecolrow), 
            jr.Method("createInstance_2", ["int", "int"], False, c1_m11__createinstance), 
            jr.Method("getColumns_0", [], False, c1_m12__getcolumns), 
            jr.Method("getRows_0", [], False, c1_m13__getrows), 
            jr.Method("jinit_0", [], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

