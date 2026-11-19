// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonLocationHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__gettotalcolumns(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "totalColumns"))
}

fn c1_m9__gettotalrows(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "totalRows"))
}

fn c1_m10__getcolumnsremainder(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "columnsRemainder"))
}

fn c1_m11__getrowsremainder(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "rowsRemainder"))
}

fn c1_m12__getcolumnsremainderhalf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "columnsRemainderHalf"))
}

fn c1_m13__getrowsremainderhalf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "rowsRemainderHalf"))
}

fn c1_m14__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("totalColumns: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "totalColumns")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" totalRows: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "totalRows")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" columnsRemainder: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "columnsRemainder")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" rowsRemainder: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "rowsRemainder")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" columnsRemainderHalf: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "columnsRemainderHalf")])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" rowsRemainderHalf: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.get_field(this, "rowsRemainderHalf")])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_button_size = jr.as_i(jr.get_field(jr.call_static("CommonButtons", "getInstance_0", []), "STANDARD_BUTTON_SIZE"))
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        jr.set_field(this, "totalColumns", jr.as_i(jr.call_static("Math", "round_1", [jr.div(jr.to_f(jr.call(l_display_info, "getLastWidth_0", [])), jr.to_f(l_button_size))])))
        jr.set_field(this, "totalRows", jr.as_i(jr.call_static("Math", "round_1", [jr.div(jr.to_f(jr.call(l_display_info, "getLastHeight_0", [])), jr.to_f(l_button_size))])))
        jr.set_field(this, "columnsRemainder", jr.as_i(jr.rem(jr.call(l_display_info, "getLastWidth_0", []), l_button_size)))
        jr.set_field(this, "columnsRemainderHalf", jr.as_i(jr.shr(jr.get_field(this, "columnsRemainder"), jr.JInt(1))))
        jr.set_field(this, "rowsRemainder", jr.as_i(jr.rem(jr.call(l_display_info, "getLastHeight_0", []), l_button_size)))
        jr.set_field(this, "rowsRemainderHalf", jr.as_i(jr.shr(jr.get_field(this, "rowsRemainder"), jr.JInt(1))))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonLocationHelper",
        "org.allbinary.input.motion.button.TouchButtonLocationHelper",
        "Object",
        [],
        False,
        [#("totalColumns", jr.JInt(0)), #("totalRows", jr.JInt(0)), #("columnsRemainder", jr.JInt(0)), #("rowsRemainder", jr.JInt(0)), #("columnsRemainderHalf", jr.JInt(0)), #("rowsRemainderHalf", jr.JInt(0))],
        [],
        [
            jr.Method("getTotalColumns_0", [], False, c1_m8__gettotalcolumns), 
            jr.Method("getTotalRows_0", [], False, c1_m9__gettotalrows), 
            jr.Method("getColumnsRemainder_0", [], False, c1_m10__getcolumnsremainder), 
            jr.Method("getRowsRemainder_0", [], False, c1_m11__getrowsremainder), 
            jr.Method("getColumnsRemainderHalf_0", [], False, c1_m12__getcolumnsremainderhalf), 
            jr.Method("getRowsRemainderHalf_0", [], False, c1_m13__getrowsremainderhalf), 
            jr.Method("toString_0", [], False, c1_m14__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

