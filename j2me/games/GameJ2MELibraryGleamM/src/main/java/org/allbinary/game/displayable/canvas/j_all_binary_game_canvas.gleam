// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryGameCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicColorFactory", jr.call_static("BasicColorFactory", "getInstance_0", []))
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "touchFeatureFactory", jr.call_static("TouchFeatureFactory", "getInstance_0", []))
    jr.set_field(this, "openGLFeatureFactory", jr.call_static("OpenGLFeatureFactory", "getInstance_0", []))
    jr.set_field(this, "touchButtonFactory", jr.call_static("TouchButtonFactory", "getInstance_0", []))
    jr.set_field(this, "gameAdStateFactory", jr.call_static("GameAdStateFactory", "getInstance_0", []))
    jr.set_field(this, "gameStrings", jr.call_static("GameStrings", "getInstance_0", []))
    jr.set_field(this, "gameInputStrings", jr.call_static("GameInputStrings", "getInstance_0", []))
    jr.set_field(this, "gameStateFactory", jr.call_static("GameStateFactory", "getInstance_0", []))
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.set_field(this, "gameTickDisplayInfoSingleton", jr.call_static("GameTickDisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "gameRunnable", jr.new("GameCanvasRunnable", [this]))
    jr.set_field(this, "gamePauseRunnable", jr.new("GameCanvasPauseRunnable", [this]))
    jr.set_field(this, "formUtil", jr.call_static("FormUtil", "getInstance_0", []))
    jr.set_field(this, "myFormUtil", jr.call_static("MyFormUtil", "getInstance_0", []))
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "gameSpecificPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "sensorGameUpdateProcessor", jr.new("SingleSensorGameUpdateProcessor", []))
    jr.set_field(this, "endGameInfo", jr.new("EndGameInfo", []))
    jr.set_field(this, "startIntermissionInterface", jr.new("Intermission", []))
    jr.set_field(this, "endLevelIntermissionInterface", jr.new("Intermission", []))
    jr.set_field(this, "gameLayerManager", jr.call_static("AllBinaryGameLayerManager", "getNullInstance_0", []))
    jr.set_field(this, "gameState", jr.get_field(jr.get_field(this, "gameStateFactory"), "NO_GAME_STATE"))
    jr.set_field(this, "gameStateTimeHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.set_field(this, "realHighScoresPaintable", jr.new("HighScoresPaintable", []))
    jr.set_field(this, "highScoresPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "localPlayerGameInputList", jr.new("BasicArrayListD", []))
    jr.set_field(this, "hashtable", jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "stdUtil"), "NULL_TABLE"))
    jr.set_field(this, "gameInitializationInterfaceFactoryInterface", jr.get_static("BasicBuildGameInitializerFactory", "NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY"))
    jr.set_field(this, "touchButtonsPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "touchPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "cheatProcessor", jr.call_static("NoPlayerGameInput", "getInstance_0", []))
    jr.set_field(this, "gameInputProcessor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "endGameProcessor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "realEndGameProcessor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "startIntermissionProcessor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "realStartIntermissionProcessor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "endGamePaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "endGameStatePaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "nonBotPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "intermissionPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "startIntermissionPaintable", jr.call_static("NullInitUpdatePaintable", "getInstance_0", []))
    jr.set_field(this, "mainStateProcessor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "processGameProcessor", jr.call_static("Processor", "getInstance_0", []))
    jr.set_field(this, "mainMenuInputProcessor", jr.call_static("NoMenuInputProcessor", "getInstance_0", []))
    jr.set_field(this, "popupMenuInputProcessor", jr.call_static("NoMenuInputProcessor", "getInstance_0", []))
    jr.set_field(this, "menuInputProcessor", jr.call_static("NoMenuInputProcessor", "getInstance_0", []))
    jr.set_field(this, "menuForm", jr.call_static("ScrollSelectionForm", "getNullScrollSelectionForm_0", []))
    jr.set_field(this, "formPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "openMenuPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "menuPaintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "currentTouchInputFactory", jr.call_static("NoButtonsTouchInputFactory", "getInstance_0", []))
    jr.set_field(this, "colorFillPaintable", jr.call(jr.call_static("ColorFillPaintableFactory", "getInstance_0", []), "getInstance_2", [jr.get_field(jr.get_field(this, "basicColorFactory"), "BLACK"), jr.JBool(True)]))
    jr.set_field(this, "baseGameStatistics", jr.call_static("GameStatisticsFactory", "getInstance_0", []))
    jr.set_field(this, "primaryPlayerQueue", jr.call_static("PrimaryPlayerQueueFactory", "getInstance_0", []))
    jr.set_field(this, "secondaryPlayerQueue", jr.call_static("SecondaryPlayerQueueFactory", "getInstance_0", []))
    jr.set_field(this, "BUILD_GAME", jr.JStr("buildGame"))
    jr.set_field(this, "gameTypeFactory", jr.call_static("GameTypeFactory", "getInstance_0", []))
    jr.set_field(this, "screenCapture", jr.call_static("ScreenCaptureFactory", "getInstance_0", []))
    jr.set_field(this, "basicMotionGesturesHandler", jr.call_static("BasicMotionGesturesHandler", "getInstance_0", []))
    jr.set_field(this, "gameKeyEventHandler", jr.call_static("GameKeyEventHandler", "getInstance_0", []))
    jr.set_field(this, "progressPaintable", jr.call_static("ProgressCanvasFactory", "getLazyInstance_0", []))
    jr.set_field(this, "gameCanvasStartListener", jr.get_static("NullDemoPaintable", "NULL_DEMO_PAINTABLE"))
    jr.set_field(this, "rawGameInputProcessor", jr.new("GameCanvasInputProcessor", [this]))
    jr.set_field(this, "rawInputProcessor", jr.new("FormInputProcessor", [this]))
    jr.set_field(this, "inputProcessor", jr.call(this, "getRawGameInputProcessor_0", []))
    jr.set_field(this, "YIELD_SLEEP", jr.as_j(jr.JLong(100)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m77__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.try_catch(fn() {
            let l_font = jr.call(l_graphics, "getFont_0", [])
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "START")]), "append_1", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "canvasStrings"), "FD_WIDTH")]), "appendint_1", [jr.call_static("MyFontProcessor", "defaultCharWidth_1", [l_font])]), "append_1", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "canvasStrings"), "FD_HEIGHT")]), "appendint_1", [jr.call(l_font, "getHeight_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "canvasStrings"), "UPDATE_MEASUREMENT")])
            jr.set_field(this, "fontHeightP", jr.as_i(jr.call(l_font, "getHeight_0", [])))
            jr.call(jr.get_field(this, "myFormUtil"), "updateMeasurement_1", [l_graphics])
            let l_popup_menu_rectangle = jr.call(jr.get_field(this, "myFormUtil"), "getPopupMenuRectangle_0", [])
            let l_basic_popup_menu_paintable = jr.call(this, "getOpenMenuPaintable_0", [])
            jr.call(l_basic_popup_menu_paintable, "init_1", [l_popup_menu_rectangle])
            case jr.truth(jr.ne(jr.call(this, "getPopupMenuInputProcessor_0", []), jr.call_static("NoMenuInputProcessor", "getInstance_0", []))) {
                True -> {
                let l_popup_menu_input_processor = jr.call(this, "getPopupMenuInputProcessor_0", [])
                jr.call(l_popup_menu_input_processor, "init_1", [l_popup_menu_rectangle])
                Nil
            }
                False -> Nil
            }
            jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "canvasStrings"), "ON_DISPLAY_CHANGE_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m78__getingamemenubehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("InGameMenuBehavior", "getInstance_0", [])
}

fn c1_m79__setcurrentthread(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
            True -> {
            jr.call_super("RunnableCanvas", this, "setCurrentThreadFake_0", [])
            Nil
        }
            False -> {
            jr.call_super("RunnableCanvas", this, "setCurrentThread_0", [])
            Nil
        }
        }
    jr.JNull
}

fn c1_m80__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m81__ondisplaychangeevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display_change_event] = jargs
        jr.try_catch(fn() {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "START")]), "append_1", [jr.call(jr.call_static("DisplayInfoSingleton", "getInstance_0", []), "toString_0", [])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "canvasStrings"), "UPDATE_MEASUREMENT")])
            jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
            jr.call(jr.get_field(this, "menuBehavior"), "onDisplayChangeEvent_2", [this, l_display_change_event])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "canvasStrings"), "ON_DISPLAY_CHANGE_EVENT"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m82__updatemenufromevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_display_change_event] = jargs
        let l_form_type = jr.call(jr.call_static("FormTypeFactory", "getInstance_0", []), "getFormType_0", [])
        let l_rectangle = jr.call(jr.get_field(this, "formUtil"), "createFormRectangle_0", [])
        jr.call(jr.get_field(this, "menuForm"), "init_2", [l_rectangle, l_form_type])
        case jr.truth(jr.ne(jr.get_field(this, "currentTouchInputFactory"), jr.call_static("NoButtonsTouchInputFactory", "getInstance_0", []))) {
            True -> {
            jr.call(jr.get_field(this, "touchButtonFactory"), "toggle_2", [jr.call(this, "isPaused_0", []), jr.call(jr.get_field(this, "currentTouchInputFactory"), "getList_0", [])])
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m83__processsleep(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("RunnableCanvas", this, "processSleep_0", [])
        case jr.truth(jr.call_static("AllBinaryMediaManager", "update_0", [])) {
            True -> {
            case jr.truth(jr.not(jr.call(jr.get_field(this, "primaryPlayerQueue"), "process_0", []))) {
                True -> {
                jr.call(jr.get_field(this, "secondaryPlayerQueue"), "process_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.ne(jr.call(jr.get_field(this, "menuInputProcessor"), "processInputList_0", []), jr.JInt(-1))) {
            True -> {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "runnableCanvasRefreshHelper"), "process_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m84__initpopupmenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_field(this, "popupMenuInputProcessor"), jr.call_static("NoMenuInputProcessor", "getInstance_0", []))) {
            True -> {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_popup_menu_rectangle = jr.call(jr.get_field(this, "myFormUtil"), "getPopupMenuRectangle_0", [])
            case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.get_field(this, "touchFeatureFactory"), "TOUCH_ENABLED")])) {
                True -> {
                jr.call(this, "setOpenMenuPaintable_1", [jr.new("BasicPopupMenuPaintable", [l_popup_menu_rectangle, jr.call(jr.get_field(this, "gameLayerManager"), "getBackgroundBasicColor_0", []), jr.call(jr.get_field(this, "gameLayerManager"), "getForegroundBasicColor_0", [])])])
                jr.call(this, "setPopupMenuInputProcessor_1", [jr.new("PopupMenuInputProcessor", [jr.new("BasicArrayListD", []), jr.JInt(-1), this, l_popup_menu_rectangle])])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> {
            Nil
        }
        }
    jr.JNull
}

fn c1_m85__initmenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "menuBehavior"), "initMenu_1", [this])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "EXCEPTION"), this, jr.JStr("initMenu"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m86__initmenu2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "closeMenu_0", [])
        let l_form_type = jr.call(jr.call_static("FormTypeFactory", "getInstance_0", []), "getFormType_0", [])
        let l_game_limited_command_text_item_array_factory = jr.call_static("GameLimitedCommandTextItemArrayFactory", "getInstance_0", [])
        let l_command_text_item_array_factory = jr.call(l_game_limited_command_text_item_array_factory, "getCommandTextItemArrayFactory_0", [])
        let l_items = jr.call(l_command_text_item_array_factory, "getInstance_3", [jr.call_inherited(this, "AllBinaryGameCanvas", "getCommandStack_0", []), jr.call(jr.get_field(this, "gameLayerManager"), "getBackgroundBasicColor_0", []), jr.call(jr.get_field(this, "gameLayerManager"), "getForegroundBasicColor_0", [])])
        let l_rectangle = jr.call(jr.get_field(this, "formUtil"), "createFormRectangle_0", [])
        jr.call(this, "setMenuForm_1", [jr.call_static("CommandCurrentSelectionFormFactory", "getInstance_8", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), l_items, l_rectangle, l_form_type, jr.JInt(25), jr.JBool(False), jr.call(jr.get_field(this, "gameLayerManager"), "getBackgroundBasicColor_0", []), jr.call(jr.get_field(this, "gameLayerManager"), "getForegroundBasicColor_0", [])])])
        let l_scroll_selection_form = jr.call(this, "getMenuForm_0", [])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.get_field(this, "touchFeatureFactory"), "TOUCH_ENABLED")])) {
            True -> {
            jr.set_field(this, "mainMenuInputProcessor", jr.new("PopupCommandFormInputProcessor", [jr.new("BasicArrayListD", []), jr.JInt(-1), this, l_scroll_selection_form, jr.call(this, "getPopupMenuInputProcessor_0", [])]))
            Nil
        }
            False -> {
            Nil
        }
        }
        jr.call(this, "setMenuInputProcessor_1", [jr.call(this, "getPopupMenuInputProcessor_0", [])])
        case jr.truth(jr.ne(l_scroll_selection_form, jr.call_static("ScrollSelectionFormNoneFactory", "getInstance_0", []))) {
            True -> {
            jr.call(this, "setFormPaintable_1", [jr.new("FormPaintable", [l_scroll_selection_form])])
            Nil
        }
            False -> {
            Nil
        }
        }
        jr.call(this, "closeMenu_0", [])
    jr.JNull
}

