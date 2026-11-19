// Generated Code Do Not Modify
// package org.allbinary.game.score.displayable
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HighScoresCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "paintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.set_field(this, "highScoreCommandsFactory", jr.call_static("HighScoreCommandsFactory", "getInstance_0", []))
    jr.set_field(this, "waitPaintable", jr.new("SimpleTextPaintable", [jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "PLEASE_WAIT_FOR_SERVER"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
    jr.set_field(this, "highScoresHelper", jr.new("HighScoresHelperBase", []))
    jr.set_field(this, "currentCommand", jr.aget(jr.get_field(jr.get_field(this, "highScoreCommandsFactory"), "HIGH_SCORE_COMMANDS"), jr.JInt(0)))
    jr.set_field(this, "hasPainted", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m14__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "HighScoresCanvas", "removeAllCommands_0", [])
        jr.call_inherited(this, "HighScoresCanvas", "addCommand_1", [jr.get_field(jr.call_static("GameCommandsFactory", "getInstance_0", []), "CLOSE_AND_SHOW_GAME_CANVAS")])
        jr.call_inherited(this, "HighScoresCanvas", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m15__open(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("GameCommandCanvas", this, "open_0", [])
        jr.call(jr.get_field(this, "highScoresCanvasInputProcessor"), "open_0", [])
    jr.JNull
}

fn c1_m16__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_super("GameCommandCanvas", this, "close_0", [])
        jr.call(jr.get_field(this, "highScoresCanvasInputProcessor"), "close_0", [])
    jr.JNull
}

fn c1_m17__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "colorFillPaintable"), "paint_1", [l_graphics])
        jr.call(jr.get_field(this, "paintable"), "paint_1", [l_graphics])
        case jr.truth(jr.ne(jr.get_field(this, "waitPaintable"), jr.get_field(this, "paintable"))) {
            True -> {
            jr.call(jr.get_field(this, "highScoresCanvasInputProcessor"), "paint_1", [l_graphics])
            Nil
        }
            False -> Nil
        }
        jr.call_super("GameCommandCanvas", this, "paint_1", [l_graphics])
        jr.set_field(this, "hasPainted", jr.JBool(True))
    jr.JNull
}

fn c1_m18__executeupdate(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "highScoresFactoryInterface"), "fetchHighScores_2", [jr.call(this, "getGameInfo_0", []), this])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "HighScoresCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "UPDATE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m19__gethighscorespaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "highScoresPaintable")
}

