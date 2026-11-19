// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameMidlet

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "enumerationUtil", jr.call_static("EnumerationUtil", "getInstance_0", []))
    jr.set_field(this, "basicColorFactory", jr.call_static("BasicColorFactory", "getInstance_0", []))
    jr.set_field(this, "features", jr.call_static("Features", "getInstance_0", []))
    jr.set_field(this, "midletStrings", jr.call_static("MidletStrings", "getInstance_0", []))
    jr.set_field(this, "myCommandsFactory", jr.call_static("MyCommandsFactory", "getInstance_0", []))
    jr.set_field(this, "gameStrings", jr.call_static("GameStrings", "getInstance_0", []))
    jr.set_field(this, "gameAdStateFactory", jr.call_static("GameAdStateFactory", "getInstance_0", []))
    jr.set_field(this, "gameStateFactory", jr.call_static("GameStateFactory", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "DISPLAYABLE", jr.JStr(" Displayable: "))
    jr.set_field(this, "COMMAND_NAME", jr.JStr("command Name/Label: "))
    jr.set_field(this, "NO_COMMAND", jr.JStr("No Command"))
    jr.set_field(this, "NO_DISPLAYABLE", jr.JStr("No Displayable"))
    jr.set_field(this, "COMMAND_ACTION", jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("GameMidlet::")]), "append_1", [jr.get_field(jr.get_field(this, "midletStrings"), "COMMAND_ACTION")]), "toString_0", []))
    jr.set_field(this, "PAUSE_APP_BACKGROUND", jr.JStr("pauseAppBackground"))
    jr.set_field(this, "UN_PAUSE_APP_BACKGROUND", jr.JStr("unPauseAppBackground"))
    jr.set_field(this, "aboutCommandProcessor", jr.call_static("AboutCommandProcessor", "getInstance_0", []))
    jr.set_field(this, "webCommandProcessor", jr.call_static("WebCommandProcessor", "getInstance_0", []))
    jr.set_field(this, "gameMidletStateFactory", jr.call_static("GameMidletStateFactory", "getInstance_0", []))
    jr.set_field(this, "gameStartTimeHelper", jr.new("TimeDelayHelper", [jr.JInt(240)]))
    jr.set_field(this, "fullScreenUtil", jr.call_static("FullScreenUtil", "getInstance_0", []))
    jr.set_field(this, "allbinaryGameCanvasRunnableInterface", jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE"))
    jr.set_field(this, "thread", jr.get_static("NullThread", "NULL_THREAD"))
    jr.set_field(this, "startedBefore", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m29__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m30__setdemo(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m31__creategame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m32__mediashutdown(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m33__stopall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m34__pauseapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "pauseAppBackground_1", [jr.JBool(True)])
        let l_game_ad_state = jr.call(jr.get_field(this, "gameAdStateFactory"), "getCurrentInstance_0", [])
        jr.call(jr.call(l_game_ad_state, "getAdvertisements_0", []), "stopAll_0", [])
    jr.JNull
}

fn c1_m35__pauseappbackground(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_background] = jargs
        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "START"), this, jr.get_field(this, "PAUSE_APP_BACKGROUND")])
        case jr.truth(jr.ne(jr.get_field(this, "allbinaryGameCanvasRunnableInterface"), jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE"))) {
            True -> {
            jr.call(jr.get_field(this, "allbinaryGameCanvasRunnableInterface"), "pause_0", [])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("<<<<<< Null"), this, jr.get_field(this, "PAUSE_APP_BACKGROUND")])
            Nil
        }
        }
        jr.call(jr.call_static("AllBinarySensorManager", "getInstance_0", []), "shutdown_0", [])
    jr.JNull
}

fn c1_m36__unpauseapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "unPauseAppBackground_1", [jr.JBool(True)])
        let l_game_ad_state = jr.call(jr.get_field(this, "gameAdStateFactory"), "getCurrentInstance_0", [])
        jr.call(jr.call(l_game_ad_state, "getAdvertisements_0", []), "startAll_0", [])
    jr.JNull
}

fn c1_m37__unpauseappbackground(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_background] = jargs
        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "START"), this, jr.get_field(this, "UN_PAUSE_APP_BACKGROUND")])
        jr.call(jr.call_static("AllBinarySensorManager", "getInstance_0", []), "init_0", [])
        let l_game_canvas_runnable_interface = jr.get_field(this, "allbinaryGameCanvasRunnableInterface")
        case jr.truth(jr.ne(l_game_canvas_runnable_interface, jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE"))) {
            True -> {
            jr.call(l_game_canvas_runnable_interface, "unPause_0", [])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("<<<<<< Null"), this, jr.get_field(this, "UN_PAUSE_APP_BACKGROUND")])
            Nil
        }
        }
    jr.JNull
}

