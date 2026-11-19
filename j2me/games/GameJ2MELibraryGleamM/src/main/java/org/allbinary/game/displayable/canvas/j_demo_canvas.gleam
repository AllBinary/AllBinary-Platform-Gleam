// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicColorFactory", jr.call_static("BasicColorFactory", "getInstance_0", []))
    jr.set_field(this, "myCommandsFactory", jr.call_static("MyCommandsFactory", "getInstance_0", []))
    jr.set_field(this, "gameAdStateFactory", jr.call_static("GameAdStateFactory", "getInstance_0", []))
    jr.set_field(this, "gameInputStrings", jr.call_static("GameInputStrings", "getInstance_0", []))
    jr.set_field(this, "gameStateFactory", jr.call_static("GameStateFactory", "getInstance_0", []))
    jr.set_field(this, "threadFactoryUtil", jr.call_static("ThreadFactoryUtil", "getInstance_0", []))
    jr.set_field(this, "formUtil", jr.call_static("FormUtil", "getInstance_0", []))
    jr.set_field(this, "fullscreenPaintable", jr.get_field(jr.call_static("FullScreenPaintableFactory", "getInstance_0", []), "paintable"))
    jr.set_field(this, "basicGameDemoPaintable", jr.call_static("StatePaintableFactory", "getInstance_0", []))
    jr.set_field(this, "specialAnimationInterface", jr.call_static("SpecialAnimation", "getInstance_0", []))
    jr.set_field(this, "paintedSpecialAnimationInterface", jr.call_static("SpecialAnimation", "getInstance_0", []))
    jr.set_field(this, "fullScreenUtil", jr.call_static("FullScreenUtil", "getInstance_0", []))
    jr.set_field(this, "gameCanvas", jr.call_static("NullGameCanvas", "getInstance_0", []))
    jr.set_field(this, "highScoresHelper", jr.new("HighScoresHelper", []))
    jr.set_field(this, "realHighScoresPaintable", jr.new("HighScoresPaintable", []))
    jr.set_field(this, "highScoresPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "state", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "canvasThread", jr.get_static("NullThread", "NULL_THREAD"))
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(6000)]))
    jr.set_field(this, "basicColor", jr.get_field(jr.get_field(this, "basicColorFactory"), "RED"))
    jr.set_field(this, "menuInputProcessor", jr.call_static("NoMenuInputProcessor", "getInstance_0", []))
    jr.set_field(this, "menuForm", jr.call_static("ScrollSelectionForm", "getNullScrollSelectionForm_0", []))
    jr.set_field(this, "defaultPaintableInterface", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "paintableInterface", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "progressPaintable", jr.call_static("ProgressCanvasFactory", "getLazyInstance_0", []))
    jr.set_field(this, "tempWait", jr.as_i(jr.get_field(jr.call_static("NullWaitGameRunnable", "getInstance_0", []), "WAIT")))
    jr.set_field(this, "inputToGameKeyMapping", jr.call(jr.call(jr.call_static("PlatformInputMappingFactory", "getInstance_0", []), "getPersistentInputMappingInstance_0", []), "getInputMapping_0", []))
    jr.set_field(this, "gameRunnable", jr.call_static("NullWaitGameRunnable", "getInstance_0", []))
    jr.set_field(this, "isSingleKeyRepeatableProcessing", jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("InputFeatureFactory", "getInstance_0", []), "SINGLE_KEY_REPEAT_PRESS")]))
    jr.set_field(this, "NONE", jr.get_field(jr.call_static("GameKeyFactory", "getInstance_0", []), "NONE"))
    jr.set_field(this, "gameKeyEventFactory", jr.call_static("GameKeyEventFactory", "getInstance_0", []))
    jr.set_field(this, "lastKeyNotMapped", jr.as_i(jr.JInt(-1)))
    jr.set_field(this, "SET_STATE", jr.JStr("setState"))
    jr.set_field(this, "baseGameStatistics", jr.call_static("GameStatisticsFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m36__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m37__ondisplaychangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display_change_event] = jargs
        jr.try_catch(fn() {
            jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonLabels"), "START_LABEL")]), "append_1", [jr.call(jr.get_inherited(this, "DemoCanvas", "displayInfo"), "toString_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "DemoCanvas", "canvasStrings"), "ON_DISPLAY_CHANGE_EVENT")])
            let l_scroll_selection_form = jr.call(this, "getMenuForm_0", [])
            case jr.truth(jr.ne(l_scroll_selection_form, jr.JNull)) {
                True -> {
                let l_form_type = jr.call(jr.call_static("FormTypeFactory", "getInstance_0", []), "getFormType_0", [])
                let l_rectangle = jr.call(jr.get_field(this, "formUtil"), "createFormRectangle_0", [])
                jr.call(l_scroll_selection_form, "init_2", [l_rectangle, l_form_type])
                Nil
            }
                False -> Nil
            }
            jr.call(jr.get_field(this, "overlayPaintable"), "init_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "DemoCanvas", "canvasStrings"), "ON_DISPLAY_CHANGE_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m38__getcustomcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
            case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
            True -> {
            let l_command_array = jr.array_of("L", [jr.get_field(l_game_commands_factory, "START_COMMAND"), jr.get_field(jr.call_static("HighScoreCommands", "getInstance_0", []), "DISPLAY"), jr.get_static("GameInputMappingCanvas", "DISPLAY"), jr.get_field(l_game_commands_factory, "DISPLAY_ABOUT")])
            jr.ret(l_command_array)
            Nil
        }
            False -> {
            let l_command_list = jr.new("BasicArrayListD", [])
            jr.call(l_command_list, "add_1", [jr.get_field(l_game_commands_factory, "START_COMMAND")])
            let l_in_application_purchase_factory = jr.call_static("InApplicationPurchaseFactory", "getInstance_0", [])
            case jr.truth(jr.call(l_in_application_purchase_factory, "isEnabled_0", [])) {
                True -> {
                let l_list = jr.call(jr.call_static("LockableFeatureFactory", "getInstance_0", []), "getList_0", [])
                case jr.truth(case jr.truth(jr.gt(jr.call(l_list, "size_0", []), jr.JInt(0))) { True -> jr.not(jr.call(l_in_application_purchase_factory, "isPurchased_1", [jr.call(l_list, "get_1", [jr.JInt(0)])])) False -> jr.JBool(False) }) {
                    True -> {
                    jr.call(l_command_list, "add_1", [jr.get_field(l_game_commands_factory, "BUY_COMMAND")])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            jr.call(l_command_list, "add_1", [jr.get_field(jr.call_static("HighScoreCommands", "getInstance_0", []), "DISPLAY")])
            jr.try_catch(fn() {
                let l_is_over_scan = jr.call(jr.call(jr.call_static("OperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", []), "isOverScan_0", [])
                case jr.truth(jr.get_static("SWTUtil", "isSWT")) {
                    True -> {
                    jr.call(l_command_list, "add_1", [jr.get_static("GameInputMappingCanvas", "DISPLAY")])
                    Nil
                }
                    False -> case jr.truth(jr.not(l_is_over_scan)) {
                    True -> {
                    jr.call(l_command_list, "add_1", [jr.get_field(l_game_commands_factory, "DISPLAY_OPTIONS")])
                    jr.call(l_command_list, "add_1", [jr.get_field(l_game_commands_factory, "DISPLAY_LOAD_FORM")])
                    jr.call(l_command_list, "add_1", [jr.get_static("GameInputMappingCanvas", "DISPLAY")])
                    Nil
                }
                    False -> Nil
                }
                }
                Nil
            }, [#(["Exception"], fn(l_e) { {
                Nil
            } })], fn() { Nil })
            jr.call(l_command_list, "add_1", [jr.get_field(l_game_commands_factory, "DISPLAY_ABOUT")])
            let l_command_array = jr.call(l_command_list, "toArray_0", [])
            jr.ret(l_command_array)
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m39__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "DemoCanvas", "removeAllCommands_0", [])
        let l_command_array = jr.call(this, "getCustomCommands_0", [])
        let l_size = jr.as_i(jr.alen(l_command_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call_inherited(this, "DemoCanvas", "addCommand_1", [jr.aget(l_command_array, jr.get(l_index))])
            Nil
        })
            Nil
        }
        jr.call_static("CustomGameMenuUtil", "add_1", [this])
        jr.call_inherited(this, "DemoCanvas", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m40__initpostpaint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m41__mediainit(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("AllBinaryMediaManager", "init_1", [jr.call_static("EarlySoundsFactory", "getInstance_0", [])])
    jr.JNull
}

fn c1_m42__itemstatechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "NOT_IMPLEMENTED"), this])
    jr.JNull
}