fn c1_m20__sethighscoresarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_scores_array] = jargs
        jr.try_catch(fn() {
            case jr.truth(jr.ne(l_high_scores_array, jr.JNull)) {
                True -> {
                jr.call(jr.get_inherited(this, "HighScoresCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "START")]), "appendint_1", [jr.alen(l_high_scores_array)]), "toString_0", []), this, jr.JStr("setHighScoresArray")])
                Nil
            }
                False -> {
                jr.call(jr.get_inherited(this, "HighScoresCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "START"), this, jr.JStr("setHighScoresArray")])
                Nil
            }
            }
            jr.call(jr.get_field(this, "highScoresHelper"), "setHighScoresArray_1", [l_high_scores_array])
            jr.call(this, "updateCommand_1", [jr.get_field(this, "currentCommand")])
            jr.call(this, "setPaintable_1", [jr.call(this, "getHighScoresPaintable_0", [])])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "HighScoresCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "UPDATE"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m21__updatecommand(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command] = jargs
        jr.call(jr.get_inherited(this, "HighScoresCanvas", "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "START")]), "append_1", [jr.call(jr.get_inherited(this, "HighScoresCanvas", "stringUtil"), "toString_1", [l_command])]), "toString_0", []), this, jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "UPDATE")])
        let l_game_commands_factory = jr.call_static("GameCommandsFactory", "getInstance_0", [])
        case jr.truth(jr.call(jr.get_field(this, "highScoreCommandsFactory"), "isHighScoreCommand_1", [l_command])) {
            True -> {
            let l_index = jr.as_i(jr.call(jr.get_field(this, "highScoreCommandsFactory"), "getIndex_1", [l_command]))
            let l_next_index = jr.cell(jr.as_i(jr.add(l_index, jr.JInt(1))))
            let l_high_scores_array = jr.call(jr.get_field(this, "highScoresHelper"), "getHighScoresArray_0", [])
            case jr.truth(jr.ge(jr.get(l_next_index), jr.alen(l_high_scores_array))) {
                True -> {
                jr.set(l_next_index, jr.as_i(jr.JInt(0)))
                Nil
            }
                False -> Nil
            }
            case jr.truth(jr.gt(jr.alen(l_high_scores_array), jr.JInt(0))) {
                True -> {
                jr.call(jr.call(this, "getHighScoresPaintable_0", []), "setHighScores_1", [jr.aget(l_high_scores_array, l_index)])
                Nil
            }
                False -> {
                jr.call(jr.call(this, "getHighScoresPaintable_0", []), "setHighScores_1", [jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", [])])
                Nil
            }
            }
            case jr.truth(jr.ne(l_index, jr.get(l_next_index))) {
                True -> {
                jr.call_inherited(this, "HighScoresCanvas", "removeAllCommands_0", [])
                jr.call_inherited(this, "HighScoresCanvas", "addCommand_1", [jr.get_field(l_game_commands_factory, "CLOSE_AND_SHOW_GAME_CANVAS")])
                jr.call_inherited(this, "HighScoresCanvas", "addCommand_1", [jr.aget(jr.get_field(jr.get_field(this, "highScoreCommandsFactory"), "HIGH_SCORE_COMMANDS"), jr.get(l_next_index))])
                Nil
            }
                False -> Nil
            }
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "currentCommand", l_command)
        jr.call(this, "close_0", [])
        jr.call_super("GameCommandCanvas", this, "initMenu_0", [])
        jr.call(this, "open_0", [])
        jr.call(jr.get_inherited(this, "HighScoresCanvas", "repaintBehavior"), "onChangeRepaint_1", [this])
    jr.JNull
}

fn c1_m22__getgameinfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gameInfo")
}

fn c1_m23__setpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_paintable] = jargs
        jr.set_field(this, "paintable", l_paintable)
        jr.call(jr.get_inherited(this, "HighScoresCanvas", "repaintBehavior"), "onChangeRepaint_1", [this])
    jr.JNull
}

fn c1_jinit13(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener, l_all_binary_game_layer_manager, l_game_info, l_paintable, l_high_scores_factory_interface, l_high_scores_canvas_input_processor_factory_interface] = jargs
        jr.super_init("GameCommandCanvas", this, [l_command_listener, jr.get_static("HighScoresCanvas", "NAME"), jr.call(l_all_binary_game_layer_manager, "getBackgroundBasicColor_0", []), jr.call(l_all_binary_game_layer_manager, "getForegroundBasicColor_0", [])])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "HighScoresCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "START"), this, jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "CONSTRUCTOR")])
        jr.set_field(this, "highScoresPaintable", l_paintable)
        jr.set_field(this, "highScoresFactoryInterface", l_high_scores_factory_interface)
        jr.set_field(this, "highScoresCanvasInputProcessor", jr.call(l_high_scores_canvas_input_processor_factory_interface, "getInstance_1", [this]))
        jr.set_field(this, "gameInfo", l_game_info)
        jr.call(jr.get_field(this, "waitPaintable"), "setBasicColorP_1", [jr.call(l_all_binary_game_layer_manager, "getForegroundBasicColor_0", [])])
        jr.call(jr.call(this, "getHighScoresPaintable_0", []), "setBasicColorP_1", [jr.call(l_all_binary_game_layer_manager, "getForegroundBasicColor_0", [])])
        jr.set_field(this, "colorFillPaintable", jr.call(jr.call_static("ColorFillPaintableFactory", "getInstance_0", []), "getInstance_2", [jr.call(l_all_binary_game_layer_manager, "getBackgroundBasicColor_0", []), jr.JBool(False)]))
        case jr.truth(jr.eq(jr.alen(jr.call(jr.get_field(this, "highScoresHelper"), "getHighScoresArray_0", [])), jr.alen(jr.get_field(jr.call_static("NoHighScoresFactory", "getInstance_0", []), "NO_HIGH_SCORES")))) {
            True -> {
            jr.call(this, "setPaintable_1", [jr.get_field(this, "waitPaintable")])
            Nil
        }
            False -> {
            jr.call(jr.get_inherited(this, "HighScoresCanvas", "logUtil"), "putF_3", [jr.JStr("Show HighScores that are already loaded"), this, jr.get_field(jr.get_inherited(this, "HighScoresCanvas", "commonStrings"), "CONSTRUCTOR")])
            jr.call(this, "updateCommand_1", [jr.get_field(this, "currentCommand")])
            jr.call(this, "setPaintable_1", [jr.call(this, "getHighScoresPaintable_0", [])])
            Nil
        }
        }
        jr.call(jr.call_static("SecondaryThreadPool", "getInstance_0", []), "runTask_1", [jr.new("HighScoreRunnable", [this])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HighScoresCanvas",
        "org.allbinary.game.score.displayable.HighScoresCanvas",
        "GameCommandCanvas",
        ["HighScoresResultsListener"],
        False,
        [#("paintable", jr.JNull), #("highScoreCommandsFactory", jr.JNull), #("waitPaintable", jr.JNull), #("highScoresPaintable", jr.JNull), #("highScoresFactoryInterface", jr.JNull), #("colorFillPaintable", jr.JNull), #("highScoresHelper", jr.JNull), #("gameInfo", jr.JNull), #("highScoresCanvasInputProcessor", jr.JNull), #("currentCommand", jr.JNull), #("hasPainted", jr.JBool(False))],
        [#("NAME", jr.JStr("HighScoresCanvas"))],
        [
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m14__initcommands), 
            jr.Method("open_0", [], False, c1_m15__open), 
            jr.Method("close_0", [], False, c1_m16__close), 
            jr.Method("paint_1", ["Graphics"], False, c1_m17__paint), 
            jr.Method("executeUpdate_0", [], False, c1_m18__executeupdate), 
            jr.Method("getHighScoresPaintable_0", [], False, c1_m19__gethighscorespaintable), 
            jr.Method("setHighScoresArray_1", ["HighScoresArr"], False, c1_m20__sethighscoresarray), 
            jr.Method("updateCommand_1", ["Command"], False, c1_m21__updatecommand), 
            jr.Method("getGameInfo_0", [], False, c1_m22__getgameinfo), 
            jr.Method("setPaintable_1", ["Paintable"], False, c1_m23__setpaintable), 
            jr.Method("jinit_6", ["CommandListener", "AllBinaryGameLayerManager", "GameInfo", "HighScoresPaintable", "HighScoresFactoryInterface", "HighScoresCanvasInputProcessorFactoryInterface"], False, c1_jinit13)],
        c1_jfields,
        c1_jclinit,
    )
}