fn c1_m87__updatemenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "menuBehavior"), "updateMenu_1", [this])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "EXCEPTION"), this, jr.JStr("initMenu"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m88__updatemenu2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_scroll_selection_form = jr.call(this, "getMenuForm_0", [])
        jr.call(l_scroll_selection_form, "deleteAll_0", [])
        let l_game_limited_command_text_item_array_factory = jr.call_static("GameLimitedCommandTextItemArrayFactory", "getInstance_0", [])
        let l_command_text_item_array_factory = jr.call(l_game_limited_command_text_item_array_factory, "getCommandTextItemArrayFactory_0", [])
        let l_items = jr.call(l_command_text_item_array_factory, "getInstance_3", [jr.call_inherited(this, "AllBinaryGameCanvas", "getCommandStack_0", []), jr.call(jr.get_field(this, "gameLayerManager"), "getBackgroundBasicColor_0", []), jr.call(jr.get_field(this, "gameLayerManager"), "getForegroundBasicColor_0", [])])
        let l_size = jr.as_i(jr.alen(l_items))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_scroll_selection_form, "append_1", [jr.aget(l_items, jr.get(l_index))])
            Nil
        })
            Nil
        }
        let l_form_type = jr.call(jr.call_static("FormTypeFactory", "getInstance_0", []), "getFormType_0", [])
        let l_rectangle = jr.call(jr.get_field(this, "formUtil"), "createFormRectangle_0", [])
        jr.call(l_scroll_selection_form, "init_2", [l_rectangle, l_form_type])
    jr.JNull
}

fn c1_m89__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameBehavior"), "pause_1", [this])
        jr.call(this, "closeMenu_0", [])
        jr.call_super("RunnableCanvas", this, "pause_0", [])
        jr.call(jr.get_field(this, "touchButtonFactory"), "toggle_2", [jr.call(this, "isPaused_0", []), jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", [])])
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "tsUtil"), "gc_0", [])
    jr.JNull
}

fn c1_m90__unpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "gameStrings"), "UNPAUSE")])
        jr.call(this, "closeMenu_0", [])
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "tsUtil"), "gc_0", [])
        jr.call_super("RunnableCanvas", this, "unPause_0", [])
        jr.call(jr.get_field(this, "touchButtonFactory"), "toggle_2", [jr.call(this, "isPaused_0", []), jr.call(jr.call_static("BasicArrayListUtil", "getInstance_0", []), "getImmutableInstance_0", [])])
        jr.call(jr.get_field(this, "gameBehavior"), "unPause_1", [this])
    jr.JNull
}

fn c1_m91__ispausable(this: jr.V, jargs: List(jr.V)) -> jr.V {
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

fn c1_m92__popupmenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "menuBehavior"), "popupMenu_1", [this])
    jr.JNull
}

fn c1_m93__popupmenu2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "primaryPlayerQueue"), "add_1", [jr.call_static("SelectSound", "getInstance_0", [])])
        jr.call(this, "setMenuPaintable_1", [jr.call(this, "getFormPaintable_0", [])])
        jr.call(this, "setMenuInputProcessor_1", [jr.get_field(this, "mainMenuInputProcessor")])
        jr.call(jr.get_field(this, "basicMotionGesturesHandler"), "addListenerInterface_1", [jr.get_field(this, "mainMenuInputProcessor")])
        jr.call(jr.get_field(this, "gameKeyEventHandler"), "addListener_1", [jr.get_field(this, "mainMenuInputProcessor")])
    jr.JNull
}

fn c1_m94__togglemenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "gameStrings"), "TOGGLE_MENU")])
        case jr.truth(jr.eq(jr.call(this, "getMenuPaintable_0", []), jr.call(this, "getOpenMenuPaintable_0", []))) {
            True -> {
            jr.call(this, "pause_0", [])
            jr.call(this, "updateMenu_0", [])
            jr.call(this, "popupMenu_0", [])
            Nil
        }
            False -> case jr.truth(jr.eq(jr.call(this, "getMenuPaintable_0", []), jr.call(this, "getFormPaintable_0", []))) {
            True -> {
            jr.call(jr.get_field(this, "primaryPlayerQueue"), "add_1", [jr.call_static("SelectSound", "getInstance_0", [])])
            jr.call(this, "unPause_0", [])
            Nil
        }
            False -> Nil
        }
        }
    jr.JNull
}

fn c1_m95__closemenu(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "menuBehavior"), "closeMenu_1", [this])
    jr.JNull
}

fn c1_m96__closemenu2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setMenuPaintable_1", [jr.call(this, "getOpenMenuPaintable_0", [])])
        jr.call(jr.get_field(this, "basicMotionGesturesHandler"), "removeListener_1", [jr.get_field(this, "mainMenuInputProcessor")])
        jr.call(jr.get_field(this, "gameKeyEventHandler"), "removeListener_1", [jr.get_field(this, "mainMenuInputProcessor")])
        jr.call(this, "setMenuInputProcessor_1", [jr.call(this, "getPopupMenuInputProcessor_0", [])])
    jr.JNull
}

fn c1_m97__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "basicMotionGesturesHandler"), "addListenerInterface_1", [jr.get_field(this, "menuInputProcessor")])
        jr.call(jr.get_field(this, "gameKeyEventHandler"), "addListener_1", [jr.get_field(this, "menuInputProcessor")])
    jr.JNull
}

fn c1_m98__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "basicMotionGesturesHandler"), "removeListener_1", [jr.get_field(this, "menuInputProcessor")])
        jr.call(jr.get_field(this, "gameKeyEventHandler"), "removeListener_1", [jr.get_field(this, "menuInputProcessor")])
        jr.call(jr.get_field(this, "primaryPlayerQueue"), "clear_0", [])
        jr.call(jr.get_field(this, "secondaryPlayerQueue"), "clear_0", [])
    jr.JNull
}

fn c1_m99__processorinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setMainStateProcessor_1", [jr.call_static("Processor", "getInstance_0", [])])
        jr.call(this, "setProcessGameProcessorInit_0", [])
    jr.JNull
}

fn c1_m100__setprocessgameprocessorinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setProcessGameProcessor_1", [jr.new("GameProcessor", [this])])
    jr.JNull
}

fn c1_m101__initspecialpaint(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "menuBehavior"), "initSpecialPaint_1", [this])
    jr.JNull
}

fn c1_m102__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_layer_manager, l_buffered] = jargs
        jr.call(jr.get_field(this, "gameStateTimeHelper"), "setStartTimeTNT_0", [])
        jr.call(this, "setHighScoreSubmitted_1", [jr.JBool(False)])
        jr.call(this, "setLayerManager_1", [l_game_layer_manager])
        case jr.truth(jr.not(l_buffered)) {
            True -> {
            let l__b_u_f_f___m_e_s_s_a_g_e = jr.JStr("XXX Not Buffering Causes Concurrency Issues XXX")
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [l__b_u_f_f___m_e_s_s_a_g_e, this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "CONSTRUCTOR")])
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Buffering is disabled")]))
            Nil
        }
        }
        jr.call(this, "setGameInputProcessor_1", [jr.call_static("Processor", "getInstance_0", [])])
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.call_static("GameFeatureFactory", "getInstance_0", []), "CHEATING")])) {
            True -> {
            jr.set_field(this, "isCheating", jr.JBool(True))
            jr.set_field(this, "cheatProcessor", jr.new("CheatGameInputProcessor", [this]))
            jr.call(jr.get_field(this, "gameKeyEventHandler"), "addListener_1", [jr.get_field(this, "cheatProcessor")])
            Nil
        }
            False -> {
            jr.set_field(this, "isCheating", jr.JBool(False))
            jr.set_field(this, "cheatProcessor", jr.call_static("NoPlayerGameInput", "getInstance_0", []))
            Nil
        }
        }
        jr.set_field(this, "realEndGameProcessor", jr.new("EndGameProcessor", [this]))
        jr.call(this, "setEndGameProcessor_1", [jr.call_static("Processor", "getInstance_0", [])])
        jr.set_field(this, "realStartIntermissionProcessor", jr.new("StartIntermissionProcessor", [this]))
        jr.set_field(this, "startIntermissionProcessor", jr.call_static("Processor", "getInstance_0", []))
        jr.call(this, "setEndGameStatePaintable_1", [jr.new("EndGamePaintable", [this])])
        jr.call(this, "setEndGamePaintable_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
        jr.call(this, "setIntermissionPaintable_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
        jr.call(jr.call(this, "getStartIntermissionInterface_0", []), "setListener_1", [this])
    jr.JNull
}

fn c1_m103__notifyintermission(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_enable] = jargs
        case jr.truth(l_enable) {
            True -> {
            jr.set_field(this, "startIntermissionProcessor", jr.get_field(this, "realStartIntermissionProcessor"))
            Nil
        }
            False -> {
            jr.set_field(this, "startIntermissionProcessor", jr.call_static("Processor", "getInstance_0", []))
            Nil
        }
        }
        case jr.truth(l_enable) {
            True -> {
            jr.call(this, "setIntermissionPaintable_1", [jr.call(this, "getStartIntermissionPaintable_0", [])])
            Nil
        }
            False -> {
            jr.call(this, "setIntermissionPaintable_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
            Nil
        }
        }
    jr.JNull
}

fn c1_m104__mediainit(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "NOT_IMPLEMENTED"), this])
    jr.JNull
}