fn c1_m43__initmenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "close_0", [])
        let l_command_text_item_array_factory = jr.call(jr.call_static("DemoLimitedCommandTextItemArrayFactory", "getInstance_0", []), "getCommandTextItemArrayFactory_0", [])
        let l_items = jr.call(l_command_text_item_array_factory, "getInstance_3", [jr.call_inherited(this, "DemoCanvas", "getCommandStack_0", []), jr.get_field(jr.get_field(this, "basicColorFactory"), "BLACK"), jr.get_field(jr.get_field(this, "basicColorFactory"), "WHITE")])
        let l_form_type = jr.call(jr.call_static("FormTypeFactory", "getInstance_0", []), "getFormType_0", [])
        let l_rectangle = jr.call(jr.get_field(this, "formUtil"), "createFormRectangle_0", [])
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonLabels"), "START_LABEL")]), "append_1", [jr.call(jr.get_inherited(this, "DemoCanvas", "displayInfo"), "toString_0", [])]), "toString_0", []), this, jr.JStr("initMenu")])
        let l_scroll_selection_form = jr.call_static("CommandCurrentSelectionFormFactory", "getInstance_8", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), l_items, l_rectangle, l_form_type, jr.JInt(15), jr.JBool(True), jr.get_field(jr.get_field(this, "basicColorFactory"), "BLACK"), jr.get_field(jr.get_field(this, "basicColorFactory"), "WHITE")])
        jr.call(this, "setMenuForm_1", [l_scroll_selection_form])
        let l_form_type2 = jr.call(jr.call_static("FormTypeFactory", "getInstance_0", []), "getFormType_0", [])
        let l_rectangle2 = jr.call(jr.get_field(this, "formUtil"), "createFormRectangle_0", [])
        jr.call(l_scroll_selection_form, "init_2", [l_rectangle2, l_form_type2])
        case jr.truth(jr.ne(jr.call(this, "getMenuForm_0", []), jr.call_static("ScrollSelectionFormNoneFactory", "getInstance_0", []))) {
            True -> {
            jr.call(this, "setMenuInputProcessor_1", [jr.new("CommandFormInputProcessor", [jr.new("BasicArrayListD", []), jr.JInt(-1), this, jr.call(this, "getMenuForm_0", [])])])
            Nil
        }
            False -> Nil
        }
        jr.call(this, "open_0", [])
    jr.JNull
}

fn c1_m44__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("BasicMotionGesturesHandler", "getInstance_0", []), "addListenerInterface_1", [jr.call(this, "getMenuInputProcessor_0", [])])
        jr.call(jr.call_static("GameKeyEventHandler", "getInstance_0", []), "addListener_1", [jr.call(this, "getMenuInputProcessor_0", [])])
    jr.JNull
}

fn c1_m45__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("BasicMotionGesturesHandler", "getInstance_0", []), "removeListener_1", [jr.call(this, "getMenuInputProcessor_0", [])])
        jr.call(jr.call_static("GameKeyEventHandler", "getInstance_0", []), "removeListener_1", [jr.call(this, "getMenuInputProcessor_0", [])])
    jr.JNull
}

fn c1_m47__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("DemoCanvas", "id"))
}

fn c1_m48__keypressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyPressedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m49__keyreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyReleasedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m50__keyrepeated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyRepeatedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m51__keypressedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(this, "addGameKeyEvent_2", [l_key_code, jr.JBool(False)])
    jr.JNull
}

fn c1_m52__keyreleasedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(this, "removeGameKeyEvent_2", [l_key_code, jr.JBool(False)])
    jr.JNull
}

