// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseGameBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BaseGameBehavior", "instanceC", jr.new("BaseGameBehavior", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BaseGameBehavior", "instanceC")
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_game_ad_state = jr.call(jr.call_static("GameAdStateFactory", "getInstance_0", []), "getCurrentInstance_0", [])
        jr.call(l_game_ad_state, "playingAdState_0", [])
    jr.JNull
}

fn c1_m4__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        let l_features = jr.call_static("Features", "getInstance_0", [])
        case jr.truth(jr.call(l_features, "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL_AS_GAME_THREAD")])) {
            True -> {
            let l_current_displayable_factory = jr.call_static("CurrentDisplayableFactory", "getInstance_0", [])
            jr.call(l_current_displayable_factory, "setRunnable_1", [jr.get_field(l_all_binary_game_canvas, "gamePauseRunnable")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m5__unpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isDefault_1", [jr.get_field(jr.call_static("OpenGLFeatureFactory", "getInstance_0", []), "OPENGL_AS_GAME_THREAD")])) {
            True -> {
            let l_current_displayable_factory = jr.call_static("CurrentDisplayableFactory", "getInstance_0", [])
            jr.call(l_current_displayable_factory, "setRunnable_1", [jr.get_field(l_all_binary_game_canvas, "gameRunnable")])
            jr.call(l_current_displayable_factory, "setDisplayable_1", [l_all_binary_game_canvas])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m6__updatetouch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "updateTouch2_0", [])
    jr.JNull
}

fn c1_m7__updatescreenbuttonpaintable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "updateScreenButtonPaintable2_0", [])
    jr.JNull
}

fn c1_m8__setgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "updateGameState_0", [])
    jr.JNull
}

fn c1_m9__removeallgamekeyinputlisteners(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "removeAllGameKeyInputListeners2_0", [])
    jr.JNull
}

fn c1_m10__updateendgameprocessor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "updateEndGameProcessor2_0", [])
    jr.JNull
}

fn c1_m11__buildgame(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "buildGame2_0", [])
    jr.JNull
}

fn c1_m12__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_canvas] = jargs
        jr.call(l_all_binary_game_canvas, "run2_0", [])
    jr.JNull
}

fn c1_m13__sethighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_all_binary_game_canvas, l_name, l_score, l_auto_submit, l_is_last] = jargs
    let l_score = jr.as_j(l_score)
        jr.call(l_all_binary_game_canvas, "setHighScore2_5", [l_abe_client_information, l_name, l_score, l_auto_submit, l_is_last])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("DemoGameBehavior", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseGameBehavior",
        "org.allbinary.game.displayable.canvas.BaseGameBehavior",
        "DemoGameBehavior",
        [],
        False,
        [],
        [#("instanceC", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m3__init), 
            jr.Method("pause_1", ["AllBinaryGameCanvas"], False, c1_m4__pause), 
            jr.Method("unPause_1", ["AllBinaryGameCanvas"], False, c1_m5__unpause), 
            jr.Method("updateTouch_1", ["AllBinaryGameCanvas"], False, c1_m6__updatetouch), 
            jr.Method("updateScreenButtonPaintable_1", ["AllBinaryGameCanvas"], False, c1_m7__updatescreenbuttonpaintable), 
            jr.Method("setGameState_1", ["AllBinaryGameCanvas"], False, c1_m8__setgamestate), 
            jr.Method("removeAllGameKeyInputListeners_1", ["AllBinaryGameCanvas"], False, c1_m9__removeallgamekeyinputlisteners), 
            jr.Method("updateEndGameProcessor_1", ["AllBinaryGameCanvas"], False, c1_m10__updateendgameprocessor), 
            jr.Method("buildGame_1", ["AllBinaryGameCanvas"], False, c1_m11__buildgame), 
            jr.Method("run_1", ["AllBinaryGameCanvas"], False, c1_m12__run), 
            jr.Method("setHighScore_6", ["AbeClientInformationInterface", "AllBinaryGameCanvas", "String", "long", "boolean", "boolean"], False, c1_m13__sethighscore), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

