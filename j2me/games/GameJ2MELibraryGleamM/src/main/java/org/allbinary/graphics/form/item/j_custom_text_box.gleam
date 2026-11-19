// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomTextBox

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "inputFactory", jr.call_static("InputFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__submit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__oneventraw(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(jr.get_inherited(this, "CustomTextBox", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "CustomTextBox", "commonStrings"), "START")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.JStr("onEvent")])
        jr.call(this, "keyPressedByDevice_2", [l_key_code, l_device_id])
    jr.JNull
}

fn c1_m6__keypressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyPressedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m7__keyreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyReleasedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m8__keyrepeated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call_inherited(this, "CustomTextBox", "keyRepeatedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m9__keypressedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.try_catch(fn() {
            jr.call(jr.get_inherited(this, "CustomTextBox", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "CustomTextBox", "gameInputStrings"), "KEY_PRESSED")])
            let l_platform_key_factory = jr.call_static("PlatformKeyFactory", "getInstance_0", [])
            let l_input = jr.call(jr.get_field(this, "inputFactory"), "getInstanceById_1", [l_key_code])
            case jr.truth(jr.call(l_platform_key_factory, "isSubmission_1", [l_input])) {
                True -> {
                jr.call(this, "submit_0", [])
                Nil
            }
                False -> {
                jr.call(jr.get_field(this, "textFieldItem"), "keyPressed_1", [l_key_code])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "CustomTextBox", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "CustomTextBox", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "CustomTextBox", "gameInputStrings"), "KEY_PRESSED"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m10__keyreleasedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
    jr.JNull
}

fn c1_m11__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(l_graphics, "setColor_1", [jr.get_inherited(this, "CustomTextBox", "backgroundColor")])
        jr.call(l_graphics, "fillRect_4", [jr.JInt(0), jr.JInt(0), jr.call(jr.get_inherited(this, "CustomTextBox", "displayInfo"), "getLastWidth_0", []), jr.call(jr.get_inherited(this, "CustomTextBox", "displayInfo"), "getLastHeight_0", [])])
        jr.call(l_graphics, "setColor_1", [jr.get_inherited(this, "CustomTextBox", "foregroundColor")])
        case jr.truth(jr.not(jr.call_static("J2MEUtil", "isJ2ME_0", []))) {
            True -> {
            jr.call(l_graphics, "drawString_4", [jr.call_inherited(this, "CustomTextBox", "getTitle_0", []), jr.JInt(8), jr.JInt(1), jr.JInt(0)])
            Nil
        }
            False -> Nil
        }
        jr.call(this, "paintXY_3", [l_graphics, jr.JInt(8), jr.add(jr.call(jr.call(l_graphics, "getFont_0", []), "getHeight_0", []), jr.JInt(2))])
        jr.call_super("GameCommandCanvas", this, "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m12__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "textFieldItem"), "paintXY_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_m13__gettextfielditem(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "textFieldItem")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener, l_label, l_text, l_max_size, l_constraints, l_font, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_max_size = jr.as_i(l_max_size)
    let l_constraints = jr.as_i(l_constraints)
        jr.super_init("GameCommandCanvas", this, [l_cmd_listener, l_label, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        let l_string_util = jr.call_static("StringUtil", "getInstance_0", [])
        let l_text_field_item = jr.new("ABTextFieldItem", [this, jr.new("TextItemVisitor", []), jr.get_field(l_string_util, "EMPTY_STRING"), jr.get_field(l_string_util, "EMPTY_STRING"), l_max_size, jr.JInt(0), jr.get_field(l_string_util, "EMPTY_STRING"), l_font, l_background_basic_color, l_foreground_basic_color])
        jr.call(l_text_field_item, "setString_1", [l_text])
        jr.set_field(this, "textFieldItem", l_text_field_item)
        jr.call_inherited(this, "CustomTextBox", "setTitle_1", [l_label])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomTextBox",
        "org.allbinary.graphics.form.item.CustomTextBox",
        "GameCommandCanvas",
        ["RawKeyEventListener"],
        False,
        [#("textFieldItem", jr.JNull), #("inputFactory", jr.JNull)],
        [],
        [
            jr.Method("submit_0", [], False, c1_m3__submit), 
            jr.Method("onEventRaw_3", ["int", "int", "boolean"], False, c1_m5__oneventraw), 
            jr.Method("keyPressed_1", ["int"], False, c1_m6__keypressed), 
            jr.Method("keyReleased_1", ["int"], False, c1_m7__keyreleased), 
            jr.Method("keyRepeated_1", ["int"], False, c1_m8__keyrepeated), 
            jr.Method("keyPressedByDevice_2", ["int", "int"], False, c1_m9__keypressedbydevice), 
            jr.Method("keyReleasedByDevice_2", ["int", "int"], False, c1_m10__keyreleasedbydevice), 
            jr.Method("paint_1", ["Graphics"], False, c1_m11__paint), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m12__paintxy), 
            jr.Method("getTextFieldItem_0", [], False, c1_m13__gettextfielditem), 
            jr.Method("jinit_8", ["CommandListener", "String", "String", "int", "int", "Font", "BasicColor", "BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