fn c1_m105__initconfigurable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Setting Configurables")])
        jr.call(jr.call_static("GameInitializationUtil", "getInstance_0", []), "initGame_3", [l_abe_client_information, this, jr.get_field(this, "gameInitializationInterfaceFactoryInterface")])
        let l_game_feature_factory = jr.call_static("GameFeatureFactory", "getInstance_0", [])
        let l_changed_game_feature_listener = jr.call_static("ChangedGameFeatureListener", "getInstance_0", [])
        case jr.truth(jr.call(l_changed_game_feature_listener, "isChangedFeature_1", [jr.get_field(l_game_feature_factory, "SOUND")])) {
            True -> {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Sound Changing To: ")]), "appendboolean_1", [jr.call(l_features, "isFeature_1", [jr.get_field(l_game_feature_factory, "SOUND")])]), "toString_0", []), this, jr.JStr("initConfigurable")])
            jr.call(this, "mediaInit_0", [])
            jr.call(l_changed_game_feature_listener, "remove_1", [jr.get_field(l_game_feature_factory, "SOUND")])
            Nil
        }
            False -> Nil
        }
        let l_sensor_feature_factory = jr.call_static("SensorFeatureFactory", "getInstance_0", [])
        case jr.truth(case jr.truth(case jr.truth(jr.call(l_changed_game_feature_listener, "isChangedFeature_1", [jr.get_field(l_sensor_feature_factory, "ORIENTATION_SENSORS")])) { True -> jr.JBool(True) False -> jr.call(l_changed_game_feature_listener, "isChangedFeature_1", [jr.get_field(l_sensor_feature_factory, "NO_ORIENTATION")]) }) { True -> jr.JBool(True) False -> jr.call(l_changed_game_feature_listener, "isChangedFeature_1", [jr.get_field(l_sensor_feature_factory, "SIMULATED_ORIENTATION_SENSORS")]) }) {
            True -> {
            jr.call(l_changed_game_feature_listener, "remove_1", [jr.get_field(l_sensor_feature_factory, "NO_ORIENTATION")])
            jr.call(l_changed_game_feature_listener, "remove_1", [jr.get_field(l_sensor_feature_factory, "ORIENTATION_SENSORS")])
            jr.call(l_changed_game_feature_listener, "remove_1", [jr.get_field(l_sensor_feature_factory, "SIMULATED_ORIENTATION_SENSORS")])
            Nil
        }
            False -> Nil
        }
        let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
        jr.call(this, "loadResourceLoadingLevel_1", [jr.get_field(l_resource_loading_level_factory, "LOAD_GAME")])
    jr.JNull
}

fn c1_m106__initapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
        jr.call(this, "initConfigurable_1", [l_abe_client_information])
        jr.call(this, "processorInit_0", [])
        jr.call(jr.get_field(this, "sensorGameUpdateProcessor"), "process_1", [jr.get_field(this, "gameLayerManager")])
        jr.call(jr.get_field(this, "sensorGameUpdateProcessor"), "sendNotifications_1", [jr.get_field(this, "gameLayerManager")])
        jr.call(this, "initTouch_0", [])
    jr.JNull
}

fn c1_m107__inittouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_initialized_event = jr.get_field(jr.call_static("GameInitializationUtil", "getInstance_0", []), "EVENT")
        let l_resource_loading_level_factory = jr.call_static("ResourceLoadingLevelFactory", "getInstance_0", [])
        jr.call(l_game_initialized_event, "setResourceLoadingLevel_1", [jr.get_field(l_resource_loading_level_factory, "LOAD_TOUCH")])
        jr.call(jr.call_static("GameInitializedEventHandler", "getInstance_0", []), "fireEvent_1", [l_game_initialized_event])
        jr.call(jr.get_field(this, "touchButtonFactory"), "defaultList_0", [])
        jr.call(this, "updateTouch_0", [])
        jr.call(this, "postInitTouch_0", [])
    jr.JNull
}

fn c1_m108__updatecurrenttouchinputfactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_next_touch_input] = jargs
        case jr.truth(jr.ne(l_next_touch_input, jr.get_field(this, "currentTouchInputFactory"))) {
            True -> {
            jr.set_field(this, "currentTouchInputFactory", l_next_touch_input)
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.get_field(this, "currentTouchInputFactory"), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameInputStrings"), "UDPATE_CURRENT_TOUCH_INPUT_FACTORY")])
            jr.call(jr.get_field(this, "touchButtonFactory"), "toggle_2", [jr.call(this, "isPaused_0", []), jr.call(jr.get_field(this, "currentTouchInputFactory"), "getList_0", [])])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m109__updatetouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameBehavior"), "updateTouch_1", [this])
    jr.JNull
}

fn c1_m110__updatetouch2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.get_field(this, "touchFeatureFactory"), "AUTO_HIDE_SHOW_SCREEN_BUTTONS")])) {
            True -> {
            case jr.truth(jr.eq(jr.sub(jr.call(jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), "getCurrentLevel_0", []), jr.call(this, "getStartLevel_0", [])), jr.JInt(1))) {
                True -> {
                jr.call(this, "setTouchPaintableP_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m111__postinittouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setTouchButtonsPaintable_1", [jr.call_static("TouchButtonsPaintableFactory", "getInstance_1", [jr.call(jr.get_field(this, "gameLayerManager"), "getForegroundBasicColor_0", [])])])
        jr.call(this, "updateScreenButtonPaintable_0", [])
    jr.JNull
}

fn c1_m112__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "AllBinaryGameCanvas", "removeAllCommands_0", [])
        jr.call(this, "addCommands_0", [])
        jr.call_inherited(this, "AllBinaryGameCanvas", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m113__addcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
        let l_my_commands_factory = jr.call_static("MyCommandsFactory", "getInstance_0", [])
        case jr.truth(jr.ne(jr.call_static("DebugFactory", "getInstance_0", []), jr.call_static("NoDebug", "getInstance_0", []))) {
            True -> {
            jr.call_inherited(this, "AllBinaryGameCanvas", "addCommand_1", [jr.get_field(l_game_commands_factory, "START_TRACE")])
            Nil
        }
            False -> Nil
        }
        jr.call_inherited(this, "AllBinaryGameCanvas", "addCommand_1", [jr.get_field(l_game_commands_factory, "RESTART_COMMAND")])
        jr.call_inherited(this, "AllBinaryGameCanvas", "addCommand_1", [jr.get_field(l_my_commands_factory, "PAUSE_COMMAND")])
        jr.call_inherited(this, "AllBinaryGameCanvas", "addCommand_1", [jr.get_field(l_game_commands_factory, "QUIT_COMMAND")])
        let l_is_over_scan = jr.call(jr.call(jr.call_static("OperatingSystemFactory", "getInstance_0", []), "getOperatingSystemInstance_0", []), "isOverScan_0", [])
        case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
            True -> {
            Nil
        }
            False -> case jr.truth(jr.get_static("SWTUtil", "isSWT")) {
            True -> {
            Nil
        }
            False -> case jr.truth(jr.not(l_is_over_scan)) {
            True -> {
            case jr.truth(case jr.truth(jr.call(jr.call_static("TouchScreenFactory", "getInstance_0", []), "isTouch_0", [])) { True -> jr.call(jr.new("InGameFeatures", []), "isAny_0", []) False -> jr.JBool(False) }) {
                True -> {
                jr.call_inherited(this, "AllBinaryGameCanvas", "addCommand_1", [jr.get_static("InGameOptionsForm", "DISPLAY")])
                Nil
            }
                False -> Nil
            }
            jr.call_inherited(this, "AllBinaryGameCanvas", "addCommand_1", [jr.get_field(l_game_commands_factory, "SAVE")])
            jr.call_inherited(this, "AllBinaryGameCanvas", "addCommand_1", [jr.get_field(l_game_commands_factory, "DISPLAY_LOAD_FORM")])
            Nil
        }
            False -> Nil
        }
        }
        }
    jr.JNull
}

fn c1_m114__itemstatechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
        jr.try_catch(fn() {
            let l_item_label = jr.call(l_item, "getLabel_0", [])
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonLabels"), "ITEM_LABEL")]), "append_1", [l_item_label]), "toString_0", []), this, jr.JStr("itemStateChanged")])
            case jr.truth(jr.instance_of(l_item, "ChoiceGroup")) {
                True -> {
                let l_game_feature_util = jr.call_static("GameFeatureUtil", "getInstance_0", [])
                case jr.truth(jr.call(l_game_feature_util, "isExclusive_1", [l_item_label])) {
                    True -> {
                    jr.call(l_game_feature_util, "updateExclusiveForChoiceGroup_1", [l_item])
                    Nil
                }
                    False -> {
                    jr.call(l_game_feature_util, "updateMultiple_1", [l_item])
                    Nil
                }
                }
                Nil
            }
                False -> Nil
            }
            jr.call(jr.get_field(this, "sensorGameUpdateProcessor"), "process_1", [jr.get_field(this, "gameLayerManager")])
            jr.call(this, "updateTouch_0", [])
            jr.call(this, "updateScreenButtonPaintable_0", [])
            jr.call(jr.get_field(this, "sensorGameUpdateProcessor"), "sendNotifications_1", [jr.get_field(this, "gameLayerManager")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "EXCEPTION"), this, jr.JStr("itemStateChanged"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m115__updatescreenbuttonpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameBehavior"), "updateScreenButtonPaintable_1", [this])
    jr.JNull
}

fn c1_m116__updatescreenbuttonpaintable2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.get_field(this, "touchFeatureFactory"), "AUTO_HIDE_SHOW_SCREEN_BUTTONS")])) {
            True -> {
            jr.call(this, "setTouchPaintableP_1", [jr.call(this, "getTouchButtonsPaintable_0", [])])
            jr.call(this, "setStartLevel_1", [jr.call(jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), "getCurrentLevel_0", [])])
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.get_field(this, "touchFeatureFactory"), "SHOW_SCREEN_BUTTONS")])) {
            True -> {
            jr.call(this, "setTouchPaintableP_1", [jr.call(this, "getTouchButtonsPaintable_0", [])])
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.get_field(this, "touchFeatureFactory"), "HIDE_SCREEN_BUTTONS")])) {
            True -> {
            jr.call(this, "setTouchPaintableP_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
            Nil
        }
            False -> {
            jr.call(this, "setTouchPaintableP_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
            Nil
        }
        }
        }
        }
    jr.JNull
}

fn c1_m117__getlayermanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameLayerManager")
}

fn c1_m118__setlayermanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_manager] = jargs
        jr.set_field(this, "gameLayerManager", l_layer_manager)
    jr.JNull
}

fn c1_m119__isgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameOver")
}

fn c1_m120__setgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_over] = jargs
        jr.set_field(this, "gameOver", l_game_over)
    jr.JNull
}

fn c1_m121__processgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "gameStrings"), "SET_GAME_OVER")])
        jr.call(this, "setGameOver_1", [jr.JBool(True)])
        jr.call_inherited(this, "AllBinaryGameCanvas", "removePauseCommand_0", [])
        jr.call(this, "setGameState_1", [jr.get_field(jr.get_field(this, "gameStateFactory"), "SHOW_END_RESULT_GAME_STATE")])
        jr.call(this, "setEndGamePaintable_1", [jr.call(this, "getEndGameStatePaintable_0", [])])
    jr.JNull
}