fn c1_m38__destroyappinrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_unconditional, l_is_progress] = jargs
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        case jr.truth(l_is_progress) {
            True -> {
            jr.call(l_progress_canvas, "start_0", [])
            jr.call(this, "commandAction_2", [jr.get_field(jr.get_field(this, "myCommandsFactory"), "SET_DISPLAYABLE"), l_progress_canvas])
            Nil
        }
            False -> Nil
        }
        jr.call(this, "destroyApp_1", [l_unconditional])
        case jr.truth(l_is_progress) {
            True -> {
            jr.call(l_progress_canvas, "end_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m39__destroyapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_unconditional] = jargs
        let l__m_e_t_h_o_d___n_a_m_e = jr.JStr("GameMidlet::destroyApp")
        jr.try_catch(fn() {
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call_static("GameStatisticsFactory", "getInstance_0", []), "toString_0", []), this, l__m_e_t_h_o_d___n_a_m_e])
            let l_game_ad_state = jr.call(jr.get_field(this, "gameAdStateFactory"), "getCurrentInstance_0", [])
            jr.call(jr.call(l_game_ad_state, "getAdvertisements_0", []), "stopAll_0", [])
            case jr.truth(jr.not(jr.call_inherited(this, "GameMidlet", "isDestroyed_0", []))) {
                True -> {
                jr.call(this, "stopGameCanvasRunnableInterface_0", [])
                jr.call(this, "setGameCanvasRunnableInterface_1", [jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE")])
                jr.call(this, "mediaShutdown_0", [])
                Nil
            }
                False -> {
                jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("Midlet Managment Error: Midlet Should Only Be Destroyed Once"), this, l__m_e_t_h_o_d___n_a_m_e])
                Nil
            }
            }
            jr.call_super("ProgressMidlet", this, "destroyApp_1", [jr.JBool(True)])
            jr.call_static("PreLogUtil", "put_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "END"), this, l__m_e_t_h_o_d___n_a_m_e])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "EXCEPTION"), this, l__m_e_t_h_o_d___n_a_m_e, l_e])
            Nil
        } })], fn() { Nil })
        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "END"), this, l__m_e_t_h_o_d___n_a_m_e])
    jr.JNull
}