fn c1_m54__keyrepeatedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        case jr.truth(jr.get_field(this, "isSingleKeyRepeatableProcessing")) {
            True -> {
            jr.call(this, "addGameKeyEvent_2", [l_key_code, jr.JBool(True)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m58__addgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.try_catch(fn() {
            let l_game_key = jr.call(jr.get_field(this, "inputToGameKeyMapping"), "getInstanceForCanvas_2", [this, l_key_code])
            case jr.truth(jr.ne(l_game_key, jr.get_field(this, "NONE"))) {
                True -> {
                let l_game_key_event = jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [this, l_game_key])
                jr.call(jr.call_static("DownGameKeyEventHandler", "getInstance_0", []), "fireEvent_1", [l_game_key_event])
                Nil
            }
                False -> {
                case jr.truth(jr.ne(jr.get_field(this, "lastKeyNotMapped"), l_key_code)) {
                    True -> {
                    jr.set_field(this, "lastKeyNotMapped", jr.as_i(l_key_code))
                    jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "gameInputStrings"), "NO_KEY")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "ADD_KEY_EVENT")])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "put_4", [jr.JStr("Key Event Error"), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "ADD_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m59__removegamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.try_catch(fn() {
            let l_game_key = jr.call(jr.get_field(this, "inputToGameKeyMapping"), "getInstanceForCanvas_2", [this, l_key_code])
            case jr.truth(jr.ne(l_game_key, jr.get_field(this, "NONE"))) {
                True -> {
                let l_game_key_event = jr.call(jr.get_field(this, "gameKeyEventFactory"), "getInstanceForInput_2", [this, l_game_key])
                jr.call(jr.call_static("UpGameKeyEventHandler", "getInstance_0", []), "fireEvent_1", [l_game_key_event])
                Nil
            }
                False -> {
                jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "gameInputStrings"), "NO_KEY")]), "appendint_1", [l_key_code]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "REMOVE_KEY_EVENT")])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "put_4", [jr.JStr("Key Event Error"), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "REMOVE_KEY_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m60__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "close_0", [])
        jr.call_inherited(this, "DemoCanvas", "setPaused_1", [jr.JBool(True)])
        jr.set_field(this, "gameRunnable", jr.call_static("NullWaitGameRunnable", "getInstance_0", []))
        jr.call(jr.get_field(this, "gameCanvas"), "pause_0", [])
    jr.JNull
}

fn c1_m61__unpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "open_0", [])
        jr.call(jr.get_field(this, "gameCanvas"), "unPause_0", [])
        jr.set_field(this, "gameRunnable", jr.get_field(jr.get_field(this, "gameCanvas"), "gameRunnable"))
        jr.call_inherited(this, "DemoCanvas", "setPaused_1", [jr.JBool(False)])
    jr.JNull
}

fn c1_m62__ispausable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.eq(jr.call(jr.call_static("CurrentDisplayableFactory", "getInstance_0", []), "getUsedRunnable_0", []), jr.call_static("NullWaitGameRunnable", "getInstance_0", []))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(False))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m63__isgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "NOT_IMPLEMENTED")]), "append_1", [jr.JStr(" since not a game")]), "toString_0", []), this, jr.JStr("isGameOver")])
    jr.JBool(False)
}

fn c1_m64__setloadstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable] = jargs
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.JStr("Trying to continue a demo lol - only continue a game canvas not the demo"), this, jr.JStr("setLoadStateHashtable")])
    jr.JNull
}

fn c1_m65__getloadstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.JStr("Trying to continue a demo lol - only continue a game canvas not the demo"), this, jr.JStr("getLoadStateHashtable")])
    jr.get_field(jr.get_inherited(this, "DemoCanvas", "stdUtil"), "NULL_TABLE")
}

fn c1_m66__getcurrentstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.JStr("Trying to save the AI lol"), this, jr.JStr("getCurrentStateHashtable")])
    jr.get_field(jr.get_inherited(this, "DemoCanvas", "stdUtil"), "NULL_TABLE")
}

fn c1_m67__sethighscoresubmitted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_not_used] = jargs
    jr.JNull
}

fn c1_m68__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "paintableInterface"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "paintedSpecialAnimationInterface"), "paintXY_3", [l_graphics, jr.JInt(0), jr.JInt(0)])
        jr.call(jr.get_field(this, "highScoresPaintable"), "paint_1", [l_graphics])
        jr.call(jr.call(this, "getBasicGameDemoPaintable_0", []), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "overlayPaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "fullscreenPaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "progressPaintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m69__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "paintableInterface"), "paintThreed_1", [l_graphics])
        jr.call(jr.get_field(this, "paintedSpecialAnimationInterface"), "paintThreedXYZ_4", [l_graphics, jr.JInt(0), jr.JInt(0), jr.JInt(0)])
    jr.JNull
}

fn c1_m70__processgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.JStr("Not Implemented since not a game"), this, jr.JStr("setGameOver")])
    jr.JNull
}