fn c1_m122__ishighscoresubmitted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "highScoreSubmitted")
}

fn c1_m123__sethighscoresubmitted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_score_submitted] = jargs
        jr.set_field(this, "highScoreSubmitted", l_high_score_submitted)
        case jr.truth(l_high_score_submitted) {
            True -> {
            jr.call(jr.get_field(this, "highScoresHelper"), "setSelectedHighScores_1", [jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", [])])
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("isHighScoreSubmitted: ")]), "appendboolean_1", [l_high_score_submitted]), "toString_0", []), this, jr.JStr("setHighScoreSubmitted")])
    jr.JNull
}

fn c1_m124__getgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameState")
}

fn c1_m125__setgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_state] = jargs
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "gameStrings"), "GAME_STATE")]), "append_1", [jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "stringUtil"), "toString_1", [l_game_state])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameStrings"), "SET_GAME_STATE")])
        jr.set_field(this, "gameState", l_game_state)
        jr.call(jr.get_field(this, "gameStateTimeHelper"), "setStartTimeTNT_0", [])
        jr.call(this, "updateEndGameProcessor_0", [])
        jr.call(this, "updateGameKeyEventProcessor_0", [])
        jr.call(jr.get_field(this, "gameBehavior"), "setGameState_1", [this])
    jr.JNull
}

fn c1_m126__updategamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_ad_state = jr.call(jr.get_field(this, "gameAdStateFactory"), "getCurrentInstance_0", [])
        jr.call(l_game_ad_state, "processAdState_2", [jr.get_field(this, "gameState"), jr.call(jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), "getGameType_0", [])])
        case jr.truth(jr.ne(jr.get_field(this, "gameState"), jr.get_field(jr.get_field(this, "gameStateFactory"), "PLAYING_GAME_STATE"))) {
            True -> {
            jr.call(l_game_ad_state, "processPageAdState_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m127__updategamekeyeventprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(case jr.truth(jr.ne(jr.call(this, "getGameState_0", []), jr.get_field(jr.get_field(this, "gameStateFactory"), "PLAYING_GAME_STATE"))) { True -> jr.JBool(True) False -> jr.get_field(this, "isCheating") }) {
            True -> {
            Nil
        }
            False -> {
            Nil
        }
        }
    jr.JNull
}

fn c1_m128__removeallgamekeyinputlistenersonbuild(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "removeAllGameKeyInputListeners_0", [])
    jr.JNull
}

fn c1_m129__removeallgamekeyinputlisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameBehavior"), "removeAllGameKeyInputListeners_1", [this])
    jr.JNull
}

fn c1_m130__removeallgamekeyinputlisteners2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.JStr("Remove PlayerInput Listeners"), this, jr.JStr("removeAllGameKeyInputListeners")])
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(jr.get_field(this, "localPlayerGameInputList"), "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            let l_player_game_input = jr.call(jr.get_field(this, "localPlayerGameInputList"), "get_1", [jr.get(l_index)])
            jr.call(this, "removeKeyInputListener_1", [l_player_game_input])
            jr.call(l_player_game_input, "removeNonAIInputGameKeyEvents_0", [])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m131__removekeyinputlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_game_input] = jargs
        jr.call(jr.get_field(this, "gameKeyEventHandler"), "removeListener_1", [l_player_game_input])
    jr.JNull
}

fn c1_m132__updateendgameprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "gameBehavior"), "updateEndGameProcessor_1", [this])
    jr.JNull
}

fn c1_m133__updateendgameprocessor2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(case jr.truth(jr.eq(jr.call(this, "getGameState_0", []), jr.get_field(jr.get_field(this, "gameStateFactory"), "SHOW_END_RESULT_GAME_STATE"))) { True -> jr.JBool(True) False -> jr.eq(jr.call(this, "getGameState_0", []), jr.get_field(jr.get_field(this, "gameStateFactory"), "SHOW_HIGH_SCORE_GAME_STATE")) }) {
            True -> {
            jr.call(this, "setEndGameProcessor_1", [jr.get_field(this, "realEndGameProcessor")])
            Nil
        }
            False -> {
            jr.call(this, "setEndGameProcessor_1", [jr.call_static("Processor", "getInstance_0", [])])
            Nil
        }
        }
    jr.JNull
}

fn c1_m134__buildgameinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_portion] = jargs
    jr.JNull
}

fn c1_m135__cleanupgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "CLEANUP")])
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(10), jr.JStr("Cleaning Up")])
        jr.call(jr.get_field(this, "primaryPlayerQueue"), "clear_0", [])
        jr.call(jr.get_field(this, "secondaryPlayerQueue"), "clear_0", [])
        jr.call(jr.call_static("GameLevelDisplayChangeEventListenersFactory", "getInstance_0", []), "clear_0", [])
    jr.JNull
}

fn c1_m136__loadresourceloadinglevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource_loading_level] = jargs
        let l_game_initialized_event = jr.get_field(jr.call_static("GameInitializationUtil", "getInstance_0", []), "EVENT")
        jr.call(l_game_initialized_event, "setResourceLoadingLevel_1", [l_resource_loading_level])
        jr.call(jr.call_static("GameInitializedEventHandler", "getInstance_0", []), "fireEvent_1", [l_game_initialized_event])
    jr.JNull
}

fn c1_m137__loadresources(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        let l_game_initialized_event = jr.get_field(jr.call_static("GameInitializationUtil", "getInstance_0", []), "EVENT")
        jr.call(l_game_initialized_event, "setLevel_1", [l_level])
        jr.call(jr.call_static("GameInitializedEventHandler", "getInstance_0", []), "fireEvent_1", [l_game_initialized_event])
    jr.JNull
}

fn c1_m138__updatecolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m139__buildgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_portion] = jargs
    let l_portion = jr.as_i(l_portion)
    jr.method(fn() {
            jr.call(jr.get_field(this, "screenCapture"), "endRecording_0", [])
            jr.call(jr.get_field(this, "screenCapture"), "startRecording_0", [])
            let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
            let l_features = jr.call_static("Features", "getInstance_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [l_portion, jr.JStr("Generic Build")])
            jr.call(this, "removeAllGameKeyInputListenersOnBuild_0", [])
            jr.call(this, "updateTouch_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [l_portion, jr.JStr("High Scores")])
            jr.call(jr.get_field(this, "highScoresFactoryInterface"), "fetchHighScores_2", [jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), jr.get_field(this, "highScoresHelper")])
            jr.call(this, "setHighScoresPaintable_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
            jr.call(l_progress_canvas, "addNormalPortion_2", [l_portion, jr.JStr("Finishing.")])
            jr.call(jr.call(this, "getEndGameInfoP_0", []), "update_2", [jr.call(jr.call(this, "getLayerManager_0", []), "getGameInfo_0", []), this])
            jr.set_field(this, "isSingleKeyRepeatableProcessing", jr.call(l_features, "isFeature_1", [jr.get_field(jr.call_static("InputFeatureFactory", "getInstance_0", []), "SINGLE_KEY_REPEAT_PRESS")]))
            jr.call(this, "setGameOver_1", [jr.JBool(False)])
            jr.call(l_progress_canvas, "addNormalPortion_2", [l_portion, jr.JStr("Finishing..")])
            jr.call(this, "updateColor_0", [])
            jr.call(jr.call(this, "getStartIntermissionPaintable_0", []), "update_0", [])
            case jr.truth(jr.not(jr.call(this, "isRunningInAnotherThread_0", []))) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            jr.call(l_progress_canvas, "addNormalPortion_2", [l_portion, jr.JStr("Finishing...")])
            case jr.truth(case jr.truth(jr.call_inherited(this, "AllBinaryGameCanvas", "isMainCanvas_0", [])) { True -> jr.JBool(True) False -> jr.not(jr.call(this, "isInitialized_0", [])) }) {
            True -> {
            case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "LOAD_ONDEMAND")])) {
                True -> {
                case jr.truth(jr.ne(jr.call_inherited(this, "AllBinaryGameCanvas", "getCustomCommandListener_0", []), jr.JNull)) {
                    True -> {
                    jr.call(l_progress_canvas, "end_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> {
                jr.call(l_progress_canvas, "end_0", [])
                Nil
            }
            }
            jr.call(this, "setInitialized_1", [jr.JBool(True)])
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.eq(jr.call_inherited(this, "AllBinaryGameCanvas", "getCustomCommandListener_0", []), jr.get_static("NullCommandListener", "NULL_COMMAND_LISTENER"))) {
            True -> {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.JStr("Show Game Paintable in DemoCanvas Thread"), this, jr.get_field(this, "BUILD_GAME")])
            jr.call(jr.get_field(this, "gameCanvasStartListener"), "showGamePaintable_0", [])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.JStr("No GameCanvasStartListener"), this, jr.get_field(this, "BUILD_GAME")])
            Nil
        }
        }
            jr.call(jr.get_field(this, "colorFillPaintable"), "setBasicColorP_1", [jr.call(jr.get_field(this, "gameLayerManager"), "getBackgroundBasicColor_0", [])])
            jr.call(jr.get_field(this, "gameBehavior"), "buildGame_1", [this])
        jr.JNull
    })
}

fn c1_m140__buildgame2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "gameInputStrings"), "ENABLE_PLAYER_GAME_INPUTS")]), "appendint_1", [jr.call(jr.get_field(this, "localPlayerGameInputList"), "size_0", [])]), "toString_0", []), this, jr.get_field(this, "BUILD_GAME")])
        let l_player_game_input = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(jr.get_field(this, "localPlayerGameInputList"), "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_player_game_input, jr.call(jr.get_field(this, "localPlayerGameInputList"), "get_1", [jr.get(l_index)]))
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_field(this, "gameInputStrings"), "ENABLE_PLAYER_GAME_INPUT")]), "append_1", [jr.call(jr.get(l_player_game_input), "toString_0", [])]), "toString_0", []), this, jr.get_field(this, "BUILD_GAME")])
            jr.call(jr.get(l_player_game_input), "removeNonAIInputGameKeyEvents_0", [])
            jr.call(this, "addKeyInputListener_1", [jr.get(l_player_game_input)])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m141__addkeyinputlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_game_input] = jargs
        jr.call(jr.call_static("GameKeyEventHandler", "getInstance_0", []), "addListenerForPlayer_2", [l_player_game_input, jr.call(l_player_game_input, "getPlayerInputId_0", [])])
    jr.JNull
}

fn c1_m143__setgamecanvasstartlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_canvas_start_listener] = jargs
        jr.set_field(this, "gameCanvasStartListener", l_game_canvas_start_listener)
    jr.JNull
}

