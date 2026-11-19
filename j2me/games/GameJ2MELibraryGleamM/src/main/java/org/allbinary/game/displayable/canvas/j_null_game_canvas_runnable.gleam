// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullGameCanvasRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "gameStateFactory", jr.call_static("GameStateFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE", jr.new("NullGameCanvasRunnable", []))
    jr.JNull
}

fn c1_m3__gettitle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m4__isinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m5__ispaused(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m6__unpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__ishighscoresubmitted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m9__sethighscoresubmitted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_high_score_submitted] = jargs
    jr.JNull
}

fn c1_m10__processgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__isgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m12__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
    jr.JNull
}

fn c1_m13__getcurrentstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StdUtil", "getInstance_0", []), "NULL_TABLE")
}

fn c1_m14__getloadstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StdUtil", "getInstance_0", []), "NULL_TABLE")
}

fn c1_m15__setloadstatehashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable] = jargs
    jr.JNull
}

fn c1_m16__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_m17__setgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_state] = jargs
    jr.JNull
}

fn c1_m18__getgamestate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.get_field(this, "gameStateFactory"), "NO_GAME_STATE")
}

fn c1_m19__itemstatechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_item] = jargs
    jr.JNull
}

fn c1_m20__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m21__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m22__isrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m23__setrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_running] = jargs
    jr.JNull
}

fn c1_m24__setthread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_thread] = jargs
    jr.JNull
}

fn c1_m25__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullGameCanvasRunnable",
        "org.allbinary.game.displayable.canvas.NullGameCanvasRunnable",
        "Object",
        ["GameCanvasRunnableInterface"],
        False,
        [#("gameStateFactory", jr.JNull)],
        [#("NULL_GAME_CANVAS_RUNNABLE", jr.JNull)],
        [
            jr.Method("getTitle_0", [], False, c1_m3__gettitle), 
            jr.Method("isInitialized_0", [], False, c1_m4__isinitialized), 
            jr.Method("isPaused_0", [], False, c1_m5__ispaused), 
            jr.Method("unPause_0", [], False, c1_m6__unpause), 
            jr.Method("pause_0", [], False, c1_m7__pause), 
            jr.Method("isHighScoreSubmitted_0", [], False, c1_m8__ishighscoresubmitted), 
            jr.Method("setHighScoreSubmitted_1", ["boolean"], False, c1_m9__sethighscoresubmitted), 
            jr.Method("processGameOver_0", [], False, c1_m10__processgameover), 
            jr.Method("isGameOver_0", [], False, c1_m11__isgameover), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m12__initcommands), 
            jr.Method("getCurrentStateHashtable_0", [], False, c1_m13__getcurrentstatehashtable), 
            jr.Method("getLoadStateHashtable_0", [], False, c1_m14__getloadstatehashtable), 
            jr.Method("setLoadStateHashtable_1", ["ABHashtable"], False, c1_m15__setloadstatehashtable), 
            jr.Method("getType_0", [], False, c1_m16__gettype), 
            jr.Method("setGameState_1", ["GameState"], False, c1_m17__setgamestate), 
            jr.Method("getGameState_0", [], False, c1_m18__getgamestate), 
            jr.Method("itemStateChanged_1", ["LcduiItem"], False, c1_m19__itemstatechanged), 
            jr.Method("paint_1", ["Graphics"], False, c1_m20__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m21__paintthreed), 
            jr.Method("isRunning_0", [], False, c1_m22__isrunning), 
            jr.Method("setRunning_1", ["boolean"], False, c1_m23__setrunning), 
            jr.Method("setThread_1", ["Thread"], False, c1_m24__setthread), 
            jr.Method("run_0", [], False, c1_m25__run), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