fn c1_m71__demostatechange(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_new_state = jr.cell(jr.as_i(jr.add(jr.get_field(this, "state"), jr.JInt(1))))
        case jr.truth(jr.gt(jr.get(l_new_state), jr.JInt(2))) {
            True -> {
            jr.set(l_new_state, jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get(l_new_state), jr.JInt(2))) {
            True -> {
            case jr.truth(jr.not(jr.call(jr.get_field(this, "highScoresHelper"), "isAnyHighScores_0", []))) {
                True -> {
                jr.set(l_new_state, jr.as_i(jr.JInt(0)))
                Nil
            }
                False -> {
                let l_high_scores = jr.call(jr.get_field(this, "highScoresHelper"), "getNextHighScores_0", [])
                case jr.truth(jr.eq(l_high_scores, jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", []))) {
                    True -> {
                    jr.set(l_new_state, jr.as_i(jr.JInt(0)))
                    Nil
                }
                    False -> {
                    jr.call(jr.call(this, "getRealHighScoresPaintable_0", []), "setHighScores_1", [l_high_scores])
                    Nil
                }
                }
                Nil
            }
            }
            Nil
        }
            False -> Nil
        }
        }
        jr.call(this, "setState_1", [jr.get(l_new_state)])
        jr.call(this, "updateDemoState_0", [])
    jr.JNull
}

fn c1_m73__updatedemostate(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "createInstance_1", [jr.get_field(this, "state")]), "toString_0", []), this, jr.get_field(this, "SET_STATE")])
        jr.call(jr.call(this, "getBasicGameDemoPaintable_0", []), "setState_1", [jr.get_field(this, "state")])
        case jr.truth(jr.eq(jr.get_field(this, "state"), jr.JInt(0))) {
            True -> {
            jr.set_field(this, "highScoresPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
            jr.set_field(this, "paintedSpecialAnimationInterface", jr.call(this, "getSpecialAnimationInterface_0", []))
            case jr.truth(case jr.truth(jr.not(jr.call(jr.get_field(this, "demoGameRunnable"), "isRunning_0", []))) { True -> jr.call(jr.get_field(this, "gameCanvas"), "isInitialized_0", []) False -> jr.JBool(False) }) {
                True -> {
                jr.call(jr.call(this, "getSpecialAnimationInterface_0", []), "reset_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "state"), jr.JInt(1))) {
            True -> {
            jr.set_field(this, "paintedSpecialAnimationInterface", jr.call_static("SpecialAnimation", "getInstance_0", []))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.get_field(this, "state"), jr.JInt(2))) {
            True -> {
            jr.set_field(this, "highScoresPaintable", jr.call(this, "getRealHighScoresPaintable_0", []))
            Nil
        }
            False -> Nil
        }
        }
        }
        let l_game_ad_state = jr.call(jr.get_field(this, "gameAdStateFactory"), "getCurrentInstance_0", [])
        jr.call(l_game_ad_state, "processPageAdState_0", [])
    jr.JNull
}

fn c1_m74__getnextrandom(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m75__creategamelayermanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_random_value] = jargs
    let l_random_value = jr.as_i(l_random_value)
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m76__createrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_random_level] = jargs
    let l_random_level = jr.as_i(l_random_level)
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m77__create(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "START"), this, jr.JStr("create")])
        jr.set_field(this, "highScoresPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
        let l_random_level = jr.as_i(jr.call(this, "getNextRandom_0", []))
        jr.set_field(this, "gameCanvas", jr.call(this, "createRunnable_1", [l_random_level]))
        jr.set_field(this, "basicColor", jr.call(jr.call(jr.get_field(this, "gameCanvas"), "getLayerManager_0", []), "getForegroundBasicColor_0", []))
        jr.call(jr.call(this, "getRealHighScoresPaintable_0", []), "setBasicColorP_1", [jr.get_field(this, "basicColor")])
        jr.call(jr.get_field(this, "gameCanvas"), "setGameCanvasStartListener_1", [this])
        let l_game_info = jr.call(jr.call(jr.get_field(this, "gameCanvas"), "getLayerManager_0", []), "getGameInfo_0", [])
        jr.call(jr.call(this, "getHighScoresFactoryInterface_0", []), "fetchHighScores_2", [l_game_info, jr.get_field(this, "highScoresHelper")])
    jr.JNull
}

