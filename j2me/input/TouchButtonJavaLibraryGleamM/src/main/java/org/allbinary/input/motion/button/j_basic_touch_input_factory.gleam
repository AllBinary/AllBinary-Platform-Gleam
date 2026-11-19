// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicTouchInputFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "initialized", jr.JBool(False))
    jr.set_field(this, "list", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicTouchInputFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("BasicTouchInputFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("BasicTouchInputFactory", "instance", jr.new("BasicTouchInputFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("BasicTouchInputFactory", "instance")
}

fn c1_m20__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_to_game_key_mapping] = jargs
        case jr.truth(jr.not(jr.get_field(this, "initialized"))) {
            True -> {
            jr.set_field(this, "initialized", jr.JBool(True))
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "UP")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "LEFT")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "RIGHT")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "DOWN")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_TWO")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_FOUR")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_THREE")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_ONE")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_FIVE")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_SIX")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_SIX")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_SEVEN_TESTING_ONLY")])
            jr.call(jr.get_field(this, "list"), "add_1", [jr.get_field(this, "SPECIAL_BUTTON_EIGHT_TESTING_ONLY")])
            jr.call(this, "updateAllFromList_2", [jr.get_field(this, "list"), l_input_to_game_key_mapping])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m21__updateall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_to_game_key_mapping] = jargs
        jr.call(this, "updateAllFromList_2", [jr.get_field(this, "list"), l_input_to_game_key_mapping])
    jr.JNull
}

fn c1_m22__updateallfromlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_list, l_input_to_game_key_mapping] = jargs
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "appendint_1", [jr.call(l_list, "size_0", [])]), "toString_0", []), this, jr.JStr("updateAll")])
        let l_touch_button_input = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(l_list, "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_touch_button_input, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.call(jr.get(l_touch_button_input), "update_1", [l_input_to_game_key_mapping])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m23__getlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "list")
}

fn c1_jinit19(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l__m_a_x = jr.as_i(jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX"))
        jr.set_field(this, "SPECIAL_BUTTON_SEVEN_TESTING_ONLY", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(41)), jr.JStr("Button 7 - Testing Only May Cross Over Key Values")]))
        jr.set_field(this, "SPECIAL_BUTTON_EIGHT_TESTING_ONLY", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(42)), jr.JStr("Button 8 - Testing Only May Cross Over Key Values")]))
        jr.set_field(this, "SPECIAL_BUTTON_SIX", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(30)), jr.JStr("Button 6")]))
        jr.set_field(this, "SPECIAL_BUTTON_FIVE", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(31)), jr.JStr("Button 5")]))
        jr.set_field(this, "SPECIAL_BUTTON_FOUR", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(32)), jr.JStr("Button 4")]))
        jr.set_field(this, "SPECIAL_BUTTON_THREE", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(33)), jr.JStr("Button 3")]))
        jr.set_field(this, "SPECIAL_BUTTON_TWO", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(34)), jr.JStr("Button 2")]))
        jr.set_field(this, "SPECIAL_BUTTON_ONE", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(35)), jr.JStr("Button 1")]))
        jr.set_field(this, "UP", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(36)), jr.JStr("Up Button")]))
        jr.set_field(this, "LEFT", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(37)), jr.JStr("Left Button")]))
        jr.set_field(this, "RIGHT", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(38)), jr.JStr("Right Button")]))
        jr.set_field(this, "DOWN", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(39)), jr.JStr("Down Button")]))
        jr.set_field(this, "NONE", jr.new("TouchButtonInput", [jr.sub(l__m_a_x, jr.JInt(40)), jr.JStr("No Button")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicTouchInputFactory",
        "org.allbinary.input.motion.button.BasicTouchInputFactory",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("SPECIAL_BUTTON_SEVEN_TESTING_ONLY", jr.JNull), #("SPECIAL_BUTTON_EIGHT_TESTING_ONLY", jr.JNull), #("SPECIAL_BUTTON_SIX", jr.JNull), #("SPECIAL_BUTTON_FIVE", jr.JNull), #("SPECIAL_BUTTON_FOUR", jr.JNull), #("SPECIAL_BUTTON_THREE", jr.JNull), #("SPECIAL_BUTTON_TWO", jr.JNull), #("SPECIAL_BUTTON_ONE", jr.JNull), #("UP", jr.JNull), #("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("DOWN", jr.JNull), #("NONE", jr.JNull), #("initialized", jr.JBool(False)), #("list", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_1", ["InputToGameKeyMapping"], False, c1_m20__init), 
            jr.Method("updateAll_1", ["InputToGameKeyMapping"], False, c1_m21__updateall), 
            jr.Method("updateAllFromList_2", ["BasicArrayList", "InputToGameKeyMapping"], False, c1_m22__updateallfromlist), 
            jr.Method("getList_0", [], False, c1_m23__getlist), 
            jr.Method("jinit_0", [], False, c1_jinit19)],
        c1_jfields,
        c1_jclinit,
    )
}