fn c1_m40__startapp(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            let l_game_ad_state = jr.call(jr.get_field(this, "gameAdStateFactory"), "getCurrentInstance_0", [])
            jr.call(jr.call(l_game_ad_state, "getAdvertisements_0", []), "startAll_0", [])
            let l__s_t_a_r_t___a_p_p = jr.JStr("startApp")
            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "START"), this, l__s_t_a_r_t___a_p_p])
            let l_game_canvas_runnable_interface = jr.get_field(this, "allbinaryGameCanvasRunnableInterface")
            case jr.truth(jr.eq(l_game_canvas_runnable_interface, jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE"))) {
                True -> {
                jr.call(jr.get_field(this, "gameMidletStateFactory"), "setCurrentGameState_1", [jr.get_field(jr.get_field(this, "gameStateFactory"), "NO_GAME_STATE")])
                jr.call(this, "setDemo_0", [])
                Nil
            }
                False -> {
                jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("GameCanvasRunnableInterface is available"), this, l__s_t_a_r_t___a_p_p])
                case jr.truth(jr.eq(l_game_canvas_runnable_interface, jr.call_inherited(this, "GameMidlet", "getCurrentDisplayable_0", []))) {
                    True -> {
                    jr.call(this, "unPauseAppBackground_1", [jr.JBool(False)])
                    Nil
                }
                    False -> {
                    jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("GameCanvasRunnableInterface is not current displayable"), this, l__s_t_a_r_t___a_p_p])
                    Nil
                }
                }
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "EXCEPTION"), this, jr.JStr("startApp"), l_e])
            jr.call(this, "destroyApp_1", [jr.JBool(False)])
            jr.call_inherited(this, "GameMidlet", "notifyDestroyed_0", [])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m41__commandaction(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command, l_displayable] = jargs
        jr.try_catch(fn() {
            let l_displayable_as_string = jr.cell(jr.get_field(this, "NO_DISPLAYABLE"))
            case jr.truth(jr.ne(l_displayable, jr.JNull)) {
                True -> {
                jr.set(l_displayable_as_string, jr.call(l_displayable, "toString_0", []))
                Nil
            }
                False -> Nil
            }
            let l_label = jr.cell(jr.get_field(this, "NO_COMMAND"))
            case jr.truth(jr.ne(l_command, jr.JNull)) {
                True -> {
                jr.set(l_label, jr.call(l_command, "getLabel_0", []))
                Nil
            }
                False -> Nil
            }
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(this, "COMMAND_NAME")]), "append_1", [jr.get(l_label)]), "append_1", [jr.get_field(this, "DISPLAYABLE")]), "append_1", [jr.get(l_displayable_as_string)]), "toString_0", []), this, jr.get_field(this, "COMMAND_ACTION")])
            let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
            let l_allbinary_game_canvas_runnable_interface = jr.get_field(this, "allbinaryGameCanvasRunnableInterface")
            let l_game_canvas_runnable_interface = l_allbinary_game_canvas_runnable_interface
            case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "SHOW_GAME_CANVAS"))) {
                True -> {
                case jr.truth(case jr.truth(jr.ne(jr.call(jr.call_inherited(this, "GameMidlet", "getDisplay_0", []), "getCurrent_0", []), l_game_canvas_runnable_interface)) { True -> jr.ne(jr.call(l_allbinary_game_canvas_runnable_interface, "getType_0", []), jr.call(jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE"), "getType_0", [])) False -> jr.JBool(False) }) {
                    True -> {
                    jr.call_inherited(this, "GameMidlet", "setDisplay_1", [l_game_canvas_runnable_interface])
                    Nil
                }
                    False -> Nil
                }
                jr.call(this, "unPauseAppBackground_1", [jr.JBool(False)])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "CLOSE_AND_SHOW_GAME_CANVAS"))) {
                True -> {
                let l_menu_listener = l_displayable
                jr.call(l_menu_listener, "close_0", [])
                jr.call_inherited(this, "GameMidlet", "setDisplay_1", [l_game_canvas_runnable_interface])
                jr.call(this, "unPauseAppBackground_1", [jr.JBool(False)])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "EXIT_COMMAND"))) {
                True -> {
                case jr.truth(jr.eq(jr.call(jr.call(jr.call_static("GameMidletEventHandler", "getInstance_0", []), "getEventListenerInterfaceListP_0", []), "size_0", []), jr.JInt(0))) {
                    True -> {
                    jr.call_inherited(this, "GameMidlet", "exitProgress_1", [jr.JBool(True)])
                    Nil
                }
                    False -> Nil
                }
                jr.call(jr.call_static("GameMidletEventHandler", "getInstance_0", []), "fireEvent_1", [jr.new("DemoGameMidletEvent", [this, jr.get_field(jr.call_static("DemoGameMidletStateFactory", "getInstance_0", []), "NONE")])])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "EXIT_WITHOUT_PROGRESS_COMMAND"))) {
                True -> {
                jr.call_inherited(this, "GameMidlet", "exitProgress_1", [jr.JBool(False)])
                Nil
            }
                False -> case jr.truth(case jr.truth(case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "START_COMMAND"))) { True -> jr.JBool(True) False -> jr.eq(l_command, jr.get_field(l_game_commands_factory, "RESTART_COMMAND")) }) { True -> jr.JBool(True) False -> jr.eq(l_command, jr.get_field(l_game_commands_factory, "CONTINUE_COMMAND")) }) {
                True -> {
                case jr.truth(case jr.truth(jr.ne(jr.call(jr.get_field(this, "gameMidletStateFactory"), "getCurrentGameState_0", []), jr.get_field(jr.get_field(this, "gameStateFactory"), "PLAYING_GAME_STATE"))) { True -> jr.JBool(True) False -> jr.eq(l_command, jr.get_field(l_game_commands_factory, "RESTART_COMMAND")) }) {
                    True -> {
                    case jr.truth(jr.call(jr.get_field(this, "gameStartTimeHelper"), "isTimeTNT_0", [])) {
                        True -> {
                        case jr.truth(case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "START_COMMAND"))) { True -> jr.call(this, "isDemoLoading_0", []) False -> jr.JBool(False) }) {
                            True -> {
                            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("Trying to Start Game Before Loading Complete"), this, jr.get_field(jr.get_field(this, "midletStrings"), "COMMAND_ACTION")])
                            Nil
                        }
                            False -> {
                            jr.set_field(this, "startedBefore", jr.JBool(True))
                            jr.call(this, "createGame_0", [])
                            jr.call(jr.get_field(this, "gameMidletStateFactory"), "setCurrentGameState_1", [jr.get_field(jr.get_field(this, "gameStateFactory"), "PLAYING_GAME_STATE")])
                            Nil
                        }
                        }
                        Nil
                    }
                        False -> {
                        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("Starting Game Too Often"), this, jr.get_field(jr.get_field(this, "midletStrings"), "COMMAND_ACTION")])
                        Nil
                    }
                    }
                    Nil
                }
                    False -> {
                    jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("Already in playing state"), this, jr.get_field(this, "COMMAND_ACTION")])
                    Nil
                }
                }
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "BUY_COMMAND"))) {
                True -> {
                let l_in_application_purchase_factory = jr.call_static("InApplicationPurchaseFactory", "getInstance_0", [])
                let l_list = jr.call(jr.call_static("LockableFeatureFactory", "getInstance_0", []), "getList_0", [])
                let l_lockable_feature = jr.call(l_list, "get_1", [jr.JInt(0)])
                case jr.truth(case jr.truth(jr.gt(jr.call(l_list, "size_0", []), jr.JInt(0))) { True -> jr.not(jr.call(l_in_application_purchase_factory, "isPurchased_1", [l_lockable_feature])) False -> jr.JBool(False) }) {
                    True -> {
                    jr.call(l_in_application_purchase_factory, "purchase_1", [l_lockable_feature])
                    Nil
                }
                    False -> {
                    jr.call(jr.call_static("TextNotificationUtil", "getInstance_0", []), "fireSuccess_1", [jr.JStr("Already Purchased")])
                    Nil
                }
                }
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "QUIT_COMMAND"))) {
                True -> {
                case jr.truth(jr.call(jr.get_field(this, "gameStartTimeHelper"), "isTimeTNT_0", [])) {
                    True -> {
                    case jr.truth(jr.instance_of(l_displayable, "HighScoreTextBox")) {
                        True -> {
                        let l_menu_listener = l_displayable
                        jr.call(l_menu_listener, "close_0", [])
                        Nil
                    }
                        False -> Nil
                    }
                    jr.call(this, "stopGameCanvasRunnableInterface_0", [])
                    jr.call(jr.get_field(this, "gameMidletStateFactory"), "setCurrentGameState_1", [jr.get_field(jr.get_field(this, "gameStateFactory"), "NO_GAME_STATE")])
                    jr.call(this, "setDemo_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(jr.get_field(this, "myCommandsFactory"), "RESUME_COMMAND"))) {
                True -> {
                jr.call(this, "unPauseAppBackground_1", [jr.JBool(False)])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(jr.get_field(this, "myCommandsFactory"), "PAUSE_COMMAND"))) {
                True -> {
                jr.call(this, "pauseAppBackground_1", [jr.JBool(False)])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(jr.get_field(this, "myCommandsFactory"), "SET_DISPLAYABLE"))) {
                True -> {
                jr.call(this, "pauseAppBackground_1", [jr.JBool(False)])
                jr.call_inherited(this, "GameMidlet", "setDisplay_1", [l_displayable])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "SET_MENU_DISPLAYABLE"))) {
                True -> {
                jr.call(this, "pauseAppBackground_1", [jr.JBool(False)])
                let l_menu_listener = l_displayable
                jr.call(l_menu_listener, "open_0", [])
                jr.call_inherited(this, "GameMidlet", "setDisplay_1", [l_displayable])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "START_TRACE"))) {
                True -> {
                jr.call(jr.get_field(this, "debugInterface"), "start_0", [])
                let l_game_canvas = l_allbinary_game_canvas_runnable_interface
                jr.call(l_game_canvas, "addCommand_1", [jr.get_field(l_game_commands_factory, "STOP_TRACE")])
                jr.call(l_game_canvas, "removeCommand_1", [jr.get_field(l_game_commands_factory, "START_TRACE")])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "STOP_TRACE"))) {
                True -> {
                jr.call(this, "pauseAppBackground_1", [jr.JBool(False)])
                jr.call(jr.get_field(this, "debugInterface"), "stop_0", [])
                jr.call(this, "unPauseAppBackground_1", [jr.JBool(False)])
                let l_game_canvas = l_allbinary_game_canvas_runnable_interface
                jr.call(l_game_canvas, "addCommand_1", [jr.get_field(l_game_commands_factory, "START_TRACE")])
                jr.call(l_game_canvas, "removeCommand_1", [jr.get_field(l_game_commands_factory, "STOP_TRACE")])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "DEFAULT_OPTIONS"))) {
                True -> {
                let l_temp_displayable = l_displayable
                case jr.truth(jr.instance_of(l_temp_displayable, "GameOptionsForm")) {
                    True -> {
                    jr.call(jr.call_static("GameFeatureFormUtil", "getInstance_0", []), "setDefault_1", [l_temp_displayable])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_static("GameInputMappingInstructionsCanvas", "DISPLAY"))) {
                True -> {
                let l_temp_displayable = l_displayable
                case jr.truth(jr.instance_of(l_temp_displayable, "GameInputMappingCanvas")) {
                    True -> {
                    let l_game_input_mapping_canvas = l_temp_displayable
                    jr.call(l_game_input_mapping_canvas, "update_0", [])
                    Nil
                }
                    False -> Nil
                }
                jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "SET_MENU_DISPLAYABLE"), jr.call(this, "getInputMappingInstructionsCanvas_0", [])])
                Nil
            }
                False -> case jr.truth(jr.call(jr.call_static("HighScoreCommandsFactory", "getInstance_0", []), "isHighScoreCommand_1", [l_command])) {
                True -> {
                let l_temp_displayable = l_displayable
                case jr.truth(jr.instance_of(l_temp_displayable, "HighScoresCanvas")) {
                    True -> {
                    let l_high_scores_canvas = l_temp_displayable
                    jr.call(l_high_scores_canvas, "updateCommand_1", [l_command])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(jr.call_static("HighScoreCommands", "getInstance_0", []), "DISPLAY"))) {
                True -> {
                jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "SET_MENU_DISPLAYABLE"), jr.call(this, "createHighScoresCanvas_0", [])])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_static("GameInputMappingInstructionsCanvas", "CLOSE"))) {
                True -> {
                let l_menu_listener = l_displayable
                jr.call(l_menu_listener, "close_0", [])
                jr.call(this, "commandAction_2", [jr.get_static("GameInputMappingCanvas", "DISPLAY"), jr.get_static("NullCanvas", "NULL_CANVAS")])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_static("GameInputMappingCanvas", "DISPLAY"))) {
                True -> {
                case jr.truth(jr.call_static("J2MEUtil", "isHTML_0", [])) {
                    True -> {
                    jr.call(this, "pauseAppBackground_1", [jr.JBool(False)])
                    Nil
                }
                    False -> Nil
                }
                jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "SET_MENU_DISPLAYABLE"), jr.call(this, "getInputMappingCanvas_0", [])])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_static("GameInputMappingCanvas", "DEFAULT"))) {
                True -> {
                let l_temp_displayable = l_displayable
                case jr.truth(jr.instance_of(l_temp_displayable, "GameInputMappingCanvas")) {
                    True -> {
                    let l_game_input_mapping_canvas = l_temp_displayable
                    jr.call(l_game_input_mapping_canvas, "setDefault_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_static("InGameOptionsForm", "DISPLAY"))) {
                True -> {
                jr.call(this, "pauseAppBackground_1", [jr.JBool(False)])
                let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
                jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("In Game Options")])
                let l_layer_manager = jr.call(this, "createGameLayerManager_0", [])
                let l_in_game_options_form_factory = jr.call_static("InGameOptionsFormFactory", "getInstance_0", [])
                jr.call(l_in_game_options_form_factory, "init_5", [this, jr.new("InGameFeatures", []), jr.JStr("Options In Game"), jr.call(l_layer_manager, "getBackgroundBasicColor_0", []), jr.call(l_layer_manager, "getForegroundBasicColor_0", [])])
                let l_in_game_options_form = jr.call(l_in_game_options_form_factory, "get_0", [])
                jr.call(l_in_game_options_form, "setItemStateListener_1", [l_allbinary_game_canvas_runnable_interface])
                jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "SET_MENU_DISPLAYABLE"), l_in_game_options_form])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_static("InGameOptionsForm", "DEFAULT"))) {
                True -> {
                let l_in_game_options_form = jr.call(jr.call_static("InGameOptionsFormFactory", "getInstance_0", []), "get_0", [])
                jr.call(jr.call_static("GameFeatureFormUtil", "getInstance_0", []), "setDefault_1", [l_in_game_options_form])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "DISPLAY_OPTIONS"))) {
                True -> {
                jr.call_static("AllBinaryMediaManager", "setMuted_1", [jr.JBool(True)])
                jr.call(this, "stopAll_0", [])
                let l_main_feature_factory = jr.call_static("MainFeatureFactory", "getInstance_0", [])
                jr.set_field(this, "isFullScreen", jr.call(jr.get_field(this, "features"), "isFeature_1", [jr.get_field(l_main_feature_factory, "FULL_SCREEN")]))
                jr.call(jr.call_static("ResizableListenerHandler", "getInstance_0", []), "fireEvent_1", [jr.JBool(True)])
                jr.call(this, "setResized_1", [jr.JBool(False)])
                jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "SET_MENU_DISPLAYABLE"), jr.call(this, "getGameOptionsForm_0", [])])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "CLOSE_OPTIONS"))) {
                True -> {
                jr.call(jr.call_static("ResizableListenerHandler", "getInstance_0", []), "fireEvent_1", [jr.JBool(False)])
                jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "CLOSE_AND_SHOW_GAME_CANVAS"), l_displayable])
                let l_string_buffer = jr.new("StringMaker", [])
                jr.call(l_string_buffer, "append_1", [jr.JStr("Close isFullScreen/change: ")])
                jr.call(l_string_buffer, "appendboolean_1", [jr.get_field(this, "isFullScreen")])
                jr.call(l_string_buffer, "appendboolean_1", [jr.call(jr.get_field(this, "fullScreenUtil"), "isScreenChange_1", [jr.get_field(this, "isFullScreen")])])
                jr.call(l_string_buffer, "append_1", [jr.JStr(" isResized: ")])
                jr.call(l_string_buffer, "appendboolean_1", [jr.call(this, "isResized_0", [])])
                jr.call_static("PreLogUtil", "put_3", [jr.call(l_string_buffer, "toString_0", []), this, jr.get_field(this, "COMMAND_ACTION")])
                case jr.truth(case jr.truth(jr.call(this, "isResized_0", [])) { True -> jr.JBool(True) False -> jr.call(jr.get_field(this, "fullScreenUtil"), "isScreenChange_1", [jr.get_field(this, "isFullScreen")]) }) {
                    True -> {
                    jr.call(this, "updateFullScreen_0", [])
                    Nil
                }
                    False -> Nil
                }
                jr.call_static("AllBinaryMediaManager", "setMuted_1", [jr.JBool(False)])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "DISPLAY_LOAD_FORM"))) {
                True -> {
                jr.call(this, "pauseAppBackground_1", [jr.JBool(False)])
                let l_key_value_persistance = jr.call_static("GamePersistanceSingleton", "getInstance_0", [])
                jr.call(l_key_value_persistance, "clear_0", [])
                jr.call(l_key_value_persistance, "loadAll_1", [jr.get_inherited(this, "GameMidlet", "abeClientInformation")])
                case jr.truth(jr.eq(jr.call(this, "getLoadGameForm_0", []), jr.call_static("CommandForm", "getNullCommandForm_0", []))) {
                    True -> {
                    let l_layer_manager = jr.call(this, "createGameLayerManager_0", [])
                    jr.call(this, "setLoadGameForm_1", [jr.new("LoadGameForm", [this, jr.JStr("Load Game"), jr.call(l_layer_manager, "getBackgroundBasicColor_0", []), jr.call(l_layer_manager, "getForegroundBasicColor_0", [])])])
                    Nil
                }
                    False -> {
                    jr.call(jr.call(this, "getLoadGameForm_0", []), "update_0", [])
                    Nil
                }
                }
                jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "SET_MENU_DISPLAYABLE"), jr.call(this, "getLoadGameForm_0", [])])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "LOAD_FILE"))) {
                True -> {
                let l_load_game_form = jr.call(this, "getLoadGameForm_0", [])
                let l_index = jr.as_i(jr.call(l_load_game_form, "getSelectedId_0", []))
                case jr.truth(jr.ne(l_index, jr.JInt(-1))) {
                    True -> {
                    let l_key_value_persistance = jr.call_static("GamePersistanceSingleton", "getInstance_0", [])
                    jr.call_inherited(this, "GameMidlet", "setStartStateHashtable_1", [jr.call(l_key_value_persistance, "get_1", [l_index])])
                    let l_menu_listener = jr.call(this, "getLoadGameForm_0", [])
                    jr.call(l_menu_listener, "close_0", [])
                    jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call_static("BasicMotionGesturesHandler", "getInstance_0", []), "toString_0", []), this, jr.get_field(this, "COMMAND_ACTION")])
                    jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "START_COMMAND"), jr.get_static("NullCanvas", "NULL_CANVAS")])
                    jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call_static("BasicMotionGesturesHandler", "getInstance_0", []), "toString_0", []), this, jr.get_field(this, "COMMAND_ACTION")])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "DELETE_FILE"))) {
                True -> {
                let l_load_game_form = jr.call(this, "getLoadGameForm_0", [])
                let l_index = jr.as_i(jr.call(l_load_game_form, "getSelectedText_0", []))
                case jr.truth(jr.ne(l_index, jr.JInt(-1))) {
                    True -> {
                    let l_key_value_persistance = jr.call_static("GamePersistanceSingleton", "getInstance_0", [])
                    jr.call(l_key_value_persistance, "delete_2", [jr.get_inherited(this, "GameMidlet", "abeClientInformation"), l_index])
                    jr.call(l_key_value_persistance, "clear_0", [])
                    jr.call(l_key_value_persistance, "loadAllSize_2", [jr.get_inherited(this, "GameMidlet", "abeClientInformation"), jr.JInt(1)])
                    jr.call(jr.call(this, "getLoadGameForm_0", []), "update_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "SAVE"))) {
                True -> {
                let l_key_value_persistance = jr.call_static("GamePersistanceSingleton", "getInstance_0", [])
                jr.call(this, "pauseAppBackground_1", [jr.JBool(False)])
                jr.call(l_key_value_persistance, "save_2", [jr.get_inherited(this, "GameMidlet", "abeClientInformation"), jr.call(this, "getCurrentStateHashtable_0", [])])
                jr.call(this, "unPauseAppBackground_1", [jr.JBool(False)])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_static("HighScoreUtil", "SUBMIT_TEXTBOX_COMMAND"))) {
                True -> {
                jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("Submitted Score"), this, jr.get_field(this, "COMMAND_ACTION")])
                case jr.truth(jr.instance_of(l_displayable, "HighScoreTextBox")) {
                    True -> {
                    let l_high_score_text_box = l_displayable
                    jr.set_field(l_high_score_text_box, "submitted", jr.JBool(True))
                    Nil
                }
                    False -> Nil
                }
                jr.call(l_allbinary_game_canvas_runnable_interface, "setHighScoreSubmitted_1", [jr.JBool(True)])
                jr.call(this, "commandAction_2", [jr.get_field(l_game_commands_factory, "CLOSE_AND_SHOW_GAME_CANVAS"), l_displayable])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "DISPLAY_ABOUT"))) {
                True -> {
                jr.call(jr.get_field(this, "aboutCommandProcessor"), "process_3", [this, jr.get_field(l_game_commands_factory, "SET_MENU_DISPLAYABLE"), jr.call(this, "getAboutCanvas_0", [])])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "OPEN_WEB_URL"))) {
                True -> {
                jr.call(jr.get_field(this, "webCommandProcessor"), "process_3", [this, jr.get_field(l_game_commands_factory, "OPEN_WEB_URL"), jr.get_static("NullCanvas", "NULL_CANVAS")])
                Nil
            }
                False -> case jr.truth(jr.eq(l_command, jr.get_field(l_game_commands_factory, "TOGGLE_KEYBOARD"))) {
                True -> {
                let l_virtual_keyboard_event_handler = jr.call_static("VirtualKeyboardEventHandler", "getInstance_0", [])
                jr.call(l_virtual_keyboard_event_handler, "fireEvent_1", [jr.get_field(l_virtual_keyboard_event_handler, "SHOW_EVENT")])
                Nil
            }
                False -> case jr.truth(jr.eq(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [jr.call(l_command, "getLabel_0", []), jr.call(jr.get_field(l_game_commands_factory, "TOGGLE_FULLSCREEN"), "getLabel_0", [])]), jr.JInt(0))) {
                True -> {
                let l_main_feature_factory = jr.call_static("MainFeatureFactory", "getInstance_0", [])
                let l_is_full_screen = jr.call(jr.get_field(this, "features"), "isFeature_1", [jr.get_field(l_main_feature_factory, "FULL_SCREEN")])
                case jr.truth(l_is_full_screen) {
                    True -> {
                    jr.call(jr.get_field(this, "features"), "removeDefault_1", [jr.get_field(l_main_feature_factory, "FULL_SCREEN")])
                    Nil
                }
                    False -> {
                    jr.call(jr.get_field(this, "features"), "addDefault_1", [jr.get_field(l_main_feature_factory, "FULL_SCREEN")])
                    Nil
                }
                }
                jr.call(this, "updateFullScreen_0", [])
                Nil
            }
                False -> Nil
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "put_4", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "EXCEPTION_LABEL")]), "append_1", [jr.call(l_command, "getLabel_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "midletStrings"), "COMMAND_ACTION"), l_e])
            case jr.truth(jr.ne(l_command, jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "EXIT_COMMAND"))) {
                True -> {
                jr.call_inherited(this, "GameMidlet", "exitProgress_1", [jr.JBool(False)])
                Nil
            }
                False -> Nil
            }
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m42__updatefullscreen(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_main_feature_factory = jr.call_static("MainFeatureFactory", "getInstance_0", [])
        let l_is_full_screen = jr.call(jr.get_field(this, "features"), "isFeature_1", [jr.get_field(l_main_feature_factory, "FULL_SCREEN")])
        let l_displayable = jr.call(jr.call_inherited(this, "GameMidlet", "getDisplay_0", []), "getCurrent_0", [])
        case jr.truth(jr.instance_of(l_displayable, "Canvas")) {
            True -> {
            let l_canvas = l_displayable
            jr.call(l_canvas, "setFullScreenMode_1", [l_is_full_screen])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m43__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m44__getinputmappinginstructionscanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("GameInputMappingInstructionsCanvas", [this, jr.call(this, "createGameLayerManager_0", [])])
}

fn c1_m45__getinputmappingcanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("GameInputMappingCanvas", [jr.get_inherited(this, "GameMidlet", "abeClientInformation"), this, jr.call(this, "createGameLayerManager_0", []), jr.call(this, "getHelpPaintable_0", [])])
}

fn c1_m46__getaboutcanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("BasicPaintablesCanvas", [this, jr.get_field(jr.call_static("CanvasStrings", "getInstance_0", []), "ABOUT"), jr.call(this, "createGameLayerManager_0", []), jr.get_field(jr.call_static("AboutPaintableFactory", "getInstance_0", []), "paintableArray")])
}

fn c1_m47__gethelppaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m48__createhighscorescanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m49__startgamecanvasrunnableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_thread_factory_util = jr.call_static("ThreadFactoryUtil", "getInstance_0", [])
        jr.set_field(this, "thread", jr.call(l_thread_factory_util, "getInstanceGameCanvasRunnable_1", [jr.get_field(this, "allbinaryGameCanvasRunnableInterface")]))
        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Thread Priority: ")]), "appendint_1", [jr.call(jr.get_field(this, "thread"), "getPriority_0", [])]), "toString_0", []), this, jr.JStr("startGameCanvasRunnableInterface")])
        jr.call(jr.get_field(this, "allbinaryGameCanvasRunnableInterface"), "setThread_1", [jr.get_field(this, "thread")])
        jr.call(l_thread_factory_util, "start_1", [jr.get_field(this, "thread")])
    jr.JNull
}