fn c1_m78__start(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_canvas = jr.get_field(this, "gameCanvas")
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Game Thread in DemoCanvas: ")]), "append_1", [jr.call(jr.get_inherited(this, "DemoCanvas", "stringUtil"), "toString_1", [l_game_canvas])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "START")])
        jr.set_field(this, "canvasThread", jr.call(jr.get_field(this, "threadFactoryUtil"), "getInstanceGameCanvasRunnable_1", [l_game_canvas]))
        jr.call(jr.get_field(this, "gameCanvas"), "setThread_1", [jr.get_field(this, "canvasThread")])
        jr.call(jr.get_field(this, "threadFactoryUtil"), "start_1", [jr.get_field(this, "canvasThread")])
        case jr.truth(jr.eq(jr.call_inherited(this, "DemoCanvas", "getWait_0", []), jr.get_field(jr.call_static("NullWaitGameRunnable", "getInstance_0", []), "WAIT"))) {
            True -> {
            jr.call_inherited(this, "DemoCanvas", "setWait_1", [jr.call(this, "getTempWait_0", [])])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m79__predemoprocess(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(case jr.truth(jr.not(jr.call(jr.get_field(this, "gameCanvas"), "isInitialized_0", []))) { True -> jr.JBool(True) False -> jr.eq(jr.call(jr.get_field(this, "gameCanvas"), "getTitle_0", []), jr.get_static("NullGameCanvas", "NO_GAME")) }) {
            True -> {
            case jr.truth(jr.call_static("AllBinaryMediaManager", "update_0", [])) {
                True -> {
                case jr.truth(jr.not(jr.call(jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []), "process_0", []))) {
                    True -> {
                    jr.call(jr.call_static("SecondaryPlayerQueueFactory", "getInstance_0", []), "process_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "overlayPaintable"), "update_0", [])
    jr.JNull
}

fn c1_m80__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("RunnableCanvas", this, "process_0", [])
        jr.call(jr.call(this, "getMenuInputProcessor_0", []), "processInputList_0", [])
        jr.call(this, "preDemoProcess_0", [])
        case jr.truth(jr.eq(jr.get_field(this, "state"), jr.JInt(0))) {
            True -> {
            let l_indexed_animation_behavior = jr.call(jr.call(this, "getSpecialAnimationInterface_0", []), "getAnimationBehavior_0", [])
            case jr.truth(jr.lt(jr.get_field(l_indexed_animation_behavior, "loopIndex"), jr.JInt(1))) {
                True -> {
                jr.call(jr.get_field(this, "timeDelayHelper"), "setStartTimeTNT_0", [])
                Nil
            }
                False -> Nil
            }
            let l_demo_game_midlet = jr.call_inherited(this, "DemoCanvas", "getCustomCommandListener_0", [])
            case jr.truth(case jr.truth(jr.ne(jr.get_field(this, "gameCanvas"), jr.call_static("NullGameCanvas", "getInstance_0", []))) { True -> jr.call(jr.get_field(this, "gameCanvas"), "isGameOver_0", []) False -> jr.JBool(False) }) {
                True -> {
                jr.call(this, "stopGameDemo_0", [])
                let l_random_level = jr.as_i(jr.call(this, "getNextRandom_0", []))
                let l_game_info = jr.call(jr.call(jr.get_field(this, "gameCanvas"), "getLayerManager_0", []), "getGameInfo_0", [])
                jr.call(l_game_info, "setCurrentLevel_1", [l_random_level])
                jr.call(jr.get_field(this, "gameCanvas"), "setGameOver_1", [jr.JBool(False)])
                jr.call(this, "start_0", [])
                Nil
            }
                False -> case jr.truth(case jr.truth(jr.eq(jr.get_field(this, "gameCanvas"), jr.call_static("NullGameCanvas", "getInstance_0", []))) { True -> jr.call(l_demo_game_midlet, "isReady_0", []) False -> jr.JBool(False) }) {
                True -> {
                case jr.truth(jr.not(jr.call(jr.get_field(this, "demoGameRunnable"), "isRunning_0", []))) {
                    True -> {
                    jr.call(this, "startDemoGame_0", [])
                    jr.call(jr.get_field(this, "demoGameRunnable"), "setRunning_1", [jr.JBool(True)])
                    let l_thread = jr.call(jr.get_field(this, "threadFactoryUtil"), "getInstanceForRunnable_1", [jr.get_field(this, "demoGameRunnable")])
                    jr.call(jr.get_field(this, "demoGameRunnable"), "setThread_1", [l_thread])
                    jr.call(jr.get_field(this, "threadFactoryUtil"), "start_1", [l_thread])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> Nil
            }
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m81__startdemogame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("DemoCanvasProgressUtil", "showProgress_1", [this])
    jr.JNull
}

fn c1_m82__stopgamedemo(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.ne(jr.get_field(this, "gameCanvas"), jr.call_static("NullGameCanvas", "getInstance_0", []))) {
            True -> {
            jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.JStr("Set Running False"), this, jr.JStr("stopGameDemo")])
            jr.call(jr.get_field(this, "gameCanvas"), "setRunning_1", [jr.JBool(False)])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.call_static("ThreadUtil", "getInstance_0", []), "join_1", [jr.get_field(this, "canvasThread")])
    jr.JNull
}

fn c1_m83__showgamepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("showGamePaintable")
        jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "START"), this, l__m_e_t_h_o_d___n_a_m_e])
        let l_is_default = jr.call_static("J2MEUtil", "isHTML_0", [])
        case jr.truth(case jr.truth(case jr.truth(jr.ne(jr.get_field(this, "gameCanvas"), jr.call_static("NullGameCanvas", "getInstance_0", []))) { True -> case jr.truth(case jr.truth(jr.call(jr.get_field(this, "gameCanvas"), "isRunning_0", [])) { True -> jr.JBool(True) False -> l_is_default }) { True -> jr.JBool(True) False -> jr.get_static("SWTUtil", "isSWT") } False -> jr.JBool(False) }) { True -> jr.not(jr.eq(jr.call(jr.get_field(this, "gameCanvas"), "getType_0", []), jr.get_static("NullGameCanvas", "TYPE"))) False -> jr.JBool(False) }) {
            True -> {
            jr.set_field(this, "gameRunnable", jr.get_field(jr.get_field(this, "gameCanvas"), "gameRunnable"))
            jr.call_static("PreLogUtil", "put_3", [jr.JStr("Showing Game"), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call(this, "setPaintableInterface_1", [jr.get_field(this, "gameCanvas")])
            Nil
        }
            False -> {
            jr.set_field(this, "gameRunnable", jr.call_static("NullWaitGameRunnable", "getInstance_0", []))
            jr.call_static("PreLogUtil", "put_3", [jr.JStr("Not Showing Game"), this, l__m_e_t_h_o_d___n_a_m_e])
            jr.call(this, "setPaintableInterface_1", [jr.call(this, "getDefaultPaintableInterface_0", [])])
            Nil
        }
        }
    jr.JNull
}

fn c1_m84__isreadyforstatechange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    case jr.truth(jr.not(jr.call(jr.get_field(this, "demoGameRunnable"), "isRunning_0", []))) { True -> jr.call(jr.get_field(this, "gameCanvas"), "isInitialized_0", []) False -> jr.JBool(False) }
}

fn c1_m85__processgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameRunnable"), "run_0", [])
        case jr.truth(case jr.truth(jr.not(jr.call(jr.get_field(this, "specialAnimationInterface"), "isComplete_0", []))) { True -> jr.call(this, "isReadyForStateChange_0", []) False -> jr.JBool(False) }) {
            True -> {
            jr.call(jr.get_field(this, "specialAnimationInterface"), "nextFrame_0", [])
            Nil
        }
            False -> Nil
        }
        case jr.truth(case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTimeTNT_0", [])) { True -> jr.call(this, "isReadyForStateChange_0", []) False -> jr.JBool(False) }) {
            True -> {
            jr.call(this, "demoStateChange_0", [])
            Nil
        }
            False -> {
            jr.call(this, "process_0", [])
            Nil
        }
        }
    jr.JNull
}

fn c1_m86__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "START_RUNNABLE"), this, jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "RUN")])
        jr.try_catch(fn() {
            let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_open_g_l_feature_factory = jr.call_static("OpenGLFeatureFactory", "getInstance_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Demo Thread")])
            jr.call_inherited(this, "DemoCanvas", "setCurrentThread_0", [])
            jr.call(this, "setRunning_1", [jr.JBool(True)])
            case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "LOAD_ONDEMAND")])) {
                True -> {
                jr.call(l_progress_canvas, "end_0", [])
                Nil
            }
                False -> {
                jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Demo Thread Running")])
                Nil
            }
            }
            jr.call(jr.get_field(this, "fullScreenUtil"), "initOnRun_2", [this, jr.call_inherited(this, "DemoCanvas", "getCustomCommandListener_0", [])])
            jr.call(this, "initMenu_0", [])
            jr.call(this, "initPostPaint_0", [])
            jr.call(this, "updateDemoState_0", [])
            case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL_AS_GAME_THREAD")])) {
                True -> {
                jr.while_loop("", fn() { case jr.truth(jr.eq(jr.get_field(this, "gameCanvas"), jr.call_static("NullGameCanvas", "getInstance_0", []))) { True -> jr.JBool(True) False -> jr.not(jr.call(jr.get_field(this, "gameCanvas"), "isInitialized_0", [])) } }, fn() {
                    jr.call(jr.get_inherited(this, "DemoCanvas", "loopTimeHelper"), "setStartTimeTNT_0", [])
                    jr.call(this, "processGame_0", [])
                    jr.call_inherited(this, "DemoCanvas", "processLoopSleep_0", [])
                    Nil
                })
                let l_demo_game_runnable = jr.new("DemoGameRunnable", [this])
                let l_current_displayable_factory = jr.call_static("CurrentDisplayableFactory", "getInstance_0", [])
                jr.call(l_current_displayable_factory, "setRunnable_1", [l_demo_game_runnable])
                jr.call(l_current_displayable_factory, "setMyCanvas_1", [this])
                jr.call(jr.call_static("OpenGLThreadUtil", "getInstance_0", []), "onResume_0", [])
                Nil
            }
                False -> Nil
            }
            case jr.truth(case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL_AS_GAME_THREAD")])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
                True -> {
                let l_demo_game_runnable = jr.new("DemoGameRunnable", [this])
                let l_current_displayable_factory = jr.call_static("CurrentDisplayableFactory", "getInstance_0", [])
                jr.call(l_current_displayable_factory, "setRunnable_1", [l_demo_game_runnable])
                jr.call(l_current_displayable_factory, "setMyCanvas_1", [this])
                Nil
            }
                False -> {
                jr.while_loop("", fn() { jr.call_inherited(this, "DemoCanvas", "isRunning_0", []) }, fn() {
                    jr.call(this, "run3_0", [])
                    Nil
                })
                jr.call(this, "end_0", [])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "RUN"), l_e])
            Nil
        } })], fn() { Nil })
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "END_RUNNABLE"), this, jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "RUN")])
    jr.JNull
}

