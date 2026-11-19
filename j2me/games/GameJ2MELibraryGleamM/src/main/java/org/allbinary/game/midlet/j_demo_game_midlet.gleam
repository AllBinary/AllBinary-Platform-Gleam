// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DemoGameMidlet

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__iscontinue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            let l_hashtable = jr.call_inherited(this, "DemoGameMidlet", "getStartStateHashtable_0", [])
            case jr.truth(case jr.truth(jr.ne(l_hashtable, jr.JNull)) { True -> jr.gt(jr.call(l_hashtable, "size_0", []), jr.JInt(0)) False -> jr.JBool(False) }) {
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

fn c1_m3__gethighestlevel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(1))
}

fn c1_m4__createdemogamecanvasrunnableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoGameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "DemoGameMidlet", "commonStrings"), "NOT_IMPLEMENTED"), this, jr.get_field(jr.get_inherited(this, "DemoGameMidlet", "commonStrings"), "CREATE")])
    jr.get_static("NullGameCanvasRunnable", "NULL_GAME_CANVAS_RUNNABLE")
}

fn c1_m5__creategamecanvasrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_game_layer_manager] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_inherited(this, "DemoGameMidlet", "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m6__creategamecanvasrunnableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "createGameCanvasRunnable_1", [jr.call_inherited(this, "DemoGameMidlet", "createGameLayerManager_0", [])])
}

fn c1_m7__demosetup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__postdemosetup(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__setdemo(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "DemoGameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "DemoGameMidlet", "commonStrings"), "START"), this, jr.JStr("setDemo")])
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        jr.call(l_progress_canvas, "start_0", [])
        jr.call(jr.call_static("PrimaryThreadPool", "getInstance_0", []), "runTask_1", [jr.new("DemoRunnable", [this])])
    jr.JNull
}

fn c1_m10__creategame(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__c_r_e_a_t_e___g_a_m_e = jr.JStr("createGame")
        jr.call(jr.get_inherited(this, "DemoGameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "DemoGameMidlet", "commonStrings"), "START"), this, l__c_r_e_a_t_e___g_a_m_e])
        let l_progress_canvas = jr.call_static("ProgressCanvasFactory", "getInstance_0", [])
        jr.call(l_progress_canvas, "start_0", [])
        let l_hashtable = jr.call_inherited(this, "DemoGameMidlet", "getStartStateHashtable_0", [])
        jr.call_inherited(this, "DemoGameMidlet", "setStartStateHashtable_1", [jr.get_field(jr.call_static("StdUtil", "getInstance_0", []), "NULL_TABLE")])
        jr.call(jr.call_static("PrimaryThreadPool", "getInstance_0", []), "runTask_1", [jr.new("CreateGameRunnable", [this, l_hashtable])])
        jr.call(jr.get_inherited(this, "DemoGameMidlet", "logUtil"), "putF_3", [jr.get_field(jr.get_inherited(this, "DemoGameMidlet", "commonStrings"), "END"), this, l__c_r_e_a_t_e___g_a_m_e])
    jr.JNull
}

fn c1_m11__isready(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_client_information_factory] = jargs
        jr.super_init("GameMidlet", this, [l_client_information_factory])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DemoGameMidlet",
        "org.allbinary.game.midlet.DemoGameMidlet",
        "GameMidlet",
        [],
        False,
        [],
        [],
        [
            jr.Method("isContinue_0", [], False, c1_m2__iscontinue), 
            jr.Method("getHighestLevel_0", [], False, c1_m3__gethighestlevel), 
            jr.Method("createDemoGameCanvasRunnableInterface_0", [], False, c1_m4__createdemogamecanvasrunnableinterface), 
            jr.Method("createGameCanvasRunnable_1", ["AllBinaryGameLayerManager"], False, c1_m5__creategamecanvasrunnable), 
            jr.Method("createGameCanvasRunnableInterface_0", [], False, c1_m6__creategamecanvasrunnableinterface), 
            jr.Method("demoSetup_0", [], False, c1_m7__demosetup), 
            jr.Method("postDemoSetup_0", [], False, c1_m8__postdemosetup), 
            jr.Method("setDemo_0", [], False, c1_m9__setdemo), 
            jr.Method("createGame_0", [], False, c1_m10__creategame), 
            jr.Method("isReady_0", [], False, c1_m11__isready), 
            jr.Method("jinit_1", ["ClientInformationFactory"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}

