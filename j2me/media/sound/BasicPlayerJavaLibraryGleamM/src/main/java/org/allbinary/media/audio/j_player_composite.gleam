// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlayerComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "timeElapsedHelper", jr.new("TimeDelayHelper", [jr.JInt(0)]))
    jr.set_field(this, "gameTickTimeDelayHelper", jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__addplayerlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_listener] = jargs
        jr.call(jr.get_field(this, "player"), "addPlayerListener_1", [l_player_listener])
    jr.JNull
}

fn c1_m7__removeplayerlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_listener] = jargs
        jr.call(jr.get_field(this, "player"), "removePlayerListener_1", [l_player_listener])
    jr.JNull
}

fn c1_m8__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "player"), "close_0", [])
    jr.JNull
}

fn c1_m9__deallocate(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "player"), "deallocate_0", [])
    jr.JNull
}

fn c1_m10__getcontenttype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "player"), "getContentType_0", [])
}

fn c1_m11__getduration(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.call(jr.get_field(this, "player"), "getDuration_0", []))
}

fn c1_m12__getmediatime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.call(jr.get_field(this, "player"), "getMediaTime_0", []))
}

fn c1_m13__prefetch(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "player"), "prefetch_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("prefetch"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m14__realize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "player"), "realize_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("realize"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m15__getstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "player"), "getState_0", []))
}

fn c1_m16__setloopcount(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_count] = jargs
    let l_count = jr.as_i(l_count)
        jr.call(jr.get_field(this, "player"), "setLoopCount_1", [l_count])
    jr.JNull
}

fn c1_m17__setmediatime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_now] = jargs
    let l_now = jr.as_j(l_now)
    jr.method(fn() {
            jr.try_catch(fn() {
            jr.ret(jr.as_j(jr.call(jr.get_field(this, "player"), "setMediaTime_1", [l_now])))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("setMediaTime"), l_e])
            jr.ret(jr.as_j(jr.to_j(jr.JInt(-1))))
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m19__start(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            case jr.truth(jr.call(jr.get_field(this, "timeElapsedHelper"), "isTime_1", [jr.get_field(jr.get_field(this, "gameTickTimeDelayHelper"), "startTime")])) {
                True -> {
                jr.call(jr.get_field(this, "player"), "start_0", [])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "START_METHOD_NAME"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m20__stop(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "player"), "stop_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("stop"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m21__getcontrol(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_control_type] = jargs
    jr.call(jr.get_field(this, "player"), "getControl_1", [l_control_type])
}

fn c1_m22__getcontrols(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m23__setvolume(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_left_volume, l_right_volume] = jargs
    let l_left_volume = jr.as_i(l_left_volume)
    let l_right_volume = jr.as_i(l_right_volume)
        let l_controllable2 = jr.get_field(this, "player")
        jr.call(l_controllable2, "setVolume_2", [l_left_volume, l_right_volume])
    jr.JNull
}

fn c1_m24__getplayerp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "player")
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player, l_repeat_time] = jargs
    let l_repeat_time = jr.as_i(l_repeat_time)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "player", l_player)
        jr.set_field(jr.get_field(this, "timeElapsedHelper"), "delay", jr.as_i(l_repeat_time))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlayerComposite",
        "org.allbinary.media.audio.PlayerComposite",
        "Object",
        ["Controllable", "Player"],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("player", jr.JNull), #("timeElapsedHelper", jr.JNull), #("gameTickTimeDelayHelper", jr.JNull)],
        [],
        [
            jr.Method("addPlayerListener_1", ["PlayerListener"], False, c1_m6__addplayerlistener), 
            jr.Method("removePlayerListener_1", ["PlayerListener"], False, c1_m7__removeplayerlistener), 
            jr.Method("close_0", [], False, c1_m8__close), 
            jr.Method("deallocate_0", [], False, c1_m9__deallocate), 
            jr.Method("getContentType_0", [], False, c1_m10__getcontenttype), 
            jr.Method("getDuration_0", [], False, c1_m11__getduration), 
            jr.Method("getMediaTime_0", [], False, c1_m12__getmediatime), 
            jr.Method("prefetch_0", [], False, c1_m13__prefetch), 
            jr.Method("realize_0", [], False, c1_m14__realize), 
            jr.Method("getState_0", [], False, c1_m15__getstate), 
            jr.Method("setLoopCount_1", ["int"], False, c1_m16__setloopcount), 
            jr.Method("setMediaTime_1", ["long"], False, c1_m17__setmediatime), 
            jr.Method("start_0", [], False, c1_m19__start), 
            jr.Method("stop_0", [], False, c1_m20__stop), 
            jr.Method("getControl_1", ["String"], False, c1_m21__getcontrol), 
            jr.Method("getControls_0", [], False, c1_m22__getcontrols), 
            jr.Method("setVolume_2", ["int", "int"], False, c1_m23__setvolume), 
            jr.Method("getPlayerP_0", [], False, c1_m24__getplayerp), 
            jr.Method("jinit_2", ["Player", "int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

