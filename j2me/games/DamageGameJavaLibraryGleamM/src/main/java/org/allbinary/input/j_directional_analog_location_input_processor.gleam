// Generated Code Do Not Modify
// package org.allbinary.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DirectionalAnalogLocationInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "gameKeyFactory", jr.call_static("GameKeyFactory", "getInstance_0", []))
    jr.set_field(this, "leftGameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.set_field(this, "rightGameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.set_field(this, "upGameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.set_field(this, "downGameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.set_field(this, "leftTriggerGameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.set_field(this, "rightTriggerGameKeyEvent", jr.get_static("GameKeyEvent", "NONE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m11__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_analog_location_input] = jargs
        jr.try_catch(fn() {
            let l_custom_g_point = jr.cell(jr.JNull)
            jr.set(l_custom_g_point, jr.call(l_analog_location_input, "getCustomGPoint_0", []))
            let l_x = jr.as_i(jr.call(jr.get(l_custom_g_point), "getX_0", []))
            let l_y = jr.as_i(jr.call(jr.get(l_custom_g_point), "getY_0", []))
            let l_left_trigger = jr.as_i(jr.call(l_analog_location_input, "getLeftTrigger_0", []))
            let l_right_trigger = jr.as_i(jr.call(l_analog_location_input, "getRightTrigger_0", []))
            case jr.truth(jr.lt(l_x, jr.JInt(0))) {
                True -> {
                jr.call(jr.aget(jr.get_field(this, "inputProcessorArray"), jr.call(jr.get_field(this, "leftGameKeyEvent"), "getKey_0", [])), "processAnalog_3", [l_allbinary_layer_manager, jr.get_field(this, "leftGameKeyEvent"), l_x])
                Nil
            }
                False -> case jr.truth(jr.gt(l_x, jr.JInt(0))) {
                True -> {
                jr.call(jr.aget(jr.get_field(this, "inputProcessorArray"), jr.call(jr.get_field(this, "rightGameKeyEvent"), "getKey_0", [])), "processAnalog_3", [l_allbinary_layer_manager, jr.get_field(this, "rightGameKeyEvent"), l_x])
                Nil
            }
                False -> Nil
            }
            }
            case jr.truth(jr.lt(l_y, jr.JInt(0))) {
                True -> {
                jr.call(jr.aget(jr.get_field(this, "inputProcessorArray"), jr.call(jr.get_field(this, "downGameKeyEvent"), "getKey_0", [])), "processAnalog_3", [l_allbinary_layer_manager, jr.get_field(this, "downGameKeyEvent"), l_y])
                Nil
            }
                False -> case jr.truth(jr.gt(l_y, jr.JInt(0))) {
                True -> {
                jr.call(jr.aget(jr.get_field(this, "inputProcessorArray"), jr.call(jr.get_field(this, "upGameKeyEvent"), "getKey_0", [])), "processAnalog_3", [l_allbinary_layer_manager, jr.get_field(this, "upGameKeyEvent"), l_y])
                Nil
            }
                False -> Nil
            }
            }
            case jr.truth(jr.gt(l_left_trigger, jr.JInt(0))) {
                True -> {
                jr.call(jr.aget(jr.get_field(this, "inputProcessorArray"), jr.call(jr.get_field(this, "leftTriggerGameKeyEvent"), "getKey_0", [])), "processAnalog_3", [l_allbinary_layer_manager, jr.get_field(this, "leftTriggerGameKeyEvent"), l_left_trigger])
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.gt(l_right_trigger, jr.JInt(0))) {
                True -> {
                jr.call(jr.aget(jr.get_field(this, "inputProcessorArray"), jr.call(jr.get_field(this, "rightTriggerGameKeyEvent"), "getKey_0", [])), "processAnalog_3", [l_allbinary_layer_manager, jr.get_field(this, "rightTriggerGameKeyEvent"), l_right_trigger])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.JStr("Unable to process analog input"), this, jr.get_field(l_common_strings, "PROCESS"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m12__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_jinit10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_processor_array] = jargs
    jr.super_init("AnalogLocationInputProcessor", this, [])
    c1_jfields(this)
        jr.set_field(this, "inputProcessorArray", l_input_processor_array)
        jr.try_catch(fn() {
            jr.set_field(this, "leftGameKeyEvent", jr.call(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "getInstanceForInput_2", [this, jr.get_field(jr.get_field(this, "gameKeyFactory"), "LEFT")]))
            jr.set_field(this, "rightGameKeyEvent", jr.call(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "getInstanceForInput_2", [this, jr.get_field(jr.get_field(this, "gameKeyFactory"), "RIGHT")]))
            jr.set_field(this, "upGameKeyEvent", jr.call(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "getInstanceForInput_2", [this, jr.get_field(jr.get_field(this, "gameKeyFactory"), "UP")]))
            jr.set_field(this, "downGameKeyEvent", jr.call(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "getInstanceForInput_2", [this, jr.get_field(jr.get_field(this, "gameKeyFactory"), "DOWN")]))
            jr.set_field(this, "leftTriggerGameKeyEvent", jr.call(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "getInstanceForInput_2", [this, jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM0")]))
            jr.set_field(this, "rightTriggerGameKeyEvent", jr.call(jr.call_static("GameKeyEventFactory", "getInstance_0", []), "getInstanceForInput_2", [this, jr.get_field(jr.get_field(this, "gameKeyFactory"), "KEY_NUM5")]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "CONSTRUCTOR"), l_e])
            Nil
        } })], fn() { Nil })
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DirectionalAnalogLocationInputProcessor",
        "org.allbinary.input.DirectionalAnalogLocationInputProcessor",
        "AnalogLocationInputProcessor",
        ["GameKeyEventSourceInterface"],
        False,
        [#("logUtil", jr.JNull), #("inputProcessorArray", jr.JNull), #("gameKeyFactory", jr.JNull), #("leftGameKeyEvent", jr.JNull), #("rightGameKeyEvent", jr.JNull), #("upGameKeyEvent", jr.JNull), #("downGameKeyEvent", jr.JNull), #("leftTriggerGameKeyEvent", jr.JNull), #("rightTriggerGameKeyEvent", jr.JNull)],
        [],
        [
            jr.Method("process_2", ["AllBinaryLayerManager", "AnalogLocationInput"], False, c1_m11__process), 
            jr.Method("getSourceId_0", [], False, c1_m12__getsourceid), 
            jr.Method("jinit_1", ["GameInputProcessorArr"], False, c1_jinit10)],
        c1_jfields,
        c1_jclinit,
    )
}

