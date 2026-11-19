// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class EndGameProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameStateFactory", jr.call_static("GameStateFactory", "getInstance_0", []))
    jr.set_field(this, "WAIT", jr.as_j(jr.JLong(5000)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.call(jr.get_field(this, "gameCanvas"), "isHighScoreSubmitted_0", [])) {
            True -> {
            case jr.truth(jr.call(jr.call(jr.get_field(this, "gameCanvas"), "getGameStateTimeHelper_0", []), "isElapsedTNT_1", [jr.get_field(this, "WAIT")])) {
                True -> {
                case jr.truth(jr.eq(jr.call(jr.get_field(this, "gameCanvas"), "getGameState_0", []), jr.get_field(jr.get_field(this, "gameStateFactory"), "SHOW_END_RESULT_GAME_STATE"))) {
                    True -> {
                    let l_high_scores_base = jr.get_field(jr.get_field(this, "gameCanvas"), "highScoresHelper")
                    let l_high_scores = jr.call(l_high_scores_base, "getSelectedHighScores_0", [])
                    case jr.truth(jr.ne(l_high_scores, jr.call_static("NullHighScoresSingletonFactory", "getInstance_0", []))) {
                        True -> {
                        jr.call(l_high_scores_base, "selectHighScores_0", [])
                        jr.call(jr.call(jr.get_field(this, "gameCanvas"), "getRealHighScoresPaintable_0", []), "setHighScores_1", [l_high_scores])
                        jr.call(jr.get_field(this, "gameCanvas"), "setGameState_1", [jr.get_field(jr.get_field(this, "gameStateFactory"), "SHOW_HIGH_SCORE_GAME_STATE")])
                        jr.call(jr.get_field(this, "gameCanvas"), "setHighScoresPaintable_1", [jr.call(jr.get_field(this, "gameCanvas"), "getRealHighScoresPaintable_0", [])])
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                }
                    False -> case jr.truth(jr.eq(jr.call(jr.get_field(this, "gameCanvas"), "getGameState_0", []), jr.get_field(jr.get_field(this, "gameStateFactory"), "SHOW_HIGH_SCORE_GAME_STATE"))) {
                    True -> {
                    jr.call(jr.get_field(this, "gameCanvas"), "setGameState_1", [jr.get_field(jr.get_field(this, "gameStateFactory"), "SHOW_END_RESULT_GAME_STATE")])
                    jr.call(jr.get_field(this, "gameCanvas"), "setHighScoresPaintable_1", [jr.call_static("NullPaintable", "getInstance_0", [])])
                    Nil
                }
                    False -> Nil
                }
                }
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

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_canvas] = jargs
    jr.super_init("Processor", this, [])
    c1_jfields(this)
        jr.set_field(this, "gameCanvas", l_game_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "EndGameProcessor",
        "org.allbinary.game.displayable.canvas.EndGameProcessor",
        "Processor",
        [],
        False,
        [#("gameStateFactory", jr.JNull), #("gameCanvas", jr.JNull), #("WAIT", jr.JLong(0))],
        [],
        [
            jr.Method("process_0", [], False, c1_m5__process), 
            jr.Method("jinit_1", ["AllBinaryGameCanvas"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}

