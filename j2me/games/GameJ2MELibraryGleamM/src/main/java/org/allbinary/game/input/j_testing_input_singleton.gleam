// Generated Code Do Not Modify
// package org.allbinary.game.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class(), c2_class(), c3_class(), c4_class(), c5_class(), c6_class(), c7_class()]
}

// class TestingInputSingleton

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "inputProcessorArray", jr.new_array("L", 1, [jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX")]))
    jr.set_field(this, "testInputPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TestingInputSingleton", "instance", jr.new("TestingInputSingleton", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TestingInputSingleton", "instance")
}

fn c1_m6__initinputprocessors(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__initinputprocessorsfortestinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_test_input_interface] = jargs
        let l_test_input_interface = l_a_test_input_interface
        jr.set_field(this, "testInputPaintable", l_test_input_interface)
        jr.aset(jr.get_field(this, "inputProcessorArray"), jr.get_static("Canvas", "UP"), jr.new_with("TestingInputSingleton$1", this, [#("jc_testInputInterface", l_test_input_interface)], []))
        jr.aset(jr.get_field(this, "inputProcessorArray"), jr.get_static("Canvas", "DOWN"), jr.new_with("TestingInputSingleton$2", this, [#("jc_testInputInterface", l_test_input_interface)], []))
        jr.aset(jr.get_field(this, "inputProcessorArray"), jr.get_static("Canvas", "LEFT"), jr.new_with("TestingInputSingleton$3", this, [#("jc_testInputInterface", l_test_input_interface)], []))
        jr.aset(jr.get_field(this, "inputProcessorArray"), jr.get_static("Canvas", "RIGHT"), jr.new_with("TestingInputSingleton$4", this, [#("jc_testInputInterface", l_test_input_interface)], []))
        jr.aset(jr.get_field(this, "inputProcessorArray"), jr.get_static("Canvas", "KEY_NUM7"), jr.new_with("TestingInputSingleton$5", this, [#("jc_testInputInterface", l_test_input_interface)], []))
        jr.aset(jr.get_field(this, "inputProcessorArray"), jr.get_static("Canvas", "KEY_NUM9"), jr.new_with("TestingInputSingleton$6", this, [#("jc_testInputInterface", l_test_input_interface)], []))
        jr.call_static("GameInputProcessorUtil", "init_1", [jr.get_field(this, "inputProcessorArray")])
    jr.JNull
}

fn c1_m8__processinputlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_list] = jargs
        let l_key = jr.cell(jr.as_i(jr.JInt(0)))
        let l_game_key_event = jr.cell(jr.JNull)
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_game_key_event, jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index)))
            jr.set(l_key, jr.as_i(jr.call(jr.get(l_game_key_event), "getKey_0", [])))
            jr.call(jr.aget(jr.get_field(this, "inputProcessorArray"), jr.get(l_key)), "processEvent_2", [l_allbinary_layer_manager, jr.get_static("GameKeyEvent", "NONE")])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m9__processinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager] = jargs
        jr.call(this, "processInputList_2", [l_allbinary_layer_manager, jr.call_inherited(this, "TestingInputSingleton", "getGameKeyEventList_0", [])])
        jr.call(jr.call_inherited(this, "TestingInputSingleton", "getGameKeyEventList_0", []), "clear_0", [])
    jr.JNull
}

fn c1_m10__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "testInputPaintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m11__implmentsgameinputinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("AllBinaryGameLayer", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_static("RectangleFactory", "SINGLETON"), jr.call_static("ViewPosition", "getInstanceD_0", [])])
        c1_jfields(this)
        jr.call_static("GameInputProcessorUtil", "init_1", [jr.get_field(this, "inputProcessorArray")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TestingInputSingleton",
        "org.allbinary.game.input.TestingInputSingleton",
        "AllBinaryGameLayer",
        ["GameInputInterface"],
        False,
        [#("inputProcessorArray", jr.JNull), #("testInputPaintable", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("initInputProcessors_0", [], False, c1_m6__initinputprocessors), 
            jr.Method("initInputProcessorsForTestInput_1", ["TestInputInterface"], False, c1_m7__initinputprocessorsfortestinput), 
            jr.Method("processInputList_2", ["AllBinaryLayerManager", "BasicArrayList"], False, c1_m8__processinputlist), 
            jr.Method("processInput_1", ["AllBinaryLayerManager"], False, c1_m9__processinput), 
            jr.Method("paint_1", ["Graphics"], False, c1_m10__paint), 
            jr.Method("implmentsGameInputInterface_0", [], False, c1_m11__implmentsgameinputinterface), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

// class TestingInputSingleton$1

fn c2_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c2_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c2_m1__processevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
                jr.call(jr.get_field(this, "jc_testInputInterface"), "up_0", [])
    jr.JNull
}

fn c2_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GameInputProcessor", this, jargs)
    c2_jfields(this)
    this
}

fn c2_class() -> jr.Class {
    jr.Class(
        "TestingInputSingleton$1",
        "org.allbinary.game.input.TestingInputSingleton$1",
        "GameInputProcessor",
        [],
        False,
        [#("jouter", jr.JNull), #("jc_testInputInterface", jr.JNull)],
        [],
        [
            jr.Method("processEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c2_m1__processevent), 
            jr.Method("jinit_0", [], False, c2_jinit)],
        c2_jfields,
        c2_jclinit,
    )
}

// class TestingInputSingleton$2

fn c3_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c3_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c3_m1__processevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
                jr.call(jr.get_field(this, "jc_testInputInterface"), "down_0", [])
    jr.JNull
}

fn c3_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GameInputProcessor", this, jargs)
    c3_jfields(this)
    this
}

fn c3_class() -> jr.Class {
    jr.Class(
        "TestingInputSingleton$2",
        "org.allbinary.game.input.TestingInputSingleton$2",
        "GameInputProcessor",
        [],
        False,
        [#("jouter", jr.JNull), #("jc_testInputInterface", jr.JNull)],
        [],
        [
            jr.Method("processEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c3_m1__processevent), 
            jr.Method("jinit_0", [], False, c3_jinit)],
        c3_jfields,
        c3_jclinit,
    )
}

// class TestingInputSingleton$3

fn c4_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c4_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c4_m1__processevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
                jr.call(jr.get_field(this, "jc_testInputInterface"), "left_0", [])
    jr.JNull
}

fn c4_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GameInputProcessor", this, jargs)
    c4_jfields(this)
    this
}

fn c4_class() -> jr.Class {
    jr.Class(
        "TestingInputSingleton$3",
        "org.allbinary.game.input.TestingInputSingleton$3",
        "GameInputProcessor",
        [],
        False,
        [#("jouter", jr.JNull), #("jc_testInputInterface", jr.JNull)],
        [],
        [
            jr.Method("processEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c4_m1__processevent), 
            jr.Method("jinit_0", [], False, c4_jinit)],
        c4_jfields,
        c4_jclinit,
    )
}

// class TestingInputSingleton$4

fn c5_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c5_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c5_m1__processevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
                jr.call(jr.get_field(this, "jc_testInputInterface"), "right_0", [])
    jr.JNull
}

fn c5_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GameInputProcessor", this, jargs)
    c5_jfields(this)
    this
}

fn c5_class() -> jr.Class {
    jr.Class(
        "TestingInputSingleton$4",
        "org.allbinary.game.input.TestingInputSingleton$4",
        "GameInputProcessor",
        [],
        False,
        [#("jouter", jr.JNull), #("jc_testInputInterface", jr.JNull)],
        [],
        [
            jr.Method("processEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c5_m1__processevent), 
            jr.Method("jinit_0", [], False, c5_jinit)],
        c5_jfields,
        c5_jclinit,
    )
}

// class TestingInputSingleton$5

fn c6_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c6_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c6_m1__processevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
                jr.call(jr.get_field(this, "jc_testInputInterface"), "strafeLeft_0", [])
    jr.JNull
}

fn c6_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GameInputProcessor", this, jargs)
    c6_jfields(this)
    this
}

fn c6_class() -> jr.Class {
    jr.Class(
        "TestingInputSingleton$5",
        "org.allbinary.game.input.TestingInputSingleton$5",
        "GameInputProcessor",
        [],
        False,
        [#("jouter", jr.JNull), #("jc_testInputInterface", jr.JNull)],
        [],
        [
            jr.Method("processEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c6_m1__processevent), 
            jr.Method("jinit_0", [], False, c6_jinit)],
        c6_jfields,
        c6_jclinit,
    )
}

// class TestingInputSingleton$6

fn c7_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c7_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c7_m1__processevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_game_key_event] = jargs
                jr.call(jr.get_field(this, "jc_testInputInterface"), "strafeRight_0", [])
    jr.JNull
}

fn c7_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GameInputProcessor", this, jargs)
    c7_jfields(this)
    this
}

fn c7_class() -> jr.Class {
    jr.Class(
        "TestingInputSingleton$6",
        "org.allbinary.game.input.TestingInputSingleton$6",
        "GameInputProcessor",
        [],
        False,
        [#("jouter", jr.JNull), #("jc_testInputInterface", jr.JNull)],
        [],
        [
            jr.Method("processEvent_2", ["AllBinaryLayerManager", "GameKeyEvent"], False, c7_m1__processevent), 
            jr.Method("jinit_0", [], False, c7_jinit)],
        c7_jfields,
        c7_jclinit,
    )
}

