// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryMediaManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__ismuted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m4__setmuted(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a_muted] = jargs
    jr.JNull
}

fn c1_m5__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sounds_factory_interface] = jargs
        let l_log_util = jr.call_static("LogUtil", "getInstance_0", [])
        let l_common_string = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(l_log_util, "putF_3", [jr.get_field(l_common_string, "START"), jr.get_static("AllBinaryMediaManager", "THIS"), jr.get_field(l_common_string, "INIT")])
        jr.call(jr.call_static("ProgressCanvasFactory", "getInstance_0", []), "addNormalPortion_2", [jr.JInt(50), jr.JStr("Media Manager")])
        jr.call(jr.new("Sounds", [l_sounds_factory_interface]), "init_0", [])
    jr.JNull
}

fn c1_m7__shutdown(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sounds_factory_interface] = jargs
        jr.call(jr.new("Sounds", [l_sounds_factory_interface]), "stopAll_0", [])
        jr.call(jr.new("Sounds", [l_sounds_factory_interface]), "closeAll_0", [])
        jr.call(jr.call_static("TsUtil", "getInstance_0", []), "gc_0", [])
    jr.JNull
}

fn c1_m8__createplayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.method(fn() {
            case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("GameFeatureFactory", "getInstance_0", []), "SOUND")])) {
            True -> {
            case jr.truth(jr.eq(jr.call(jr.call_static("TsUtil", "getInstance_0", []), "compareTo_2", [l_resource, jr.get_static("Manager", "TONE_DEVICE_LOCATOR")]), jr.JInt(0))) {
                True -> {
                jr.ret(jr.call_static("Manager", "createPlayer_1", [l_resource]))
                Nil
            }
                False -> {
                let l_input_stream = jr.call(jr.call_static("ResourceUtil", "getInstance_0", []), "getResourceAsStream_1", [l_resource])
                jr.ret(jr.call(jr.call_static("MIDPUtil", "getInstance_0", []), "createPlayerFromInputStream_2", [l_input_stream, jr.call(jr.get_field(jr.call_static("AudioContentTypeDataFactory", "getInstance_0", []), "MIME_AUDIO_WAV"), "getName_0", [])]))
                Nil
            }
            }
            Nil
        }
            False -> {
            jr.ret(jr.get_static("NoPlayer", "NO_PLAYER"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m9__playtone(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frequency, l_time, l_volume] = jargs
    let l_frequency = jr.as_i(l_frequency)
    let l_time = jr.as_i(l_time)
    let l_volume = jr.as_i(l_volume)
        case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("GameFeatureFactory", "getInstance_0", []), "SOUND")])) {
            True -> {
            jr.call_static("Manager", "playTone_3", [l_frequency, l_time, l_volume])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryMediaManager",
        "org.allbinary.media.audio.AllBinaryMediaManager",
        "Object",
        [],
        False,
        [],
        [#("THIS", jr.JStr("AllBinaryMediaManagerNoMIPD2"))],
        [
            jr.Method("isMuted_0", [], True, c1_m3__ismuted), 
            jr.Method("setMuted_1", ["boolean"], True, c1_m4__setmuted), 
            jr.Method("update_0", [], True, c1_m5__update), 
            jr.Method("init_1", ["SoundsFactoryInterface"], True, c1_m6__init), 
            jr.Method("shutdown_1", ["SoundsFactoryInterface"], True, c1_m7__shutdown), 
            jr.Method("createPlayer_1", ["String"], True, c1_m8__createplayer), 
            jr.Method("playTone_3", ["int", "int", "int"], True, c1_m9__playtone), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}

