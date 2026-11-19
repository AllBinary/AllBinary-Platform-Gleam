// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameCommandCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "repaintProcessor", jr.call(jr.call_static("ScreenRepaintProcessorFactory", "getInstance_0", []), "create_1", [this]))
    jr.set_field(this, "gameInputStrings", jr.call_static("GameInputStrings", "getInstance_0", []))
    jr.set_field(this, "inputToGameKeyMapping", jr.call(jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []), "getInputMapping_0", []))
    jr.set_field(this, "gameKeyFactory", jr.call_static("GameKeyFactory", "getInstance_0", []))
    jr.set_field(this, "gameKeyEventFactory", jr.call_static("GameKeyEventFactory", "getInstance_0", []))
    jr.set_field(this, "downGameKeyEventHandler", jr.call_static("DownGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "upGameKeyEventHandler", jr.call_static("UpGameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "menuInputProcessor", jr.call_static("NoMenuInputProcessor", "getInstance_0", []))
    jr.set_field(this, "menuPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "menuForm", jr.call_static("PaintableForm", "getNullPaintableForm_0", []))
    jr.set_field(this, "isSingleKeyRepeatableProcessing", jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("InputFeatureFactory", "getInstance_0", []), "SINGLE_KEY_REPEAT_PRESS")]))
    jr.set_field(this, "fontHeight", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m22__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.try_catch(fn() {
            let l_font = jr.call(l_graphics, "getFont_0", [])
            jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "commonStrings"), "START")]), "append_1", [jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "canvasStrings"), "FD_WIDTH")]), "appendint_1", [jr.call_static("MyFontProcessor", "defaultCharWidth_1", [l_font])]), "append_1", [jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "canvasStrings"), "FD_HEIGHT")]), "appendint_1", [jr.call(l_font, "getHeight_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "canvasStrings"), "UPDATE_MEASUREMENT")])
            jr.set_field(this, "fontHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
            let l_rectangle = jr.call(this, "createRectangle_1", [jr.call(jr.get_field(this, "menuForm"), "size_0", [])])
            jr.call(jr.get_field(this, "menuForm"), "init_2", [l_rectangle, jr.get_field(jr.call_static("FormTypeFactory", "getInstance_0", []), "VERTICAL_CENTER_FORM")])
            jr.call(this, "update_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "canvasStrings"), "ON_DISPLAY_CHANGE_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m23__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m24__ondisplaychangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display_change_event] = jargs
        jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "commonStrings"), "START")]), "append_1", [jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "toString_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "canvasStrings"), "ON_DISPLAY_CHANGE_EVENT")])
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m25__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "GameCommandCanvas", "removeAllCommands_0", [])
        jr.call_inherited(this, "GameCommandCanvas", "addCommand_1", [jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "CLOSE_AND_SHOW_GAME_CANVAS")])
        jr.call_inherited(this, "GameCommandCanvas", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m26__initmenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_form = jr.call(this, "createForm_0", [])
        jr.set_field(this, "menuForm", l_form)
        case jr.truth(jr.ne(l_form, jr.call_static("ScrollSelectionFormNoneFactory", "getInstance_0", []))) {
            True -> {
            jr.call(this, "setMenuInputProcessor_1", [jr.new("ImmediateCommandFormInputProcessor", [jr.new("BasicArrayListD", []), jr.JInt(-1), this, l_form])])
            jr.set_field(this, "menuPaintable", jr.new("FormPaintable", [l_form]))
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "repaintBehavior"), "onChangeRepaint_1", [this])
    jr.JNull
}

fn c1_m27__createform(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_items = jr.call(jr.new("CommandTextItemArrayFactory", [jr.new("AllCommandsVisitor", [])]), "getInstance_3", [jr.call_inherited(this, "GameCommandCanvas", "getCommandStack_0", []), jr.get_field(this, "backgroundBasicColor"), jr.get_field(this, "foregroundBasicColor")])
        let l_rectangle = jr.call(this, "createRectangle_1", [jr.alen(l_items)])
    jr.call_static("CommandCurrentSelectionFormFactory", "getInstance_8", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), l_items, l_rectangle, jr.get_field(jr.call_static("FormTypeFactory", "getInstance_0", []), "VERTICAL_CENTER_FORM"), jr.JInt(15), jr.JBool(False), jr.get_field(this, "backgroundBasicColor"), jr.get_field(this, "foregroundBasicColor")])
}

