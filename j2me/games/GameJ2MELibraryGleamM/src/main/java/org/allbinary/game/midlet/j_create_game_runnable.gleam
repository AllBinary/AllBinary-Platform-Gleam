// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CreateGameRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "START_RUNNABLE"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
            jr.call(jr.get_field(this, "demoGameMidlet"), "commandAction_2", [jr.get_field(jr.call_static("MyCommandsFactory", "getInstance_0", []), "SET_DISPLAYABLE"), l_progress_canvas])
            jr.call(jr.get_field(this, "demoGameMidlet"), "stopGameCanvasRunnableInterface_0", [])
            jr.call(jr.get_field(this, "demoGameMidlet"), "setGameCanvasRunnableInterface_1", [jr.call(jr.get_field(this, "demoGameMidlet"), "createGameCanvasRunnableInterface_0", [])])
            jr.call(jr.call(jr.get_field(this, "demoGameMidlet"), "getGameCanvasRunnableInterface_0", []), "setLoadStateHashtable_1", [jr.get_field(this, "hashtable")])
            jr.call(jr.get_field(this, "demoGameMidlet"), "startGameCanvasRunnableInterface_0", [])
            jr.call(jr.call_static("DemoGameMidletEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "startGameMidletEvent")])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "END_RUNNABLE"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_demo_game_midlet, l_hashtable] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "demoGameMidlet", l_demo_game_midlet)
        jr.set_field(this, "hashtable", l_hashtable)
        jr.set_field(this, "startGameMidletEvent", jr.new("DemoGameMidletEvent", [this, jr.get_field(jr.call_static("DemoGameMidletStateFactory", "getInstance_0", []), "START_GAME")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CreateGameRunnable",
        "org.allbinary.game.midlet.CreateGameRunnable",
        "Object",
        ["Runnable"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("demoGameMidlet", jr.JNull), #("hashtable", jr.JNull), #("startGameMidletEvent", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m7__run), 
            jr.Method("jinit_2", ["DemoGameMidlet", "ABHashtable"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

