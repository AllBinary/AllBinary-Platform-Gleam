// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CellPosition

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getcolumn(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "column"))
}

fn c1_m6__getrow(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "row"))
}

fn c1_m7__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("CellPosition", "toStringColRow_2", [jr.call(this, "getColumn_0", []), jr.call(this, "getRow_0", [])])
}

fn c1_m8__tostringcellposition(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_geographic_map_cell_position] = jargs
    jr.call_static("CellPosition", "toStringColRow_2", [jr.call(l_basic_geographic_map_cell_position, "getColumn_0", []), jr.call(l_basic_geographic_map_cell_position, "getRow_0", [])])
}

fn c1_m9__tostringcolrow(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_i__column, l_i__row] = jargs
    let l_i__column = jr.as_i(l_i__column)
    let l_i__row = jr.as_i(l_i__row)
        let l_string_buffer = jr.new("StringMaker", [])
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "PARENTHESIS_OPEN")])
        jr.call(l_string_buffer, "appendint_1", [l_i__column])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "COMMA")])
        jr.call(l_string_buffer, "appendint_1", [l_i__row])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "PARENTHESIS_CLOSE")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m10__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "id"))
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_column, l_row, l_columns, l_rows] = jargs
    let l_column = jr.as_i(l_column)
    let l_row = jr.as_i(l_row)
    let l_columns = jr.as_i(l_columns)
    let l_rows = jr.as_i(l_rows)
    jr.super_init("V", this, [])
    c1_jfields(this)
        jr.set_field(this, "column", jr.as_i(l_column))
        jr.set_field(this, "row", jr.as_i(l_row))
        jr.set_field(this, "id", jr.as_i(jr.add(jr.mul(l_row, l_columns), l_column)))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CellPosition",
        "org.allbinary.graphics.CellPosition",
        "V",
        [],
        False,
        [#("id", jr.JInt(0)), #("column", jr.JInt(0)), #("row", jr.JInt(0))],
        [],
        [
            jr.Method("getColumn_0", [], False, c1_m5__getcolumn), 
            jr.Method("getRow_0", [], False, c1_m6__getrow), 
            jr.Method("toString_0", [], False, c1_m7__tostring), 
            jr.Method("toStringCellPosition_1", ["CellPosition"], True, c1_m8__tostringcellposition), 
            jr.Method("toStringColRow_2", ["int", "int"], True, c1_m9__tostringcolrow), 
            jr.Method("getId_0", [], False, c1_m10__getid), 
            jr.Method("jinit_4", ["int", "int", "int", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