fn c1_m87__run3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoCanvas", "loopTimeHelper"), "setStartTimeTNT_0", [])
        jr.call(this, "processGame_0", [])
        jr.call_inherited(this, "DemoCanvas", "processLoopSleep_0", [])
    jr.JNull
}

fn c1_m88__setrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_running] = jargs
        jr.call_super("RunnableCanvas", this, "setRunning_1", [l_running])
        jr.try_catch(fn() {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_open_g_l_feature_factory = jr.call_static("OpenGLFeatureFactory", "getInstance_0", [])
            case jr.truth(l_running) {
                True -> {
                Nil
            }
                False -> {
                case jr.truth(case jr.truth(case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL")])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) { True -> jr.JBool(True) False -> jr.get_static("SWTUtil", "isSWT") }) {
                    True -> {
                    let l_current_displayable_factory = jr.call_static("CurrentDisplayableFactory", "getInstance_0", [])
                    jr.call(l_current_displayable_factory, "clearRunnable_0", [])
                    jr.call(this, "end_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_inherited(this, "DemoCanvas", "SET_RUNNING"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m91__end(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        jr.call(jr.get_field(this, "baseGameStatistics"), "add_1", [jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_static("DemoCanvas", "BOT_GAME_STATS")]), "append_1", [jr.call(jr.get_field(this, "baseGameStatistics"), "toString_0", [])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "NEW_LINE")]), "toString_0", [])])
        jr.call(jr.get_field(this, "baseGameStatistics"), "init_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "LOAD_ONDEMAND")])) {
            True -> {
            jr.call(l_progress_canvas, "start_0", [])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.JStr("Demo End"), this, jr.get_field(jr.get_inherited(this, "DemoCanvas", "commonStrings"), "RUN")])
        jr.call(this, "close_0", [])
        jr.call(jr.call_static("DisplayChangeEventHandler", "getInstance_0", []), "removeListener_1", [this])
        jr.call(this, "stopGameDemo_0", [])
    jr.JNull
}

fn c1_m92__setgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_state] = jargs
    jr.JNull
}

fn c1_m93__getgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.get_field(this, "gameStateFactory"), "PLAYING_GAME_STATE")
}

fn c1_m94__getgamecanvasrunnableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameCanvas")
}

fn c1_m95__isdemoloading(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_game_canvas = jr.get_field(this, "gameCanvas")
            case jr.truth(jr.eq(l_game_canvas, jr.call_static("NullGameCanvas", "getInstance_0", []))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> case jr.truth(jr.call(l_game_canvas, "isInitialized_0", [])) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_m96__getstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "state"))
}

fn c1_m97__setstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_state] = jargs
    let l_state = jr.as_i(l_state)
        jr.set_field(this, "state", jr.as_i(l_state))
    jr.JNull
}

fn c1_m98__ishighscoresubmitted(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoCanvas", "logUtil"), "putF_3", [jr.JStr("Wow the AI got a high score!"), this, jr.JStr("isHighScoreSubmitted")])
    jr.JBool(False)
}

fn c1_m99__getrealhighscorespaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "realHighScoresPaintable")
}

fn c1_m100__setspecialanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_special_animation_interface] = jargs
        jr.call(l_special_animation_interface, "setFrame_1", [jr.JInt(0)])
        jr.set_field(this, "specialAnimationInterface", l_special_animation_interface)
    jr.JNull
}

fn c1_m101__getspecialanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "specialAnimationInterface")
}

fn c1_m102__setpaintableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_paintable_interface] = jargs
        jr.set_field(this, "paintableInterface", l_paintable_interface)
    jr.JNull
}

fn c1_m103__getpaintableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "paintableInterface")
}

fn c1_m104__setdefaultpaintableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_default_paintable_interface] = jargs
        jr.set_field(this, "defaultPaintableInterface", l_default_paintable_interface)
    jr.JNull
}

fn c1_m105__getdefaultpaintableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "defaultPaintableInterface")
}

fn c1_m106__gethighscoresfactoryinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "highScoresFactoryInterface")
}

fn c1_m107__setmenuinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_menu_input_processor] = jargs
        jr.set_field(this, "menuInputProcessor", l_menu_input_processor)
    jr.JNull
}

fn c1_m108__getmenuinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "menuInputProcessor")
}

fn c1_m109__getmenuform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "menuForm")
}

fn c1_m110__setmenuform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_menu_form] = jargs
        jr.set_field(this, "menuForm", l_menu_form)
    jr.JNull
}

fn c1_m111__isinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "initialized")
}

fn c1_m112__getoverlaypaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "overlayPaintable")
}

fn c1_m113__setbasicgamedemopaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_game_demo_paintable] = jargs
        jr.set_field(this, "basicGameDemoPaintable", l_basic_game_demo_paintable)
    jr.JNull
}

fn c1_m114__getbasicgamedemopaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicGameDemoPaintable")
}

fn c1_m115__settempwait(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_temp_wait] = jargs
    let l_temp_wait = jr.as_i(l_temp_wait)
        jr.set_field(this, "tempWait", jr.as_i(l_temp_wait))
    jr.JNull
}

fn c1_m116__gettempwait(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "tempWait"))
}

fn c1_m117__issinglethread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    case jr.truth(jr.call(jr.call_static("OpenGLFeatureUtil", "getInstance_0", []), "isAnyThreed_0", [])) { True -> jr.JBool(True) False -> jr.get_static("SWTUtil", "isSWT") }
}

