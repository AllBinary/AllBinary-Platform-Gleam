// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CurrentlyPressedTouchButtonSingletonDebug

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "string", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "listString", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "appendText", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.set_field(this, "PRESSED_AND_FIRED", jr.JStr("pressed & fired"))
    jr.set_field(this, "PRESSED_AND_NOT_FIRED", jr.JStr("pressed in button but not fired"))
    jr.set_field(this, "ASSOCIATED_RELEASED_AND_FIRED", jr.JStr("assoc. rel & fired"))
    jr.set_field(this, "RELEASED_AND_FIRED", jr.JStr("rel & fired 1"))
    jr.set_field(this, "RELEASED_AND_FIRED_2", jr.JStr("rel & fired 2"))
    jr.set_field(this, "RELEASED_AND_NOT_FIRED", jr.JStr("rel & not fired"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CurrentlyPressedTouchButtonSingletonDebug", "instanceC", jr.new("CurrentlyPressedTouchButtonSingletonDebug", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CurrentlyPressedTouchButtonSingletonDebug", "instanceC")
}

fn c1_m12__appendtouchbuttoninput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_append, l_touch_button_input] = jargs
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.call(l_touch_button_input, "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [l_append])
        jr.set_field(this, "appendText", jr.call(l_string_buffer, "toString_0", []))
        jr.set_field(this, "string", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "listString")]), "append_1", [jr.get_field(this, "appendText")]), "toString_0", []))
    jr.JNull
}

fn c1_m13__append(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_append] = jargs
        jr.set_field(this, "appendText", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "appendText")]), "append_1", [l_append]), "toString_0", []))
        jr.set_field(this, "string", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "listString")]), "append_1", [jr.get_field(this, "appendText")]), "toString_0", []))
    jr.JNull
}

fn c1_m14__clearlog(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.set_field(this, "appendText", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call_static("GPoint", "toStringStatic_3", [l_x, l_y, jr.JInt(0)])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")]), "toString_0", []))
        jr.set_field(this, "string", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "listString")]), "append_1", [jr.get_field(this, "appendText")]), "toString_0", []))
    jr.JNull
}

fn c1_m15__releaseandnotfired(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "append_1", [jr.get_field(this, "RELEASED_AND_NOT_FIRED")])
    jr.JNull
}

fn c1_m16__releaseandfired(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
        jr.call(this, "appendTouchButtonInput_2", [jr.get_field(this, "RELEASED_AND_FIRED"), l_touch_button_input])
    jr.JNull
}

fn c1_m17__releaseandfired2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
        jr.call(this, "appendTouchButtonInput_2", [jr.get_field(this, "RELEASED_AND_FIRED_2"), l_touch_button_input])
    jr.JNull
}

fn c1_m18__releaseandfiredassociated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
        jr.call(this, "appendTouchButtonInput_2", [jr.get_field(this, "ASSOCIATED_RELEASED_AND_FIRED"), l_touch_button_input])
    jr.JNull
}

fn c1_m19__pressedandfired(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
        jr.call(this, "appendTouchButtonInput_2", [jr.get_field(this, "PRESSED_AND_FIRED"), l_touch_button_input])
    jr.JNull
}

fn c1_m20__pressedandnotfired(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
        jr.call(this, "appendTouchButtonInput_2", [jr.get_field(this, "PRESSED_AND_NOT_FIRED"), l_touch_button_input])
    jr.JNull
}

fn c1_m21__removeat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        let l_touch_button_input = jr.call_super("CurrentlyPressedTouchButtonSingleton", this, "removeAt_1", [l_index])
        jr.set_field(this, "listString", jr.call(jr.get_inherited(this, "CurrentlyPressedTouchButtonSingletonDebug", "list"), "toString_0", []))
        jr.set_field(this, "string", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "listString")]), "append_1", [jr.get_field(this, "appendText")]), "toString_0", []))
    l_touch_button_input
}

fn c1_m22__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
        let l_is_removed = jr.call_super("CurrentlyPressedTouchButtonSingleton", this, "remove_1", [l_touch_button_input])
        jr.set_field(this, "listString", jr.call(jr.get_inherited(this, "CurrentlyPressedTouchButtonSingletonDebug", "list"), "toString_0", []))
        jr.set_field(this, "string", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "listString")]), "append_1", [jr.get_field(this, "appendText")]), "toString_0", []))
    l_is_removed
}

fn c1_m23__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input] = jargs
        jr.call_super("CurrentlyPressedTouchButtonSingleton", this, "add_1", [l_touch_button_input])
        jr.set_field(this, "listString", jr.call(jr.get_inherited(this, "CurrentlyPressedTouchButtonSingletonDebug", "list"), "toString_0", []))
        jr.set_field(this, "string", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "listString")]), "append_1", [jr.get_field(this, "appendText")]), "toString_0", []))
    jr.JNull
}

fn c1_m24__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "string")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("CurrentlyPressedTouchButtonSingleton", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CurrentlyPressedTouchButtonSingletonDebug",
        "org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug",
        "CurrentlyPressedTouchButtonSingleton",
        [],
        False,
        [#("string", jr.JNull), #("listString", jr.JNull), #("appendText", jr.JNull), #("PRESSED_AND_FIRED", jr.JNull), #("PRESSED_AND_NOT_FIRED", jr.JNull), #("ASSOCIATED_RELEASED_AND_FIRED", jr.JNull), #("RELEASED_AND_FIRED", jr.JNull), #("RELEASED_AND_FIRED_2", jr.JNull), #("RELEASED_AND_NOT_FIRED", jr.JNull)],
        [#("instanceC", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("appendTouchButtonInput_2", ["String", "TouchButtonInput"], False, c1_m12__appendtouchbuttoninput), 
            jr.Method("append_1", ["String"], False, c1_m13__append), 
            jr.Method("clearLog_2", ["int", "int"], False, c1_m14__clearlog), 
            jr.Method("releaseAndNotFired_0", [], False, c1_m15__releaseandnotfired), 
            jr.Method("releaseAndFired_1", ["TouchButtonInput"], False, c1_m16__releaseandfired), 
            jr.Method("releaseAndFired2_1", ["TouchButtonInput"], False, c1_m17__releaseandfired2), 
            jr.Method("releaseAndFiredAssociated_1", ["TouchButtonInput"], False, c1_m18__releaseandfiredassociated), 
            jr.Method("pressedAndFired_1", ["TouchButtonInput"], False, c1_m19__pressedandfired), 
            jr.Method("pressedAndNotFired_1", ["TouchButtonInput"], False, c1_m20__pressedandnotfired), 
            jr.Method("removeAt_1", ["int"], False, c1_m21__removeat), 
            jr.Method("remove_1", ["TouchButtonInput"], False, c1_m22__remove), 
            jr.Method("add_1", ["TouchButtonInput"], False, c1_m23__add), 
            jr.Method("toString_0", [], False, c1_m24__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

