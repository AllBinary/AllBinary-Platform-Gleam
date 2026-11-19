// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoRunnable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "START_LABEL")]), "append_1", [jr.JStr("GameCanvasRunnableInterface")]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            jr.call(jr.get_field(this, "demoGameMidlet"), "commandAction_2", [jr.get_field(jr.call_static("MyCommandsFactory", "getInstance_0", []), "SET_DISPLAYABLE"), jr.call_static("ProgressCanvasFactory", "getInstance_0", [])])
            jr.call(jr.get_field(this, "demoGameMidlet"), "setGameCanvasRunnableInterface_1", [jr.call(jr.get_field(this, "demoGameMidlet"), "createDemoGameCanvasRunnableInterface_0", [])])
            jr.call(jr.get_field(this, "demoGameMidlet"), "demoSetup_0", [])
            jr.call(jr.call_static("DemoGameMidletEventHandler", "getInstance_0", []), "fireEvent_1", [jr.get_field(this, "startDemoGameMidletEvent")])
            jr.call(jr.get_field(this, "demoGameMidlet"), "startGameCanvasRunnableInterface_0", [])
            jr.call(jr.get_field(this, "demoGameMidlet"), "postDemoSetup_0", [])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(jr.get_field(this, "commonStrings"), "END_RUNNABLE"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_demo_game_midlet] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "demoGameMidlet", l_demo_game_midlet)
        jr.set_field(this, "startDemoGameMidletEvent", jr.new("DemoGameMidletEvent", [jr.get_field(this, "demoGameMidlet"), jr.get_field(jr.call_static("DemoGameMidletStateFactory", "getInstance_0", []), "START_DEMO")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoRunnable",
        "org.allbinary.game.midlet.DemoRunnable",
        "Object",
        ["Runnable"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("demoGameMidlet", jr.JNull), #("startDemoGameMidletEvent", jr.JNull)],
        [],
        [
            jr.Method("run_0", [], False, c1_m6__run), 
            jr.Method("jinit_1", ["DemoGameMidlet"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

