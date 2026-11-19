// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CommandTextItemArrayFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector, l_background_basic_color, l_foreground_basic_color] = jargs
        let l_vector_util = jr.call_static("VectorUtil", "getInstance_0", [])
        let l_size = jr.as_i(jr.call(l_vector_util, "getSize_1", [l_vector]))
        jr.call(jr.get_field(this, "list"), "clear_0", [])
        let l_text_item = jr.cell(jr.JNull)
        let l_priority_limit = jr.cell(jr.as_i(jr.JInt(7)))
        let l_display_info = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
        let l_is_large_enough_display_for_big_menu = case jr.truth(case jr.truth(jr.call(l_display_info, "isPortrait_0", [])) { True -> jr.ge(jr.call(l_display_info, "getLastHeight_0", []), jr.get_field(jr.call_static("ScreenInfo", "getInstance_0", []), "MEDIUM_WIDTH")) False -> jr.JBool(False) }) { True -> jr.JBool(True) False -> case jr.truth(jr.not(jr.call(l_display_info, "isPortrait_0", []))) { True -> jr.ge(jr.call(l_display_info, "getLastWidth_0", []), jr.get_field(jr.call_static("ScreenInfo", "getInstance_0", []), "MEDIUM_WIDTH")) False -> jr.JBool(False) } }
        case jr.truth(case jr.truth(jr.not(l_is_large_enough_display_for_big_menu)) { True -> jr.gt(l_size, jr.JInt(3)) False -> jr.JBool(False) }) {
            True -> {
            jr.set(l_priority_limit, jr.as_i(jr.JInt(3)))
            Nil
        }
            False -> Nil
        }
        let l_command = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_command, jr.call(l_vector_util, "elementAt_2", [l_vector, jr.get(l_index)]))
            case jr.truth(jr.lt(jr.call(jr.get(l_command), "getPriority_0", []), jr.get(l_priority_limit))) {
                True -> {
                let l_a_boolean = jr.call(jr.get_field(this, "visitorInterface"), "visit_1", [jr.get(l_command)])
                case jr.truth(jr.call(l_a_boolean, "booleanValue_0", [])) {
                    True -> {
                    jr.set(l_text_item, jr.new("CommandTextItem", [jr.get(l_command), jr.get_static("LcduiImageItem", "LAYOUT_DEFAULT"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), l_background_basic_color, l_foreground_basic_color]))
                    jr.call(jr.get_field(this, "list"), "add_1", [jr.get(l_text_item)])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
        let l_text_item_array = jr.new_array("L", 1, [jr.call(jr.get_field(this, "list"), "size_0", [])])
        let l_size2 = jr.as_i(jr.alen(l_text_item_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size2) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_text_item_array, jr.get(l_index), jr.aget(jr.get_field(jr.get_field(this, "list"), "objectArray"), jr.get(l_index)))
            Nil
        })
            Nil
        }
    l_text_item_array
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_visitor_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "visitorInterface", l_visitor_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CommandTextItemArrayFactory",
        "org.allbinary.graphics.form.item.CommandTextItemArrayFactory",
        "Object",
        [],
        False,
        [#("list", jr.JNull), #("visitorInterface", jr.JNull)],
        [],
        [
            jr.Method("getInstance_3", ["Object", "BasicColor", "BasicColor"], False, c1_m4__getinstance), 
            jr.Method("jinit_1", ["Visitor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