fn c1_m144__loadstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "LOAD")])
        let l_hashtable = jr.call(this, "getLoadStateHashtable_0", [])
        case jr.truth(case jr.truth(jr.ne(l_hashtable, jr.JNull)) { True -> jr.gt(jr.call(l_hashtable, "size_0", []), jr.JInt(0)) False -> jr.JBool(False) }) {
            True -> {
            let l_level_as_string = jr.call(l_hashtable, "get_1", [jr.get_static("GameInfo", "LEVEL_NAME")])
            let l_level = jr.as_i(jr.call(jr.call_static("Integer", "valueOf_1", [l_level_as_string]), "intValue_0", []))
            let l_game_info = jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", [])
            jr.call(l_game_info, "setCurrentLevel_1", [l_level])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m145__getloadstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonLabels"), "START_LABEL")]), "append_1", [jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "stringUtil"), "toString_1", [jr.get_field(this, "hashtable")])]), "toString_0", []), this, jr.JStr("getLoadStateHashtable")])
    jr.get_field(this, "hashtable")
}

fn c1_m146__setloadstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable] = jargs
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonLabels"), "START_LABEL")]), "append_1", [jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "stringUtil"), "toString_1", [l_hashtable])]), "toString_0", []), this, jr.JStr("setLoadStateHashtable")])
        jr.set_field(this, "hashtable", l_hashtable)
    jr.JNull
}

fn c1_m147__getcurrentstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_hashtable = jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "stdUtil"), "createHashtable_0", [])
        let l_level = jr.as_i(jr.call(jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), "getCurrentLevel_0", []))
        jr.call(l_hashtable, "put_2", [jr.call(jr.get_static("GameInfo", "LEVEL_NAME"), "toString_0", []), jr.call_static("Integer", "toString_1", [l_level])])
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("End: ")]), "append_1", [jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "stringUtil"), "toString_1", [l_hashtable])]), "toString_0", []), this, jr.JStr("getCurrentStateHashtable")])
    l_hashtable
}

fn c1_m148__paintgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "NOT_IMPLEMENTED"), this])
    jr.JNull
}

fn c1_m149__draw(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "colorFillPaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.call(jr.get_field(this, "gameLayerManager"), "getForegroundBasicColor_0", [])])
        jr.call(jr.get_field(this, "gameSpecificPaintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m150__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "colorFillPaintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m151__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "baseGameStatistics"), "nextRefresh_0", [])
        jr.call(this, "draw_1", [l_graphics])
        jr.call(jr.get_field(this, "menuPaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "progressPaintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m152__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m153__processendlevelintermissiongamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m154__nonbotpaint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "endGamePaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "intermissionPaintable"), "paint_1", [l_graphics])
        jr.call(this, "paintIntermission_1", [l_graphics])
        jr.call(jr.get_field(this, "touchPaintable"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m155__paintintermission(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m159__keypressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyPressedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m160__keyreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyReleasedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m161__keyrepeated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
        jr.call(this, "keyRepeatedByDevice_2", [l_key_code, jr.JInt(0)])
    jr.JNull
}

fn c1_m162__keypressedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(jr.get_field(this, "inputProcessor"), "keyPressedByDevice_2", [l_key_code, l_device_id])
    jr.JNull
}

fn c1_m163__keyrepeatedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        case jr.truth(jr.get_field(this, "isSingleKeyRepeatableProcessing")) {
            True -> {
            jr.call(jr.get_field(this, "inputProcessor"), "keyPressedByDevice_2", [l_key_code, l_device_id])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m164__keyreleasedbydevice(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
        jr.call(jr.get_field(this, "inputProcessor"), "keyReleasedByDevice_3", [this, l_key_code, l_device_id])
    jr.JNull
}

fn c1_m165__handlerawkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code, l_device_id, l_repeated] = jargs
    let l_key_code = jr.as_i(l_key_code)
    let l_device_id = jr.as_i(l_device_id)
    jr.JNull
}

fn c1_m166__endprogress(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_progress] = jargs
        let l_portion = jr.cell(jr.as_i(jr.JInt(30)))
        case jr.truth(case jr.truth(l_is_progress) { True -> jr.call_inherited(this, "AllBinaryGameCanvas", "isMainCanvas_0", []) False -> jr.JBool(False) }) {
            True -> {
            let l_my_commands_factory = jr.call_static("MyCommandsFactory", "getInstance_0", [])
            let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
            jr.call(l_progress_canvas, "start_0", [])
            jr.call(jr.call_inherited(this, "AllBinaryGameCanvas", "getCustomCommandListener_0", []), "commandAction_2", [jr.get_field(l_my_commands_factory, "SET_DISPLAYABLE"), l_progress_canvas])
            jr.set(l_portion, jr.as_i(jr.JInt(4)))
            Nil
        }
            False -> Nil
        }
    jr.as_i(jr.get(l_portion))
}

fn c1_m167__processplayinggame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "cheatProcessor"), "update_0", [])
        jr.call(jr.call(jr.get_field(this, "sensorGameUpdateProcessor"), "getInputSensor_0", []), "update_0", [])
        jr.call(jr.get_field(this, "gameInputProcessor"), "process_0", [])
        jr.call(jr.get_field(this, "gameLayerManager"), "process_0", [])
        jr.call(jr.get_field(this, "startIntermissionProcessor"), "process_0", [])
    jr.JNull
}

fn c1_m168__threadinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m169__processgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("RunnableCanvas", this, "process_0", [])
        case jr.truth(jr.call_static("AllBinaryMediaManager", "update_0", [])) {
            True -> {
            case jr.truth(jr.not(jr.call(jr.get_field(this, "primaryPlayerQueue"), "process_0", []))) {
                True -> {
                jr.call(jr.get_field(this, "secondaryPlayerQueue"), "process_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
        jr.call(jr.get_field(this, "mainStateProcessor"), "process_0", [])
        jr.call(jr.get_field(this, "menuInputProcessor"), "processInputList_0", [])
        jr.call(jr.get_field(this, "endGameProcessor"), "process_0", [])
        jr.call(jr.get_field(this, "baseGameStatistics"), "nextFrame_0", [])
    jr.JNull
}

fn c1_m170__notifydonepainting(this: jr.V, jargs: List(jr.V)) -> jr.V {
        {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "threadObjectUtil"), "notifyObject_1", [this])
            Nil
        }
    jr.JNull
}

fn c1_m172__shouldwait(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) {
            True -> {
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isFeature_1", [jr.get_field(jr.get_field(this, "openGLFeatureFactory"), "OPENGL_2D")])) {
            True -> {
            Nil
        }
            False -> {
            case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(jr.get_field(this, "openGLFeatureFactory"), "OPENGL")])) {
                True -> {
                let l_open_g_l_image_specific_factory = jr.call_static("OpenGLImageSpecificFactory", "getInstance_0", [])
                jr.while_loop("", fn() { jr.get_field(l_open_g_l_image_specific_factory, "updating") }, fn() {
                    jr.call_static("Thread", "sleep_1", [jr.get_field(this, "YIELD_SLEEP")])
                    Nil
                })
                Nil
            }
                False -> Nil
            }
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_m173__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "START_RUNNABLE"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "RUN")])
            let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Game Thread")])
            jr.call(this, "setCurrentThread_0", [])
            jr.call(this, "setRunning_1", [jr.JBool(True)])
            case jr.truth(jr.eq(jr.call_inherited(this, "AllBinaryGameCanvas", "getCustomCommandListener_0", []), jr.get_static("NullCommandListener", "NULL_COMMAND_LISTENER"))) {
                True -> {
                jr.call_static("Thread", "sleep_1", [jr.get_field(this, "YIELD_SLEEP")])
                Nil
            }
                False -> Nil
            }
            jr.call(this, "shouldWait_0", [])
            jr.call(this, "threadInit_0", [])
            case jr.truth(jr.eq(jr.call_inherited(this, "AllBinaryGameCanvas", "getCustomCommandListener_0", []), jr.get_static("NullCommandListener", "NULL_COMMAND_LISTENER"))) {
                True -> {
                jr.call_static("Thread", "sleep_1", [jr.get_field(this, "YIELD_SLEEP")])
                Nil
            }
                False -> Nil
            }
            jr.call(this, "open_0", [])
            let l_game_ad_state = jr.call(jr.get_field(this, "gameAdStateFactory"), "getCurrentInstance_0", [])
            jr.call(l_game_ad_state, "init_0", [])
            jr.call(l_game_ad_state, "setGameIsReady_1", [jr.JBool(True)])
            jr.call(jr.get_field(this, "gameBehavior"), "run_1", [this])
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "END_RUNNABLE"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "RUN")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m174__run2(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(jr.get_field(this, "openGLFeatureFactory"), "OPENGL_AS_GAME_THREAD")])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isHTML_0", []) }) {
            True -> {
            case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(jr.get_field(this, "openGLFeatureFactory"), "OPENGL_AS_GAME_THREAD")])) {
                True -> {
                jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.get_field(jr.get_field(this, "openGLFeatureFactory"), "OPENGL_AS_GAME_THREAD"), "getName_0", []), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "RUN")])
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
                True -> {
                jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.call_static("GraphicsStrings", "getInstance_0", []), "HTML"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "RUN")])
                Nil
            }
                False -> Nil
            }
            let l_current_displayable_factory = jr.call_static("CurrentDisplayableFactory", "getInstance_0", [])
            jr.call(l_current_displayable_factory, "setRunnable_1", [jr.get_field(this, "gameRunnable")])
            jr.call(l_current_displayable_factory, "setDisplayable_1", [this])
            jr.call(jr.call_static("OpenGLThreadUtil", "getInstance_0", []), "onResume_0", [])
            Nil
        }
            False -> case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(jr.get_field(this, "openGLFeatureFactory"), "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS")])) {
            True -> {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.call(jr.get_field(jr.get_field(this, "openGLFeatureFactory"), "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS"), "getName_0", []), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "RUN")])
            jr.call(jr.call_static("OpenGLThreadUtil", "getInstance_0", []), "onResume_0", [])
            jr.while_loop("", fn() { jr.call_inherited(this, "AllBinaryGameCanvas", "isRunning_0", []) }, fn() {
                jr.call(this, "run3_0", [])
                Nil
            })
            jr.call(this, "end_0", [])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "putF_3", [jr.JStr("this thread"), this, jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "RUN")])
            jr.while_loop("", fn() { jr.call_inherited(this, "AllBinaryGameCanvas", "isRunning_0", []) }, fn() {
                jr.call(this, "run3_0", [])
                Nil
            })
            jr.call(this, "end_0", [])
            Nil
        }
        }
        }
    jr.JNull
}

fn c1_m175__run3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "loopTimeHelper"), "setStartTime_1", [jr.call(jr.get_field(this, "gameTickTimeDelayHelper"), "setStartTime_0", [])])
        jr.call(jr.get_field(this, "gameTickDisplayInfoSingleton"), "update_0", [])
        jr.call(this, "processGame_0", [])
        jr.call_inherited(this, "AllBinaryGameCanvas", "processLoopSleep_0", [])
    jr.JNull
}