fn c1_m50__stopgamecanvasrunnableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "START"), this, jr.get_field(jr.get_field(this, "gameStrings"), "STOP_GAME_CANVAS_RUNNABLE_INTERFACE")])
        jr.call(jr.call_static("GameNotificationEventHandler", "getInstance_0", []), "removeAllListeners_0", [])
        jr.call(jr.call_static("ColorChangeEventHandler", "getInstance_0", []), "removeAllListeners_0", [])
        jr.call_static("GameEventHandlerUtil", "removeAllListeners_0", [])
        let l_game_canvas_runnable_interface = jr.get_field(this, "allbinaryGameCanvasRunnableInterface")
        case jr.truth(jr.ne(l_game_canvas_runnable_interface, jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE"))) {
            True -> {
            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Set Running False: ")]), "append_1", [jr.call(l_game_canvas_runnable_interface, "toString_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "gameStrings"), "STOP_GAME_CANVAS_RUNNABLE_INTERFACE")])
            jr.call(l_game_canvas_runnable_interface, "setRunning_1", [jr.JBool(False)])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.JStr("StopGame - Could Not Stop"), this, jr.get_field(jr.get_field(this, "gameStrings"), "STOP_GAME_CANVAS_RUNNABLE_INTERFACE")])
            Nil
        }
        }
        jr.call(jr.call_static("ThreadUtil", "getInstance_0", []), "join_1", [jr.get_field(this, "thread")])
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        case jr.truth(jr.call(jr.get_field(this, "features"), "isFeature_1", [jr.get_field(jr.call_static("MainFeatureFactory", "getInstance_0", []), "LOAD_ALL")])) {
            True -> {
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Stopped Game Runnable")])
            Nil
        }
            False -> {
            jr.call(l_progress_canvas, "addNormalPortion_2", [jr.JInt(50), jr.JStr("Stopped Main Runnable")])
            Nil
        }
        }
        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "END"), this, jr.get_field(jr.get_field(this, "gameStrings"), "STOP_GAME_CANVAS_RUNNABLE_INTERFACE")])
    jr.JNull
}