fn c1_m28__createrectangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
        let l_height = jr.as_i(jr.mul(l_size, jr.get_field(this, "fontHeight")))
        let l_start_y = jr.as_i(jr.sub(jr.div(jr.mul(jr.call(jr.get_inherited(this, "GameCommandCanvas", "displayInfo"), "getLastHeight_0", []), jr.JInt(2)), jr.JInt(3)), l_height))
        let l_point_factory = jr.call_static("PointFactory", "getInstance_0", [])
        let l_rectangle = jr.new("Rectangle", [jr.call(l_point_factory, "createXY_2", [jr.JInt(30), l_start_y]), jr.sub(jr.call(jr.get_inherited(this, "GameCommandCanvas", "displayInfo"), "getLastWidth_0", []), jr.JInt(30)), l_start_y])
    l_rectangle
}

fn c1_m29__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "commonStrings"), "START"), this, jr.JStr("open")])
        jr.call(jr.call_static("BasicMotionGesturesHandler", "getInstance_0", []), "addListenerInterface_1", [jr.call(this, "getMenuInputProcessor_0", [])])
        jr.call(jr.call_static("GameKeyEventHandler", "getInstance_0", []), "addListener_1", [jr.call(this, "getMenuInputProcessor_0", [])])
        jr.call(jr.call_static("DisplayChangeEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
    jr.JNull
}

fn c1_m30__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "GameCommandCanvas", "commonStrings"), "CLOSE")])
        jr.call(jr.call_static("BasicMotionGesturesHandler", "getInstance_0", []), "removeListener_1", [jr.call(this, "getMenuInputProcessor_0", [])])
        jr.call(jr.call_static("GameKeyEventHandler", "getInstance_0", []), "removeListener_1", [jr.call(this, "getMenuInputProcessor_0", [])])
        jr.call(jr.call_static("DisplayChangeEventHandler", "getInstance_0", []), "removeListener_1", [this])
    jr.JNull
}

fn c1_m31__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "repaintProcessor"), "process_0", [])
    jr.JNull
}

fn c1_m32__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("GameCommandCanvas", "id"))
}

fn c1_m33__keypressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyPressedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m34__keyreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyReleasedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m35__keyrepeated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyRepeatedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m36__keypressedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "KEY_PRESSED")])
        jr.call(this, "addGameKeyEvent_3", [l_key_code, jr.JInt(0), jr.JBool(False)])
    jr.JNull
}

fn c1_m37__keyreleasedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(this, "removeGameKeyEvent_3", [l_key_code, l_device_id, jr.JBool(False)])
    jr.JNull
}

fn c1_m38__keyrepeatedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        case jr.truth(jr.get_field(this, "isSingleKeyRepeatableProcessing")) {
            True -> {
            jr.call(this, "addGameKeyEvent_3", [l_key_code, l_device_id, jr.JBool(True)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m39__addgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.try_catch(fn() {
            let l_game_key = jr.call(jr.get_field(this, "inputToGameKeyMapping"), "getInstanceForCanvas_2", [this, l_key_code])
            case jr.truth(jr.ne(l_game_key, jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"))) {
                True -> {
                let l_game_key_event = jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [this, l_game_key])
                jr.call(jr.get_field(this, "downGameKeyEventHandler"), "fireEvent_1", [l_game_key_event])
                jr.call(jr.call(jr.get_field(this, "downGameKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEvent_1", [l_game_key_event])
                Nil
            }
                False -> {
                jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "gameInputStrings"), "NO_KEY")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "ADD_KEY_EVENT")])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "put_4", [jr.JStr("Key Event Error"), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "ADD_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m40__removegamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.try_catch(fn() {
            let l_game_key = jr.call(jr.get_field(this, "inputToGameKeyMapping"), "getInstanceForCanvas_2", [this, l_key_code])
            case jr.truth(jr.ne(l_game_key, jr.get_field(jr.get_field(this, "gameKeyFactory"), "NONE"))) {
                True -> {
                let l_game_key_event = jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [this, l_game_key])
                jr.call(jr.get_field(this, "upGameKeyEventHandler"), "fireEvent_1", [l_game_key_event])
                jr.call(jr.call(jr.get_field(this, "upGameKeyEventHandler"), "getInstanceForDevice_1", [l_device_id]), "fireEvent_1", [l_game_key_event])
                Nil
            }
                False -> {
                jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "gameInputStrings"), "NO_KEY")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "REMOVE_KEY_EVENT")])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "GameCommandCanvas", "logUtil"), "put_4", [jr.JStr("Key Event Error"), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "REMOVE_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m41__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "menuPaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "repaintBehavior"), "repaint_1", [this])
    jr.JNull
}

fn c1_m42__setmenuinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_menu_input_processor] = jargs
        jr.set_field(this, "menuInputProcessor", l_menu_input_processor)
    jr.JNull
}

fn c1_m43__getmenuinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "menuInputProcessor")
}

