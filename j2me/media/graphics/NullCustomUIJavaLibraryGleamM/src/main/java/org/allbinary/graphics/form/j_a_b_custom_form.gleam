// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABCustomForm

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getallitems(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new_array("L", 1, [jr.JInt(0)])
}

fn c1_m5__size(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m6__setselectedindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.JNull
}

fn c1_m7__getselectedindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m8__deleteall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__delete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item_num] = jargs
    let l_item_num = jr.as_i(l_item_num)
    jr.JNull
}

fn c1_m10__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
    jr.as_i(jr.JInt(-1))
}

fn c1_m11__insert(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item_num, l_item] = jargs
    let l_item_num = jr.as_i(l_item_num)
    jr.JNull
}

fn c1_m12__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item_num, l_item] = jargs
    let l_item_num = jr.as_i(l_item_num)
    jr.JNull
}

fn c1_m13__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item_num] = jargs
    let l_item_num = jr.as_i(l_item_num)
    jr.call_static("ABCustomItem", "getNullInstance_0", [])
}

fn c1_m14__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m15__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m16__gettitle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_items, l_background_basic_color, l_foreground_basic_color] = jargs
    jr.super_init("CustomScreen", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABCustomForm",
        "org.allbinary.graphics.form.ABCustomForm",
        "CustomScreen",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull)],
        [],
        [
            jr.Method("getAllitems_0", [], False, c1_m4__getallitems), 
            jr.Method("size_0", [], False, c1_m5__size), 
            jr.Method("setSelectedIndex_1", ["int"], False, c1_m6__setselectedindex), 
            jr.Method("getSelectedIndex_0", [], False, c1_m7__getselectedindex), 
            jr.Method("deleteAll_0", [], False, c1_m8__deleteall), 
            jr.Method("delete_1", ["int"], False, c1_m9__delete), 
            jr.Method("append_1", ["ABCustomItem"], False, c1_m10__append), 
            jr.Method("insert_2", ["int", "ABCustomItem"], False, c1_m11__insert), 
            jr.Method("set_2", ["int", "ABCustomItem"], False, c1_m12__set), 
            jr.Method("get_1", ["int"], False, c1_m13__get), 
            jr.Method("getWidth_0", [], False, c1_m14__getwidth), 
            jr.Method("paint_1", ["Graphics"], False, c1_m15__paint), 
            jr.Method("getTitle_0", [], False, c1_m16__gettitle), 
            jr.Method("jinit_4", ["String", "ABCustomItemArr", "BasicColor", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

