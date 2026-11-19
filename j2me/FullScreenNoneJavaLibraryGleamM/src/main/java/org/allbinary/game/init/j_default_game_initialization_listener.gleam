// Generated Code Do Not Modify
// package org.allbinary.game.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DefaultGameInitializationListener

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "swtJOGLProcessor", jr.call_static("SWTJOGLProcessor", "getInstance_0", []))
    jr.set_field(this, "firstTime", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__onevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_event_object] = jargs
        jr.call_static("ForcedLogUtil", "log_2", [jr.get_field(jr.call_static("EventStrings", "getInstance_0", []), "PERFORMANCE_MESSAGE"), this])
    jr.JNull
}

fn c1_m6__ongameinitialized(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_initialized_event] = jargs
        let l__o_n___g_a_m_e___i_n_i_t_i_a_l_i_z_e_d = jr.JStr("onGameInitialized")
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(l_common_strings, "START"), this, l__o_n___g_a_m_e___i_n_i_t_i_a_l_i_z_e_d])
            jr.while_loop("", fn() { jr.not(jr.call(jr.get_field(this, "swtJOGLProcessor"), "isHolderCreated_0", [])) }, fn() {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(l_common_strings, "UPDATE"), this, l__o_n___g_a_m_e___i_n_i_t_i_a_l_i_z_e_d])
                jr.call_static("Thread", "sleep_1", [jr.JInt(20)])
                Nil
            })
            jr.call(jr.call_static("FeatureResourceInitializationUtil", "getInstance_0", []), "init_1", [jr.call(l_game_initialized_event, "getLevel_0", [])])
            case jr.truth(jr.get_field(this, "firstTime")) {
                True -> {
                jr.set_field(this, "firstTime", jr.JBool(False))
                Nil
            }
                False -> {
                jr.call(jr.get_field(this, "swtJOGLProcessor"), "onSurfaceChanged_0", [])
                Nil
            }
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(l_common_strings, "EXCEPTION"), this, l__o_n___g_a_m_e___i_n_i_t_i_a_l_i_z_e_d, l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_game_initialized_event_handler = jr.call_static("GameInitializedEventHandler", "getInstance_0", [])
        jr.call(l_game_initialized_event_handler, "removeAllListeners_0", [])
        jr.call(l_game_initialized_event_handler, "addListenerInterface_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DefaultGameInitializationListener",
        "org.allbinary.game.init.DefaultGameInitializationListener",
        "Object",
        ["GameInitializedListenerInterface"],
        False,
        [#("logUtil", jr.JNull), #("swtJOGLProcessor", jr.JNull), #("firstTime", jr.JBool(False))],
        [],
        [
            jr.Method("onEvent_1", ["AllBinaryEventObject"], False, c1_m4__onevent), 
            jr.Method("onGameInitialized_1", ["GameInitializedEvent"], False, c1_m6__ongameinitialized), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