fn c1_jinit21(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener, l_name, l_background_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("MyCanvas", this, [l_name, jr.get_field(jr.call_static("CanvasStrings", "getInstance_0", []), "EMPTY_CHILD_NAME_LIST")])
        c1_jfields(this)
        jr.set_field(this, "repaintBehavior", jr.call_static("RepaintBehavior", "getInstance_0", []))
        jr.set_field(this, "foregroundBasicColor", l_foreground_basic_color)
        jr.set_field(this, "backgroundBasicColor", l_background_basic_color)
        jr.set_field(this, "foregroundColor", jr.as_i(jr.call(jr.get_field(this, "foregroundBasicColor"), "intValue_0", [])))
        jr.set_field(this, "backgroundColor", jr.as_i(jr.call(jr.get_field(this, "backgroundBasicColor"), "intValue_0", [])))
        jr.call(this, "initCommands_1", [l_cmd_listener])
        case jr.truth(jr.ne(l_cmd_listener, jr.get_static("NullCommandListener", "NULL_COMMAND_LISTENER"))) {
            True -> {
            jr.try_catch(fn() {
                jr.call(this, "initMenu_0", [])
                jr.call(jr.get_field(this, "repaintProcessor"), "process_0", [])
                Nil
            }, [#(["Exception"], fn(l_e) { {
                jr.throw(jr.new("RuntimeException", []))
                Nil
            } })], fn() { Nil })
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameCommandCanvas",
        "org.allbinary.game.displayable.canvas.GameCommandCanvas",
        "MyCanvas",
        ["MenuListener", "DisplayChangeEventListener", "UpdateMyFontInterface"],
        False,
        [#("repaintProcessor", jr.JNull), #("gameInputStrings", jr.JNull), #("foregroundBasicColor", jr.JNull), #("backgroundBasicColor", jr.JNull), #("inputToGameKeyMapping", jr.JNull), #("gameKeyFactory", jr.JNull), #("gameKeyEventFactory", jr.JNull), #("downGameKeyEventHandler", jr.JNull), #("upGameKeyEventHandler", jr.JNull), #("repaintBehavior", jr.JNull), #("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("foregroundColor", jr.JInt(0)), #("backgroundColor", jr.JInt(0)), #("menuInputProcessor", jr.JNull), #("menuPaintable", jr.JNull), #("menuForm", jr.JNull), #("isSingleKeyRepeatableProcessing", jr.JBool(False)), #("fontHeight", jr.JInt(0))],
        [#("id", jr.as_i(jr.JInt(0)))],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m22__updatemeasurement), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m23__onevent), 
            jr.Method("onDisplayChangeEvent_1", ["DisplayChangeEvent"], False, c1_m24__ondisplaychangeevent), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m25__initcommands), 
            jr.Method("initMenu_0", [], False, c1_m26__initmenu), 
            jr.Method("createForm_0", [], False, c1_m27__createform), 
            jr.Method("createRectangle_1", ["int"], False, c1_m28__createrectangle), 
            jr.Method("open_0", [], False, c1_m29__open), 
            jr.Method("close_0", [], False, c1_m30__close), 
            jr.Method("update_0", [], False, c1_m31__update), 
            jr.Method("getSourceId_0", [], False, c1_m32__getsourceid), 
            jr.Method("keyPressed_1", ["int"], False, c1_m33__keypressed), 
            jr.Method("keyReleased_1", ["int"], False, c1_m34__keyreleased), 
            jr.Method("keyRepeated_1", ["int"], False, c1_m35__keyrepeated), 
            jr.Method("keyPressedByDevice_2", ["int", "int"], False, c1_m36__keypressedbydevice), 
            jr.Method("keyReleasedByDevice_2", ["int", "int"], False, c1_m37__keyreleasedbydevice), 
            jr.Method("keyRepeatedByDevice_2", ["int", "int"], False, c1_m38__keyrepeatedbydevice), 
            jr.Method("addGameKeyEvent_3", ["int", "int", "boolean"], False, c1_m39__addgamekeyevent), 
            jr.Method("removeGameKeyEvent_3", ["int", "int", "boolean"], False, c1_m40__removegamekeyevent), 
            jr.Method("paint_1", ["Graphics"], False, c1_m41__paint), 
            jr.Method("setMenuInputProcessor_1", ["BasicMenuInputProcessor"], False, c1_m42__setmenuinputprocessor), 
            jr.Method("getMenuInputProcessor_0", [], False, c1_m43__getmenuinputprocessor), 
            jr.Method("jinit_4", ["CommandListener", "String", "BasicColor", "BasicColor"], False, c1_jinit21)],
        c1_jfields,
        c1_jclinit,
    )
}