fn c1_m176__setrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_running] = jargs
        jr.call_super("RunnableCanvas", this, "setRunning_1", [l_running])
        jr.try_catch(fn() {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            case jr.truth(l_running) {
                True -> {
                Nil
            }
                False -> {
                case jr.truth(case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(jr.get_field(this, "openGLFeatureFactory"), "OPENGL")])) { True -> jr.JBool(True) False -> jr.get_static("SWTUtil", "isSWT") }) {
                    True -> {
                    case jr.truth(jr.ne(jr.call(jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), "getGameType_0", []), jr.get_field(jr.get_field(this, "gameTypeFactory"), "BOT"))) {
                        True -> {
                        let l_current_displayable_factory = jr.call_static("CurrentDisplayableFactory", "getInstance_0", [])
                        jr.call(l_current_displayable_factory, "clearRunnable_0", [])
                        Nil
                    }
                        False -> Nil
                    }
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
            jr.call(jr.get_inherited(this, "AllBinaryGameCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "AllBinaryGameCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_inherited(this, "AllBinaryGameCanvas", "SET_RUNNING"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m177__end(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "screenCapture"), "endRecording_0", [])
        jr.call(jr.get_field(this, "baseGameStatistics"), "add_1", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.call(jr.get_field(this, "baseGameStatistics"), "toString_0", [])]), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "NEW_LINE")]), "toString_0", [])])
        jr.call(jr.get_field(this, "baseGameStatistics"), "init_0", [])
        jr.call(jr.get_field(this, "gameKeyEventHandler"), "removeListener_1", [jr.get_field(this, "cheatProcessor")])
        jr.call(this, "close_0", [])
        jr.call(this, "removeAllGameKeyInputListeners_0", [])
        jr.call(this, "endGameThread_0", [])
    jr.JNull
}

fn c1_m178__endgamethread(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DisplayChangeEventHandler", "getInstance_0", []), "removeListener_1", [this])
        jr.call(jr.call_static("GameLevelDisplayChangeEventListenersFactory", "getInstance_0", []), "clear_0", [])
        let l_game_ad_state = jr.call(jr.get_field(this, "gameAdStateFactory"), "getCurrentInstance_0", [])
        jr.call(l_game_ad_state, "notPlayingAdState_0", [])
    jr.JNull
}

fn c1_m179__createhighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_score] = jargs
    let l_score = jr.as_j(l_score)
        let l_game_info = jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", [])
    jr.new("HighScore", [jr.JInt(0), jr.JStr("NONE"), jr.new("GameInfo", [jr.call(l_game_info, "getGameType_0", []), jr.call(l_game_info, "getGameMode_0", []), jr.get_field(jr.call_static("PlayerTypesFactory", "getInstance_0", []), "PLAYER_TYPE_ONE"), jr.JInt(0), jr.JInt(0)]), l_score])
}

fn c1_m180__sethighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_name, l_score, l_auto_submit, l_is_last] = jargs
    let l_score = jr.as_j(l_score)
        jr.call(jr.get_field(this, "gameBehavior"), "setHighScore_6", [l_abe_client_information, this, l_name, l_score, l_auto_submit, l_is_last])
    jr.JNull
}

fn c1_m181__sethighscore2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_name, l_score, l_auto_submit, l_is_last] = jargs
    let l_score = jr.as_j(l_score)
        let l_high_score = jr.call(this, "createHighScore_1", [l_score])
        let l_text_box = jr.new("HighScoreTextBox", [jr.get_field(this, "highScoresFactoryInterface"), jr.get_field(this, "highScoresHelper"), l_abe_client_information, jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), jr.call_inherited(this, "AllBinaryGameCanvas", "getCustomCommandListener_0", []), l_name, l_high_score, jr.call(jr.get_field(this, "gameLayerManager"), "getBackgroundBasicColor_0", []), jr.call(jr.get_field(this, "gameLayerManager"), "getForegroundBasicColor_0", [])])
        case jr.truth(l_is_last) {
            True -> {
            jr.call(jr.call_inherited(this, "AllBinaryGameCanvas", "getCustomCommandListener_0", []), "commandAction_2", [jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "SET_MENU_DISPLAYABLE"), l_text_box])
            Nil
        }
            False -> Nil
        }
        case jr.truth(l_auto_submit) {
            True -> {
            jr.call(jr.call_static("SecondaryThreadPool", "getInstance_0", []), "runTask_1", [jr.new("SaveHighScoreRunnable", [l_is_last, l_text_box])])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m182__getgamestatetimehelper(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameStateTimeHelper")
}

fn c1_m183__setinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialized] = jargs
        jr.set_field(this, "initialized", l_initialized)
    jr.JNull
}

fn c1_m184__isinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "initialized")
}

fn c1_m185__getsourceid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("AllBinaryGameCanvas", "id"))
}

fn c1_m186__setprogresspaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_paintable] = jargs
        jr.set_field(this, "progressPaintable", l_paintable)
    jr.JNull
}

fn c1_m187__getstartintermissioninterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "startIntermissionInterface")
}

fn c1_m188__getendlevelintermissioninterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "endLevelIntermissionInterface")
}

fn c1_m189__settouchpaintablep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_paintable] = jargs
        jr.set_field(this, "touchPaintable", l_paintable)
    jr.JNull
}

fn c1_m190__gettouchpaintablep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "touchPaintable")
}

fn c1_m191__setendgamepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_end_game_paintable] = jargs
        jr.set_field(this, "endGamePaintable", l_end_game_paintable)
    jr.JNull
}

fn c1_m192__getendgamepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "endGamePaintable")
}

fn c1_m193__setintermissionpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_intermission_paintable] = jargs
        jr.set_field(this, "intermissionPaintable", l_intermission_paintable)
    jr.JNull
}

fn c1_m194__getintermissionpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "intermissionPaintable")
}

fn c1_m195__getendgameinfop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "endGameInfo")
}

fn c1_m196__sethighscorespaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_paintable] = jargs
        jr.set_field(this, "highScoresPaintable", l_high_scores_paintable)
    jr.JNull
}

fn c1_m197__gethighscorespaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "highScoresPaintable")
}

fn c1_m198__getrealhighscorespaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "realHighScoresPaintable")
}

fn c1_m199__clearplayergameinputlist(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_player_game_input = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.sub(jr.call(jr.get_field(this, "localPlayerGameInputList"), "size_0", []), jr.JInt(1))))
            jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.JInt(0)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
            jr.set(l_player_game_input, jr.call(jr.get_field(this, "localPlayerGameInputList"), "get_1", [jr.get(l_index)]))
            jr.call(jr.get_field(this, "gameKeyEventHandler"), "removeListener_1", [jr.get(l_player_game_input)])
            Nil
        })
            Nil
        }
        jr.call(jr.get_field(this, "localPlayerGameInputList"), "clear_0", [])
    jr.JNull
}

fn c1_m200__addplayergameinput(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_game_input] = jargs
        jr.call(jr.get_field(this, "localPlayerGameInputList"), "add_1", [l_player_game_input])
    jr.JNull
}

fn c1_m201__setmenuinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_menu_input_processor] = jargs
        jr.set_field(this, "menuInputProcessor", l_menu_input_processor)
    jr.JNull
}

fn c1_m202__getmenuinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "menuInputProcessor")
}

fn c1_m203__getmenuform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "menuForm")
}

fn c1_m204__setmenuform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_menu_form] = jargs
        jr.set_field(this, "menuForm", l_menu_form)
    jr.JNull
}

fn c1_m205__getstartlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "startLevel"))
}

fn c1_m206__setstartlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_start_level] = jargs
    let l_start_level = jr.as_i(l_start_level)
        jr.set_field(this, "startLevel", jr.as_i(l_start_level))
    jr.JNull
}

fn c1_m207__settouchbuttonspaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_buttons_paintable] = jargs
        jr.set_field(this, "touchButtonsPaintable", l_touch_buttons_paintable)
    jr.JNull
}

fn c1_m208__gettouchbuttonspaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "touchButtonsPaintable")
}

fn c1_m209__setgameinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_input_processor] = jargs
        jr.set_field(this, "gameInputProcessor", l_game_input_processor)
    jr.JNull
}

fn c1_m210__getgameinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameInputProcessor")
}

fn c1_m211__setendgameprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_end_game_processor] = jargs
        jr.set_field(this, "endGameProcessor", l_end_game_processor)
    jr.JNull
}

fn c1_m212__getendgameprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "endGameProcessor")
}

fn c1_m213__setendgamestatepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_end_game_state_paintable] = jargs
        jr.set_field(this, "endGameStatePaintable", l_end_game_state_paintable)
    jr.JNull
}

fn c1_m214__getendgamestatepaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "endGameStatePaintable")
}

fn c1_m215__setnonbotpaintablep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_non_bot_paintable] = jargs
        jr.set_field(this, "nonBotPaintable", l_non_bot_paintable)
    jr.JNull
}

fn c1_m216__getnonbotpaintablep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "nonBotPaintable")
}

fn c1_m217__setstartintermissionpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_start_intermission_paintable] = jargs
        jr.set_field(this, "startIntermissionPaintable", l_start_intermission_paintable)
    jr.JNull
}

fn c1_m218__getstartintermissionpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "startIntermissionPaintable")
}

fn c1_m219__setmainstateprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_main_state_processor] = jargs
        jr.set_field(this, "mainStateProcessor", l_main_state_processor)
    jr.JNull
}

fn c1_m220__getmainstateprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "mainStateProcessor")
}

fn c1_m221__setprocessgameprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_process_game_processor] = jargs
        jr.set_field(this, "processGameProcessor", l_process_game_processor)
    jr.JNull
}

fn c1_m222__getprocessgameprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "processGameProcessor")
}

fn c1_m223__setopenmenupaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_open_menu_paintable] = jargs
        jr.set_field(this, "openMenuPaintable", l_open_menu_paintable)
    jr.JNull
}

fn c1_m224__getopenmenupaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "openMenuPaintable")
}

fn c1_m225__setpopupmenuinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_popup_menu_input_processor] = jargs
        jr.set_field(this, "popupMenuInputProcessor", l_popup_menu_input_processor)
    jr.JNull
}

fn c1_m226__getpopupmenuinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "popupMenuInputProcessor")
}

fn c1_m227__getsensorgameupdateprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "sensorGameUpdateProcessor")
}

fn c1_m228__getrawgameinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "rawGameInputProcessor")
}

fn c1_m229__getrawinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "rawInputProcessor")
}

fn c1_m230__setinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_processor] = jargs
        jr.set_field(this, "inputProcessor", l_input_processor)
    jr.JNull
}

fn c1_m231__getinputprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "inputProcessor")
}

fn c1_m232__setmenupaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_menu_paintable] = jargs
        jr.set_field(this, "menuPaintable", l_menu_paintable)
    jr.JNull
}

fn c1_m233__getmenupaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "menuPaintable")
}

fn c1_m234__setformpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_form_paintable] = jargs
        jr.set_field(this, "formPaintable", l_form_paintable)
    jr.JNull
}

fn c1_m235__getformpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "formPaintable")
}

fn c1_m236__setgamespecificpaintablep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_specific_paintable] = jargs
        jr.set_field(this, "gameSpecificPaintable", l_game_specific_paintable)
    jr.JNull
}

fn c1_m237__getgamespecificpaintablep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameSpecificPaintable")
}

fn c1_m238__issinglethread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    case jr.truth(jr.call(jr.call_static("OpenGLFeatureUtil", "getInstance_0", []), "isAnyThreed_0", [])) { True -> jr.JBool(True) False -> jr.get_static("SWTUtil", "isSWT") }
}

fn c1_m239__isrunninginanotherthread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_features = jr.call_static("Features", "getInstance_0", [])
            let l_open_g_l_feature_factory = jr.call_static("OpenGLFeatureFactory", "getInstance_0", [])
            case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(l_open_g_l_feature_factory, "OPENGL_AS_GAME_THREAD")])) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> {
            jr.ret(jr.call_inherited(this, "AllBinaryGameCanvas", "isRunning_0", []))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m241__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("AllBinaryGameCanvas", "TYPE"))
}