fn c1_m51__getgamecanvasrunnableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "allbinaryGameCanvasRunnableInterface")
}

fn c1_m52__setgamecanvasrunnableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_canvas_runnable_interface] = jargs
        jr.set_field(this, "allbinaryGameCanvasRunnableInterface", l_game_canvas_runnable_interface)
    jr.JNull
}

fn c1_m53__creategamelayermanager(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_info = jr.new("GameInfo", [jr.get_field(jr.call_static("GameTypeFactory", "getInstance_0", []), "SINGLE_PLAYER"), jr.get_static("GameMode", "SERVER"), jr.get_field(jr.call_static("PlayerTypesFactory", "getInstance_0", []), "PLAYER_TYPE_ONE"), jr.JInt(1), jr.JInt(1)])
    jr.new("AllBinaryGameLayerManager", [jr.get_field(jr.get_field(this, "basicColorFactory"), "BLACK"), jr.get_field(jr.get_field(this, "basicColorFactory"), "WHITE"), l_game_info])
}

fn c1_m54__getgameoptionsform(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_layer_manager = jr.call(this, "createGameLayerManager_0", [])
    jr.call(jr.call_static("GameOptionsFormFactory", "getInstance_0", []), "init_4", [this, jr.JStr("Game Options"), jr.call(l_layer_manager, "getBackgroundBasicColor_0", []), jr.call(l_layer_manager, "getForegroundBasicColor_0", [])])
}

