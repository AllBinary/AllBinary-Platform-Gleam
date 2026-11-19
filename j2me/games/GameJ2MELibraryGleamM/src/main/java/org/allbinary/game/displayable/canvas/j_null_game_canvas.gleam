// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullGameCanvas

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "runningNull", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullGameCanvas", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m1__createnull(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.new("NullGameCanvas", [jr.call_static("AllBinaryGameLayerManager", "getNullInstance_0", [])]))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.call_static("LogUtil", "getInstance_0", []), "put_4", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "EXCEPTION"), jr.JStr("NullGameCanvas"), jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "GET_INSTANCE"), l_e])
            jr.throw(jr.new("RuntimeException", []))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("NullGameCanvas", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("NullGameCanvas", "instance", jr.call_static("NullGameCanvas", "createNull_0", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("NullGameCanvas", "instance")
}

fn c1_m4__createcanvas(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_layer_manager] = jargs
        let l_null_game_canvas = jr.new("NullGameCanvas", [l_game_layer_manager])
        jr.call(l_null_game_canvas, "setInitialized_1", [jr.JBool(True)])
        jr.call(l_null_game_canvas, "setTitle_1", [jr.get_static("NullGameCanvas", "NO_GAME")])
    l_null_game_canvas
}

fn c1_m7__isgameover(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m9__setrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_running] = jargs
        jr.set_field(this, "runningNull", l_running)
    jr.JNull
}

fn c1_m10__isrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "runningNull")
}

fn c1_m11__pause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_inherited(this, "NullGameCanvas", "setPaused_1", [jr.JBool(True)])
    jr.JNull
}

fn c1_m12__unpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_inherited(this, "NullGameCanvas", "setPaused_1", [jr.JBool(False)])
    jr.JNull
}

fn c1_m13__initcommands(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener] = jargs
        jr.call_inherited(this, "NullGameCanvas", "removeAllCommands_0", [])
        jr.call_inherited(this, "NullGameCanvas", "setCommandListener_1", [l_cmd_listener])
    jr.JNull
}

fn c1_m14__buildgameinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_is_progress] = jargs
    jr.JNull
}

fn c1_m15__draw(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m16__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_inherited(this, "NullGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "NullGameCanvas", "commonStrings"), "START_RUNNABLE"), this, jr.get_field(jr.get_inherited(this, "NullGameCanvas", "commonStrings"), "RUN")])
            jr.call(jr.get_inherited(this, "NullGameCanvas", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "NullGameCanvas", "commonStrings"), "END_RUNNABLE"), this, jr.get_field(jr.get_inherited(this, "NullGameCanvas", "commonStrings"), "RUN")])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "NullGameCanvas", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "NullGameCanvas", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "NullGameCanvas", "commonStrings"), "RUN"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m18__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_static("NullGameCanvas", "TYPE"))
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_layer_manager] = jargs
        jr.super_init("AllBinaryGameCanvas", this, [jr.get_static("NullCommandListener", "NULL_COMMAND_LISTENER"), l_game_layer_manager, jr.call_static("NoHighScoresFactory", "getInstance_0", []), jr.get_static("BasicBuildGameInitializerFactory", "NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY"), jr.JBool(False)])
        c1_jfields(this)
        jr.call_super("AllBinaryGameCanvas", this, "setWait_1", [jr.JInt(1200)])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullGameCanvas",
        "org.allbinary.game.displayable.canvas.NullGameCanvas",
        "AllBinaryGameCanvas",
        [],
        False,
        [#("runningNull", jr.JBool(False))],
        [#("instance", jr.JNull), #("NO_GAME", jr.JStr("No Background Game")), #("TYPE", jr.as_i(jr.JInt(1)))],
        [
            jr.Method("createNull_0", [], True, c1_m1__createnull), 
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("createCanvas_1", ["AllBinaryGameLayerManager"], True, c1_m4__createcanvas), 
            jr.Method("isGameOver_0", [], False, c1_m7__isgameover), 
            jr.Method("setRunning_1", ["boolean"], False, c1_m9__setrunning), 
            jr.Method("isRunning_0", [], False, c1_m10__isrunning), 
            jr.Method("pause_0", [], False, c1_m11__pause), 
            jr.Method("unPause_0", [], False, c1_m12__unpause), 
            jr.Method("initCommands_1", ["CommandListener"], False, c1_m13__initcommands), 
            jr.Method("buildGameInit_1", ["boolean"], False, c1_m14__buildgameinit), 
            jr.Method("draw_1", ["Graphics"], False, c1_m15__draw), 
            jr.Method("run_0", [], False, c1_m16__run), 
            jr.Method("getType_0", [], False, c1_m18__gettype), 
            jr.Method("jinit_1", ["AllBinaryGameLayerManager"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}