fn c1_m118__isrunninginanotherthread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_open_g_l_feature_factory = jr.call_static("OpenGLFeatureFactory", "getInstance_0", [])
            case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL_AS_GAME_THREAD")])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.call_inherited(this, "DemoCanvas", "isRunning_0", []))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m119__getgameinitializationinterfacefactoryinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameInitializationInterfaceFactoryInterface")
}

fn c1_m121__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("DemoCanvas", "TYPE"))
}

fn c1_m122__gettitle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("RunnableCanvas", this, "getTitle_0", [])
}

fn c1_m123__ispaused(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("RunnableCanvas", this, "isPaused_0", [])
}

fn c1_jinit35(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_command_listener, l_high_scores_factory_interface, l_paintable, l_overlay_paintable, l_game_initialization_interface_factory_interface, l_is_continue] = jargs
        jr.super_init("RunnableCanvas", this, [l_command_listener, jr.get_field(jr.call_static("CurrentDisplayableFactory", "getInstance_0", []), "DEFAULT_CHILD_NAME_LIST"), jr.JBool(True)])
        c1_jfields(this)
        jr.set_field(this, "abeClientInformation", l_abe_client_information)
        jr.call_inherited(this, "DemoCanvas", "setWait_1", [jr.get_field(jr.call_static("NullWaitGameRunnable", "getInstance_0", []), "WAIT")])
        jr.set_field(this, "gameInitializationInterfaceFactoryInterface", l_game_initialization_interface_factory_interface)
        jr.call(jr.call_static("GameInitializationUtil", "getInstance_0", []), "initDemo_3", [l_abe_client_information, this, l_game_initialization_interface_factory_interface])
        jr.call(jr.call_static("ResizableListenerHandler", "getInstance_0", []), "fireEvent_1", [jr.JBool(False)])
        jr.set_field(this, "overlayPaintable", l_overlay_paintable)
        jr.set_field(this, "highScoresFactoryInterface", l_high_scores_factory_interface)
        jr.call(this, "setDefaultPaintableInterface_1", [l_paintable])
        jr.call(this, "setPaintableInterface_1", [jr.call(this, "getDefaultPaintableInterface_0", [])])
        case jr.truth(l_is_continue) {
            True -> {
            jr.call_inherited(this, "DemoCanvas", "addCommand_1", [jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "CONTINUE_COMMAND")])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.call(jr.call_static("ChangedGameFeatureListener", "getInstance_0", []), "isChangedFeature_1", [jr.get_field(jr.call_static("GameFeatureFactory", "getInstance_0", []), "SOUND")])) {
            True -> {
            jr.call(this, "mediaInit_0", [])
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "demoGameRunnable", jr.new("DemoGameStartupRunnable", [this]))
        jr.call(jr.call_static("DisplayChangeEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoCanvas",
        "org.allbinary.game.displayable.canvas.DemoCanvas",
        "RunnableCanvas",
        ["GameCanvasRunnableInterface", "MenuListener", "DisplayChangeEventListener", "DemoPaintableInterface"],
        False,
        [#("basicColorFactory", jr.JNull), #("myCommandsFactory", jr.JNull), #("gameAdStateFactory", jr.JNull), #("gameInputStrings", jr.JNull), #("gameStateFactory", jr.JNull), #("threadFactoryUtil", jr.JNull), #("formUtil", jr.JNull), #("fullscreenPaintable", jr.JNull), #("basicGameDemoPaintable", jr.JNull), #("specialAnimationInterface", jr.JNull), #("paintedSpecialAnimationInterface", jr.JNull), #("fullScreenUtil", jr.JNull), #("gameCanvas", jr.JNull), #("highScoresHelper", jr.JNull), #("realHighScoresPaintable", jr.JNull), #("highScoresPaintable", jr.JNull), #("state", jr.JInt(0)), #("canvasThread", jr.JNull), #("timeDelayHelper", jr.JNull), #("basicColor", jr.JNull), #("abeClientInformation", jr.JNull), #("highScoresFactoryInterface", jr.JNull), #("menuInputProcessor", jr.JNull), #("menuForm", jr.JNull), #("gameInitializationInterfaceFactoryInterface", jr.JNull), #("initialized", jr.JBool(False)), #("demoGameRunnable", jr.JNull), #("defaultPaintableInterface", jr.JNull), #("paintableInterface", jr.JNull), #("overlayPaintable", jr.JNull), #("progressPaintable", jr.JNull), #("tempWait", jr.JInt(0)), #("inputToGameKeyMapping", jr.JNull), #("gameRunnable", jr.JNull), #("isSingleKeyRepeatableProcessing", jr.JBool(False)), #("NONE", jr.JNull), #("gameKeyEventFactory", jr.JNull), #("lastKeyNotMapped", jr.JInt(0)), #("SET_STATE", jr.JNull), #("baseGameStatistics", jr.JNull)],
        [#("id", jr.as_i(jr.JInt(0))), #("BOT_GAME_STATS", jr.JStr("Bot Game Statistics: ")), #("TYPE", jr.as_i(jr.JInt(3)))],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m36__onevent), 
            jr.Method("onDisplayChangeEvent_1", ["DisplayChangeEvent"], False, c1_m37__ondisplaychangeevent), 
            jr.Method("getCustomCommands_0", [], False, c1_m38__getcustomcommands), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m39__initcommands), 
            jr.Method("initPostPaint_0", [], False, c1_m40__initpostpaint), 
            jr.Method("mediaInit_0", [], False, c1_m41__mediainit), 
            jr.Method("itemStateChanged_1", ["LcduiItem"], False, c1_m42__itemstatechanged), 
            jr.Method("initMenu_0", [], False, c1_m43__initmenu), 
            jr.Method("open_0", [], False, c1_m44__open), 
            jr.Method("close_0", [], False, c1_m45__close), 
            jr.Method("getSourceId_0", [], False, c1_m47__getsourceid), 
            jr.Method("keyPressed_1", ["int"], False, c1_m48__keypressed), 
            jr.Method("keyReleased_1", ["int"], False, c1_m49__keyreleased), 
            jr.Method("keyRepeated_1", ["int"], False, c1_m50__keyrepeated), 
            jr.Method("keyPressedByDevice_2", ["int", "int"], False, c1_m51__keypressedbydevice), 
            jr.Method("keyReleasedByDevice_2", ["int", "int"], False, c1_m52__keyreleasedbydevice), 
            jr.Method("keyRepeatedByDevice_2", ["int", "int"], False, c1_m54__keyrepeatedbydevice), 
            jr.Method("addGameKeyEvent_2", ["int", "boolean"], False, c1_m58__addgamekeyevent), 
            jr.Method("removeGameKeyEvent_2", ["int", "boolean"], False, c1_m59__removegamekeyevent), 
            jr.Method("pause_0", [], False, c1_m60__pause), 
            jr.Method("unPause_0", [], False, c1_m61__unpause), 
            jr.Method("isPausable_0", [], False, c1_m62__ispausable), 
            jr.Method("isGameOver_0", [], False, c1_m63__isgameover), 
            jr.Method("setLoadStateHashtable_1", ["ABHashtable"], False, c1_m64__setloadstatehashtable), 
            jr.Method("getLoadStateHashtable_0", [], False, c1_m65__getloadstatehashtable), 
            jr.Method("getCurrentStateHashtable_0", [], False, c1_m66__getcurrentstatehashtable), 
            jr.Method("setHighScoreSubmitted_1", ["boolean"], False, c1_m67__sethighscoresubmitted), 
            jr.Method("paint_1", ["Graphics"], False, c1_m68__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m69__paintthreed), 
            jr.Method("processGameOver_0", [], False, c1_m70__processgameover), 
            jr.Method("demoStateChange_0", [], False, c1_m71__demostatechange), 
            jr.Method("updateDemoState_0", [], False, c1_m73__updatedemostate), 
            jr.Method("getNextRandom_0", [], False, c1_m74__getnextrandom), 
            jr.Method("createGameLayerManager_1", ["int"], False, c1_m75__creategamelayermanager), 
            jr.Method("createRunnable_1", ["int"], False, c1_m76__createrunnable), 
            jr.Method("create_0", [], False, c1_m77__create), 
            jr.Method("start_0", [], False, c1_m78__start), 
            jr.Method("preDemoProcess_0", [], False, c1_m79__predemoprocess), 
            jr.Method("process_0", [], False, c1_m80__process), 
            jr.Method("startDemoGame_0", [], False, c1_m81__startdemogame), 
            jr.Method("stopGameDemo_0", [], False, c1_m82__stopgamedemo), 
            jr.Method("showGamePaintable_0", [], False, c1_m83__showgamepaintable), 
            jr.Method("isReadyForStateChange_0", [], False, c1_m84__isreadyforstatechange), 
            jr.Method("processGame_0", [], False, c1_m85__processgame), 
            jr.Method("run_0", [], False, c1_m86__run), 
            jr.Method("run3_0", [], False, c1_m87__run3), 
            jr.Method("setRunning_1", ["boolean"], False, c1_m88__setrunning), 
            jr.Method("end_0", [], False, c1_m91__end), 
            jr.Method("setGameState_1", ["GameState"], False, c1_m92__setgamestate), 
            jr.Method("getGameState_0", [], False, c1_m93__getgamestate), 
            jr.Method("getGameCanvasRunnableInterface_0", [], False, c1_m94__getgamecanvasrunnableinterface), 
            jr.Method("isDemoLoading_0", [], False, c1_m95__isdemoloading), 
            jr.Method("getState_0", [], False, c1_m96__getstate), 
            jr.Method("setState_1", ["int"], False, c1_m97__setstate), 
            jr.Method("isHighScoreSubmitted_0", [], False, c1_m98__ishighscoresubmitted), 
            jr.Method("getRealHighScoresPaintable_0", [], False, c1_m99__getrealhighscorespaintable), 
            jr.Method("setSpecialAnimationInterface_1", ["SpecialAnimation"], False, c1_m100__setspecialanimationinterface), 
            jr.Method("getSpecialAnimationInterface_0", [], False, c1_m101__getspecialanimationinterface), 
            jr.Method("setPaintableInterface_1", ["PaintableInterface"], False, c1_m102__setpaintableinterface), 
            jr.Method("getPaintableInterface_0", [], False, c1_m103__getpaintableinterface), 
            jr.Method("setDefaultPaintableInterface_1", ["Paintable"], False, c1_m104__setdefaultpaintableinterface), 
            jr.Method("getDefaultPaintableInterface_0", [], False, c1_m105__getdefaultpaintableinterface), 
            jr.Method("getHighScoresFactoryInterface_0", [], False, c1_m106__gethighscoresfactoryinterface), 
            jr.Method("setMenuInputProcessor_1", ["BasicMenuInputProcessor"], False, c1_m107__setmenuinputprocessor), 
            jr.Method("getMenuInputProcessor_0", [], False, c1_m108__getmenuinputprocessor), 
            jr.Method("getMenuForm_0", [], False, c1_m109__getmenuform), 
            jr.Method("setMenuForm_1", ["ScrollSelectionForm"], False, c1_m110__setmenuform), 
            jr.Method("isInitialized_0", [], False, c1_m111__isinitialized), 
            jr.Method("getOverlayPaintable_0", [], False, c1_m112__getoverlaypaintable), 
            jr.Method("setBasicGameDemoPaintable_1", ["StatePaintable"], False, c1_m113__setbasicgamedemopaintable), 
            jr.Method("getBasicGameDemoPaintable_0", [], False, c1_m114__getbasicgamedemopaintable), 
            jr.Method("setTempWait_1", ["int"], False, c1_m115__settempwait), 
            jr.Method("getTempWait_0", [], False, c1_m116__gettempwait), 
            jr.Method("isSingleThread_0", [], False, c1_m117__issinglethread), 
            jr.Method("isRunningInAnotherThread_0", [], False, c1_m118__isrunninginanotherthread), 
            jr.Method("getGameInitializationInterfaceFactoryInterface_0", [], False, c1_m119__getgameinitializationinterfacefactoryinterface), 
            jr.Method("getType_0", [], False, c1_m121__gettype), 
            jr.Method("getTitle_0", [], False, c1_m122__gettitle), 
            jr.Method("isPaused_0", [], False, c1_m123__ispaused), 
            jr.Method("jinit_7", ["AbeClientInformationInterface", "CommandListener", "HighScoresFactoryInterface", "Paintable", "InitUpdatePaintable", "BasicBuildGameInitializerFactory", "boolean"], False, c1_jinit35)],
        c1_jfields,
        c1_jclinit,
    )
}