fn c1_m55__save(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "SAVE")])
        let l_hashtable = jr.call(this, "getCurrentStateHashtable_0", [])
        jr.call(jr.call_static("GamePersistanceSingleton", "getInstance_0", []), "save_2", [jr.get_inherited(this, "GameMidlet", "abeClientInformation"), l_hashtable])
    jr.JNull
}

fn c1_m56__getcurrentstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "GameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "GameMidlet", "commonStrings"), "START"), this, jr.JStr("getCurrentStateHashtable")])
        let l_hashtable = jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", [])
        case jr.truth(jr.ne(jr.get_field(this, "allbinaryGameCanvasRunnableInterface"), jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE"))) {
            True -> {
            let l_current_hashtable = jr.call(jr.get_field(this, "allbinaryGameCanvasRunnableInterface"), "getCurrentStateHashtable_0", [])
            let l_enumeration = jr.call(l_current_hashtable, "keys_0", [])
            let l_key = jr.cell(jr.JNull)
            jr.while_loop("", fn() { jr.call(jr.get_field(this, "enumerationUtil"), "hasMoreElements_1", [l_enumeration]) }, fn() {
                jr.set(l_key, jr.call(jr.get_field(this, "enumerationUtil"), "nextElement_1", [l_enumeration]))
                jr.call(l_hashtable, "put_2", [jr.get(l_key), jr.call(l_current_hashtable, "get_1", [jr.get(l_key)])])
                Nil
            })
            Nil
        }
            False -> Nil
        }
    l_hashtable
}