fn c1_m242__gettitle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("RunnableCanvas", this, "getTitle_0", [])
}

fn c1_m243__ispaused(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("RunnableCanvas", this, "isPaused_0", [])
}

fn c1_jinit76(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_game_layer_manager, l_high_scores_factory_interface, l_game_initialization_interface_factory_interface, l_buffered] = jargs
        jr.super_init("RunnableCanvas", this, [l_command_listener, jr.get_field(jr.call_static("CanvasStrings", "getInstance_0", []), "EMPTY_CHILD_NAME_LIST"), jr.JBool(True)])
        c1_jfields(this)
        jr.set_field(this, "highScoresHelper", jr.call(l_high_scores_factory_interface, "createHighScoresHelper_0", []))
        jr.set_field(this, "gameInitializationInterfaceFactoryInterface", l_game_initialization_interface_factory_interface)
        jr.call(this, "init_2", [l_game_layer_manager, l_buffered])
        jr.set_field(this, "highScoresFactoryInterface", l_high_scores_factory_interface)
        case jr.truth(case jr.truth(jr.eq(jr.call(jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), "getGameType_0", []), jr.get_field(jr.get_field(this, "gameTypeFactory"), "BOT"))) { True -> jr.JBool(True) False -> jr.eq(jr.call(jr.call(jr.get_field(this, "gameLayerManager"), "getGameInfo_0", []), "getGameType_0", []), jr.get_field(jr.get_field(this, "gameTypeFactory"), "NONE")) }) {
            True -> {
            jr.set_field(this, "gameBehavior", jr.call_static("DemoGameBehavior", "getInstance_0", []))
            jr.set_field(this, "menuBehavior", jr.call_static("BaseMenuBehavior", "getInstance_0", []))
            Nil
        }
            False -> {
            jr.set_field(this, "gameBehavior", jr.call_static("BaseGameBehavior", "getInstance_0", []))
            jr.set_field(this, "menuBehavior", jr.call(this, "getInGameMenuBehavior_0", []))
            Nil
        }
        }
        jr.call(this, "initPopupMenu_0", [])
        jr.call(this, "initMenu_0", [])
        jr.call(this, "initSpecialPaint_0", [])
        jr.call(jr.call_static("DisplayChangeEventHandler", "getInstance_0", []), "addListenerInterface_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryGameCanvas",
        "org.allbinary.game.displayable.canvas.AllBinaryGameCanvas",
        "RunnableCanvas",
        ["AllBinaryGameCanvasInterface", "GameCanvasRunnableInterface", "MenuListener", "IntermissionCompositeInterface", "IntermissionEnableListenerInterface", "PopupMenuInterface", "DisplayChangeEventListener", "UpdateMyFontInterface"],
        False,
        [#("basicColorFactory", jr.JNull), #("basicSetColorUtil", jr.JNull), #("touchFeatureFactory", jr.JNull), #("openGLFeatureFactory", jr.JNull), #("touchButtonFactory", jr.JNull), #("gameAdStateFactory", jr.JNull), #("gameStrings", jr.JNull), #("gameInputStrings", jr.JNull), #("gameStateFactory", jr.JNull), #("gameTickTimeDelayHelper", jr.JNull), #("gameTickDisplayInfoSingleton", jr.JNull), #("gameRunnable", jr.JNull), #("gamePauseRunnable", jr.JNull), #("formUtil", jr.JNull), #("myFormUtil", jr.JNull), #("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("gameSpecificPaintable", jr.JNull), #("sensorGameUpdateProcessor", jr.JNull), #("endGameInfo", jr.JNull), #("startIntermissionInterface", jr.JNull), #("endLevelIntermissionInterface", jr.JNull), #("gameLayerManager", jr.JNull), #("gameState", jr.JNull), #("gameOver", jr.JBool(False)), #("initialized", jr.JBool(False)), #("gameStateTimeHelper", jr.JNull), #("highScoresHelper", jr.JNull), #("highScoreSubmitted", jr.JBool(False)), #("realHighScoresPaintable", jr.JNull), #("highScoresPaintable", jr.JNull), #("localPlayerGameInputList", jr.JNull), #("isCheating", jr.JBool(False)), #("hashtable", jr.JNull), #("isSingleKeyRepeatableProcessing", jr.JBool(False)), #("gameInitializationInterfaceFactoryInterface", jr.JNull), #("touchButtonsPaintable", jr.JNull), #("touchPaintable", jr.JNull), #("cheatProcessor", jr.JNull), #("gameInputProcessor", jr.JNull), #("endGameProcessor", jr.JNull), #("realEndGameProcessor", jr.JNull), #("startIntermissionProcessor", jr.JNull), #("realStartIntermissionProcessor", jr.JNull), #("endGamePaintable", jr.JNull), #("endGameStatePaintable", jr.JNull), #("nonBotPaintable", jr.JNull), #("intermissionPaintable", jr.JNull), #("startIntermissionPaintable", jr.JNull), #("mainStateProcessor", jr.JNull), #("processGameProcessor", jr.JNull), #("highScoresFactoryInterface", jr.JNull), #("startLevel", jr.JInt(0)), #("mainMenuInputProcessor", jr.JNull), #("popupMenuInputProcessor", jr.JNull), #("menuInputProcessor", jr.JNull), #("menuForm", jr.JNull), #("formPaintable", jr.JNull), #("openMenuPaintable", jr.JNull), #("menuPaintable", jr.JNull), #("currentTouchInputFactory", jr.JNull), #("colorFillPaintable", jr.JNull), #("baseGameStatistics", jr.JNull), #("primaryPlayerQueue", jr.JNull), #("secondaryPlayerQueue", jr.JNull), #("BUILD_GAME", jr.JNull), #("gameTypeFactory", jr.JNull), #("screenCapture", jr.JNull), #("basicMotionGesturesHandler", jr.JNull), #("gameKeyEventHandler", jr.JNull), #("gameBehavior", jr.JNull), #("menuBehavior", jr.JNull), #("progressPaintable", jr.JNull), #("fontHeightP", jr.JInt(0)), #("gameCanvasStartListener", jr.JNull), #("rawGameInputProcessor", jr.JNull), #("rawInputProcessor", jr.JNull), #("inputProcessor", jr.JNull), #("YIELD_SLEEP", jr.JLong(0))],
        [#("id", jr.as_i(jr.JInt(0))), #("TYPE", jr.as_i(jr.JInt(2)))],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m77__updatemeasurement), 
            jr.Method("getInGameMenuBehavior_0", [], False, c1_m78__getingamemenubehavior), 
            jr.Method("setCurrentThread_0", [], False, c1_m79__setcurrentthread), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m80__onevent), 
            jr.Method("onDisplayChangeEvent_1", ["DisplayChangeEvent"], False, c1_m81__ondisplaychangeevent), 
            jr.Method("updateMenuFromEvent_1", ["DisplayChangeEvent"], False, c1_m82__updatemenufromevent), 
            jr.Method("processSleep_0", [], False, c1_m83__processsleep), 
            jr.Method("initPopupMenu_0", [], False, c1_m84__initpopupmenu), 
            jr.Method("initMenu_0", [], False, c1_m85__initmenu), 
            jr.Method("initMenu2_0", [], False, c1_m86__initmenu2), 
            jr.Method("updateMenu_0", [], False, c1_m87__updatemenu), 
            jr.Method("updateMenu2_0", [], False, c1_m88__updatemenu2), 
            jr.Method("pause_0", [], False, c1_m89__pause), 
            jr.Method("unPause_0", [], False, c1_m90__unpause), 
            jr.Method("isPausable_0", [], False, c1_m91__ispausable), 
            jr.Method("popupMenu_0", [], False, c1_m92__popupmenu), 
            jr.Method("popupMenu2_0", [], False, c1_m93__popupmenu2), 
            jr.Method("toggleMenu_0", [], False, c1_m94__togglemenu), 
            jr.Method("closeMenu_0", [], False, c1_m95__closemenu), 
            jr.Method("closeMenu2_0", [], False, c1_m96__closemenu2), 
            jr.Method("open_0", [], False, c1_m97__open), 
            jr.Method("close_0", [], False, c1_m98__close), 
            jr.Method("processorInit_0", [], False, c1_m99__processorinit), 
            jr.Method("setProcessGameProcessorInit_0", [], False, c1_m100__setprocessgameprocessorinit), 
            jr.Method("initSpecialPaint_0", [], False, c1_m101__initspecialpaint), 
            jr.Method("init_2", ["AllBinaryGameLayerManager", "boolean"], False, c1_m102__init), 
            jr.Method("notifyIntermission_1", ["boolean"], False, c1_m103__notifyintermission), 
            jr.Method("mediaInit_0", [], False, c1_m104__mediainit), 
            jr.Method("initConfigurable_1", ["AbeClientInformationInterface"], False, c1_m105__initconfigurable), 
            jr.Method("initApp_1", ["AbeClientInformationInterface"], False, c1_m106__initapp), 
            jr.Method("initTouch_0", [], False, c1_m107__inittouch), 
            jr.Method("updateCurrentTouchInputFactory_1", ["BaseTouchInput"], False, c1_m108__updatecurrenttouchinputfactory), 
            jr.Method("updateTouch_0", [], False, c1_m109__updatetouch), 
            jr.Method("updateTouch2_0", [], False, c1_m110__updatetouch2), 
            jr.Method("postInitTouch_0", [], False, c1_m111__postinittouch), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m112__initcommands), 
            jr.Method("addCommands_0", [], False, c1_m113__addcommands), 
            jr.Method("itemStateChanged_1", ["LcduiItem"], False, c1_m114__itemstatechanged), 
            jr.Method("updateScreenButtonPaintable_0", [], False, c1_m115__updatescreenbuttonpaintable), 
            jr.Method("updateScreenButtonPaintable2_0", [], False, c1_m116__updatescreenbuttonpaintable2), 
            jr.Method("getLayerManager_0", [], False, c1_m117__getlayermanager), 
            jr.Method("setLayerManager_1", ["AllBinaryGameLayerManager"], False, c1_m118__setlayermanager), 
            jr.Method("isGameOver_0", [], False, c1_m119__isgameover), 
            jr.Method("setGameOver_1", ["boolean"], False, c1_m120__setgameover), 
            jr.Method("processGameOver_0", [], False, c1_m121__processgameover), 
            jr.Method("isHighScoreSubmitted_0", [], False, c1_m122__ishighscoresubmitted), 
            jr.Method("setHighScoreSubmitted_1", ["boolean"], False, c1_m123__sethighscoresubmitted), 
            jr.Method("getGameState_0", [], False, c1_m124__getgamestate), 
            jr.Method("setGameState_1", ["GameState"], False, c1_m125__setgamestate), 
            jr.Method("updateGameState_0", [], False, c1_m126__updategamestate), 
            jr.Method("updateGameKeyEventProcessor_0", [], False, c1_m127__updategamekeyeventprocessor), 
            jr.Method("removeAllGameKeyInputListenersOnBuild_0", [], False, c1_m128__removeallgamekeyinputlistenersonbuild), 
            jr.Method("removeAllGameKeyInputListeners_0", [], False, c1_m129__removeallgamekeyinputlisteners), 
            jr.Method("removeAllGameKeyInputListeners2_0", [], False, c1_m130__removeallgamekeyinputlisteners2), 
            jr.Method("removeKeyInputListener_1", ["PlayerGameInput"], False, c1_m131__removekeyinputlistener), 
            jr.Method("updateEndGameProcessor_0", [], False, c1_m132__updateendgameprocessor), 
            jr.Method("updateEndGameProcessor2_0", [], False, c1_m133__updateendgameprocessor2), 
            jr.Method("buildGameInit_1", ["boolean"], False, c1_m134__buildgameinit), 
            jr.Method("cleanupGame_0", [], False, c1_m135__cleanupgame), 
            jr.Method("loadResourceLoadingLevel_1", ["ResourceLoadingLevel"], False, c1_m136__loadresourceloadinglevel), 
            jr.Method("loadResources_1", ["int"], False, c1_m137__loadresources), 
            jr.Method("updateColor_0", [], False, c1_m138__updatecolor), 
            jr.Method("buildGame_1", ["int"], False, c1_m139__buildgame), 
            jr.Method("buildGame2_0", [], False, c1_m140__buildgame2), 
            jr.Method("addKeyInputListener_1", ["PlayerGameInput"], False, c1_m141__addkeyinputlistener), 
            jr.Method("setGameCanvasStartListener_1", ["DemoPaintableInterface"], False, c1_m143__setgamecanvasstartlistener), 
            jr.Method("loadState_0", [], False, c1_m144__loadstate), 
            jr.Method("getLoadStateHashtable_0", [], False, c1_m145__getloadstatehashtable), 
            jr.Method("setLoadStateHashtable_1", ["ABHashtable"], False, c1_m146__setloadstatehashtable), 
            jr.Method("getCurrentStateHashtable_0", [], False, c1_m147__getcurrentstatehashtable), 
            jr.Method("paintGameOver_1", ["Graphics"], False, c1_m148__paintgameover), 
            jr.Method("draw_1", ["Graphics"], False, c1_m149__draw), 
            jr.Method("clear_1", ["Graphics"], False, c1_m150__clear), 
            jr.Method("paint_1", ["Graphics"], False, c1_m151__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m152__paintthreed), 
            jr.Method("processEndLevelIntermissionGameState_0", [], False, c1_m153__processendlevelintermissiongamestate), 
            jr.Method("nonBotPaint_1", ["Graphics"], False, c1_m154__nonbotpaint), 
            jr.Method("paintIntermission_1", ["Graphics"], False, c1_m155__paintintermission), 
            jr.Method("keyPressed_1", ["int"], False, c1_m159__keypressed), 
            jr.Method("keyReleased_1", ["int"], False, c1_m160__keyreleased), 
            jr.Method("keyRepeated_1", ["int"], False, c1_m161__keyrepeated), 
            jr.Method("keyPressedByDevice_2", ["int", "int"], False, c1_m162__keypressedbydevice), 
            jr.Method("keyRepeatedByDevice_2", ["int", "int"], False, c1_m163__keyrepeatedbydevice), 
            jr.Method("keyReleasedByDevice_2", ["int", "int"], False, c1_m164__keyreleasedbydevice), 
            jr.Method("handleRawKey_3", ["int", "int", "boolean"], False, c1_m165__handlerawkey), 
            jr.Method("endProgress_1", ["boolean"], False, c1_m166__endprogress), 
            jr.Method("processPlayingGame_0", [], False, c1_m167__processplayinggame), 
            jr.Method("threadInit_0", [], False, c1_m168__threadinit), 
            jr.Method("processGame_0", [], False, c1_m169__processgame), 
            jr.Method("notifyDonePainting_0", [], False, c1_m170__notifydonepainting), 
            jr.Method("shouldWait_0", [], False, c1_m172__shouldwait), 
            jr.Method("run_0", [], False, c1_m173__run), 
            jr.Method("run2_0", [], False, c1_m174__run2), 
            jr.Method("run3_0", [], False, c1_m175__run3), 
            jr.Method("setRunning_1", ["boolean"], False, c1_m176__setrunning), 
            jr.Method("end_0", [], False, c1_m177__end), 
            jr.Method("endGameThread_0", [], False, c1_m178__endgamethread), 
            jr.Method("createHighScore_1", ["long"], False, c1_m179__createhighscore), 
            jr.Method("setHighScore_5", ["AbeClientInformationInterface", "String", "long", "boolean", "boolean"], False, c1_m180__sethighscore), 
            jr.Method("setHighScore2_5", ["AbeClientInformationInterface", "String", "long", "boolean", "boolean"], False, c1_m181__sethighscore2), 
            jr.Method("getGameStateTimeHelper_0", [], False, c1_m182__getgamestatetimehelper), 
            jr.Method("setInitialized_1", ["boolean"], False, c1_m183__setinitialized), 
            jr.Method("isInitialized_0", [], False, c1_m184__isinitialized), 
            jr.Method("getSourceId_0", [], False, c1_m185__getsourceid), 
            jr.Method("setProgressPaintable_1", ["PaintableInterface"], False, c1_m186__setprogresspaintable), 
            jr.Method("getStartIntermissionInterface_0", [], False, c1_m187__getstartintermissioninterface), 
            jr.Method("getEndLevelIntermissionInterface_0", [], False, c1_m188__getendlevelintermissioninterface), 
            jr.Method("setTouchPaintableP_1", ["Paintable"], False, c1_m189__settouchpaintablep), 
            jr.Method("getTouchPaintableP_0", [], False, c1_m190__gettouchpaintablep), 
            jr.Method("setEndGamePaintable_1", ["Paintable"], False, c1_m191__setendgamepaintable), 
            jr.Method("getEndGamePaintable_0", [], False, c1_m192__getendgamepaintable), 
            jr.Method("setIntermissionPaintable_1", ["Paintable"], False, c1_m193__setintermissionpaintable), 
            jr.Method("getIntermissionPaintable_0", [], False, c1_m194__getintermissionpaintable), 
            jr.Method("getEndGameInfoP_0", [], False, c1_m195__getendgameinfop), 
            jr.Method("setHighScoresPaintable_1", ["Paintable"], False, c1_m196__sethighscorespaintable), 
            jr.Method("getHighScoresPaintable_0", [], False, c1_m197__gethighscorespaintable), 
            jr.Method("getRealHighScoresPaintable_0", [], False, c1_m198__getrealhighscorespaintable), 
            jr.Method("clearPlayerGameInputList_0", [], False, c1_m199__clearplayergameinputlist), 
            jr.Method("addPlayerGameInput_1", ["PlayerGameInput"], False, c1_m200__addplayergameinput), 
            jr.Method("setMenuInputProcessor_1", ["BasicMenuInputProcessor"], False, c1_m201__setmenuinputprocessor), 
            jr.Method("getMenuInputProcessor_0", [], False, c1_m202__getmenuinputprocessor), 
            jr.Method("getMenuForm_0", [], False, c1_m203__getmenuform), 
            jr.Method("setMenuForm_1", ["ScrollSelectionForm"], False, c1_m204__setmenuform), 
            jr.Method("getStartLevel_0", [], False, c1_m205__getstartlevel), 
            jr.Method("setStartLevel_1", ["int"], False, c1_m206__setstartlevel), 
            jr.Method("setTouchButtonsPaintable_1", ["Paintable"], False, c1_m207__settouchbuttonspaintable), 
            jr.Method("getTouchButtonsPaintable_0", [], False, c1_m208__gettouchbuttonspaintable), 
            jr.Method("setGameInputProcessor_1", ["Processor"], False, c1_m209__setgameinputprocessor), 
            jr.Method("getGameInputProcessor_0", [], False, c1_m210__getgameinputprocessor), 
            jr.Method("setEndGameProcessor_1", ["Processor"], False, c1_m211__setendgameprocessor), 
            jr.Method("getEndGameProcessor_0", [], False, c1_m212__getendgameprocessor), 
            jr.Method("setEndGameStatePaintable_1", ["Paintable"], False, c1_m213__setendgamestatepaintable), 
            jr.Method("getEndGameStatePaintable_0", [], False, c1_m214__getendgamestatepaintable), 
            jr.Method("setNonBotPaintableP_1", ["Paintable"], False, c1_m215__setnonbotpaintablep), 
            jr.Method("getNonBotPaintableP_0", [], False, c1_m216__getnonbotpaintablep), 
            jr.Method("setStartIntermissionPaintable_1", ["InitUpdatePaintable"], False, c1_m217__setstartintermissionpaintable), 
            jr.Method("getStartIntermissionPaintable_0", [], False, c1_m218__getstartintermissionpaintable), 
            jr.Method("setMainStateProcessor_1", ["Processor"], False, c1_m219__setmainstateprocessor), 
            jr.Method("getMainStateProcessor_0", [], False, c1_m220__getmainstateprocessor), 
            jr.Method("setProcessGameProcessor_1", ["Processor"], False, c1_m221__setprocessgameprocessor), 
            jr.Method("getProcessGameProcessor_0", [], False, c1_m222__getprocessgameprocessor), 
            jr.Method("setOpenMenuPaintable_1", ["Paintable"], False, c1_m223__setopenmenupaintable), 
            jr.Method("getOpenMenuPaintable_0", [], False, c1_m224__getopenmenupaintable), 
            jr.Method("setPopupMenuInputProcessor_1", ["BasicMenuInputProcessor"], False, c1_m225__setpopupmenuinputprocessor), 
            jr.Method("getPopupMenuInputProcessor_0", [], False, c1_m226__getpopupmenuinputprocessor), 
            jr.Method("getSensorGameUpdateProcessor_0", [], False, c1_m227__getsensorgameupdateprocessor), 
            jr.Method("getRawGameInputProcessor_0", [], False, c1_m228__getrawgameinputprocessor), 
            jr.Method("getRawInputProcessor_0", [], False, c1_m229__getrawinputprocessor), 
            jr.Method("setInputProcessor_1", ["InputProcessor"], False, c1_m230__setinputprocessor), 
            jr.Method("getInputProcessor_0", [], False, c1_m231__getinputprocessor), 
            jr.Method("setMenuPaintable_1", ["Paintable"], False, c1_m232__setmenupaintable), 
            jr.Method("getMenuPaintable_0", [], False, c1_m233__getmenupaintable), 
            jr.Method("setFormPaintable_1", ["Paintable"], False, c1_m234__setformpaintable), 
            jr.Method("getFormPaintable_0", [], False, c1_m235__getformpaintable), 
            jr.Method("setGameSpecificPaintableP_1", ["Paintable"], False, c1_m236__setgamespecificpaintablep), 
            jr.Method("getGameSpecificPaintableP_0", [], False, c1_m237__getgamespecificpaintablep), 
            jr.Method("isSingleThread_0", [], False, c1_m238__issinglethread), 
            jr.Method("isRunningInAnotherThread_0", [], False, c1_m239__isrunninginanotherthread), 
            jr.Method("getType_0", [], False, c1_m241__gettype), 
            jr.Method("getTitle_0", [], False, c1_m242__gettitle), 
            jr.Method("isPaused_0", [], False, c1_m243__ispaused), 
            jr.Method("jinit_5", ["CommandListener", "AllBinaryGameLayerManager", "HighScoresFactoryInterface", "BasicBuildGameInitializerFactory", "boolean"], False, c1_jinit76)],
        c1_jfields,
        c1_jclinit,
    )
}