fn c1_m57__setloadgameform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_load_game_form] = jargs
        jr.set_field(this, "loadGameForm", l_load_game_form)
    jr.JNull
}

fn c1_m58__getloadgameform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "loadGameForm")
}

fn c1_m59__setresized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resized] = jargs
        jr.set_field(this, "resized", l_resized)
    jr.JNull
}

fn c1_m60__isresized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "resized")
}

fn c1_m62__isdemoloading(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.get_field(this, "startedBefore")) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            let l_displayable = jr.call(jr.call_inherited(this, "GameMidlet", "getDisplay_0", []), "getCurrent_0", [])
            case jr.truth(jr.instance_of(l_displayable, "DemoCanvas")) {
            True -> {
            let l_demo_canvas = l_displayable
            case jr.truth(jr.call(l_demo_canvas, "isDemoLoading_0", [])) {
                True -> {
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_jinit28(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_client_information_factory] = jargs
        jr.super_init("ProgressMidlet", this, [l_client_information_factory])
        c1_jfields(this)
        jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "initWithRange_2", [jr.JInt(jr.wrap_i(0x291)), jr.JInt(6)])
        jr.set_field(this, "loadGameForm", jr.call_static("CommandForm", "getNullCommandForm_0", []))
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        jr.call(l_progress_canvas, "init_1", [this])
        jr.call(jr.call_static("GameFeatureEventHandler", "getInstance_0", []), "addListenerInterface_1", [jr.call_static("ChangedGameFeatureListener", "getInstance_0", [])])
        jr.call(jr.call_static("GamePersistanceSingleton", "getInstance_0", []), "clear_0", [])
        jr.set_field(this, "debugInterface", jr.call_static("DebugFactory", "getInstance_0", []))
        jr.call(this, "init_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameMidlet",
        "org.allbinary.game.midlet.GameMidlet",
        "ProgressMidlet",
        ["CommandListener"],
        False,
        [#("enumerationUtil", jr.JNull), #("basicColorFactory", jr.JNull), #("features", jr.JNull), #("midletStrings", jr.JNull), #("myCommandsFactory", jr.JNull), #("gameStrings", jr.JNull), #("gameAdStateFactory", jr.JNull), #("gameStateFactory", jr.JNull), #("tsUtil", jr.JNull), #("DISPLAYABLE", jr.JNull), #("COMMAND_NAME", jr.JNull), #("NO_COMMAND", jr.JNull), #("NO_DISPLAYABLE", jr.JNull), #("COMMAND_ACTION", jr.JNull), #("PAUSE_APP_BACKGROUND", jr.JNull), #("UN_PAUSE_APP_BACKGROUND", jr.JNull), #("aboutCommandProcessor", jr.JNull), #("webCommandProcessor", jr.JNull), #("gameMidletStateFactory", jr.JNull), #("gameStartTimeHelper", jr.JNull), #("fullScreenUtil", jr.JNull), #("debugInterface", jr.JNull), #("allbinaryGameCanvasRunnableInterface", jr.JNull), #("thread", jr.JNull), #("loadGameForm", jr.JNull), #("isFullScreen", jr.JBool(False)), #("resized", jr.JBool(False)), #("startedBefore", jr.JBool(False))],
        [],
        [
            jr.Method("init_0", [], False, c1_m29__init), 
            jr.Method("setDemo_0", [], False, c1_m30__setdemo), 
            jr.Method("createGame_0", [], False, c1_m31__creategame), 
            jr.Method("mediaShutdown_0", [], False, c1_m32__mediashutdown), 
            jr.Method("stopAll_0", [], False, c1_m33__stopall), 
            jr.Method("pauseApp_0", [], False, c1_m34__pauseapp), 
            jr.Method("pauseAppBackground_1", ["boolean"], False, c1_m35__pauseappbackground), 
            jr.Method("unPauseApp_0", [], False, c1_m36__unpauseapp), 
            jr.Method("unPauseAppBackground_1", ["boolean"], False, c1_m37__unpauseappbackground), 
            jr.Method("destroyAppInRunnable_2", ["boolean", "boolean"], False, c1_m38__destroyappinrunnable), 
            jr.Method("destroyApp_1", ["boolean"], False, c1_m39__destroyapp), 
            jr.Method("startApp_0", [], False, c1_m40__startapp), 
            jr.Method("commandAction_2", ["Command", "Displayable"], False, c1_m41__commandaction), 
            jr.Method("updateFullScreen_0", [], False, c1_m42__updatefullscreen), 
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m43__onevent), 
            jr.Method("getInputMappingInstructionsCanvas_0", [], False, c1_m44__getinputmappinginstructionscanvas), 
            jr.Method("getInputMappingCanvas_0", [], False, c1_m45__getinputmappingcanvas), 
            jr.Method("getAboutCanvas_0", [], False, c1_m46__getaboutcanvas), 
            jr.Method("getHelpPaintable_0", [], False, c1_m47__gethelppaintable), 
            jr.Method("createHighScoresCanvas_0", [], False, c1_m48__createhighscorescanvas), 
            jr.Method("startGameCanvasRunnableInterface_0", [], False, c1_m49__startgamecanvasrunnableinterface), 
            jr.Method("stopGameCanvasRunnableInterface_0", [], False, c1_m50__stopgamecanvasrunnableinterface), 
            jr.Method("getGameCanvasRunnableInterface_0", [], False, c1_m51__getgamecanvasrunnableinterface), 
            jr.Method("setGameCanvasRunnableInterface_1", ["GameCanvasRunnableInterface"], False, c1_m52__setgamecanvasrunnableinterface), 
            jr.Method("createGameLayerManager_0", [], False, c1_m53__creategamelayermanager), 
            jr.Method("getGameOptionsForm_0", [], False, c1_m54__getgameoptionsform), 
            jr.Method("save_0", [], False, c1_m55__save), 
            jr.Method("getCurrentStateHashtable_0", [], False, c1_m56__getcurrentstatehashtable), 
            jr.Method("setLoadGameForm_1", ["LoadGameForm"], False, c1_m57__setloadgameform), 
            jr.Method("getLoadGameForm_0", [], False, c1_m58__getloadgameform), 
            jr.Method("setResized_1", ["boolean"], False, c1_m59__setresized), 
            jr.Method("isResized_0", [], False, c1_m60__isresized), 
            jr.Method("isDemoLoading_0", [], False, c1_m62__isdemoloading), 
            jr.Method("jinit_1", ["ClientInformationFactory"], False, c1_jinit28)],
        c1_jfields,
        c1_jclinit,
    )
}

